/***************************************************************************/
/*                                                                         */
/*  ttgload.c                                                              */
/*                                                                         */
/*    TrueType Glyph Loader (body).                                        */
/*                                                                         */
/*  Copyright 1996-2001, 2002, 2003, 2004, 2005, 2006, 2007 by             */
/*  David Turner, Robert Wilhelm, and Werner Lemberg.                      */
/*                                                                         */
/*  This file is part of the FreeType project, and may only be used,       */
/*  modified, and distributed under the terms of the FreeType project      */
/*  license, LICENSE.TXT.  By continuing to use, modify, or distribute     */
/*  this file you indicate that you have read the license and              */
/*  understand and accept it fully.                                        */
/*                                                                         */
/***************************************************************************/
#if (1 == FREETYPE_USE_MODE)


#include <ft2build.h>
#include FT_INTERNAL_CALC_H
#include FT_INTERNAL_STREAM_H
#include FT_INTERNAL_SFNT_H
#include FT_TRUETYPE_TAGS_H
#include FT_OUTLINE_H

#include "ttgload.h"
#include "ttpload.h"
#include "tterrors.h"

  /*************************************************************************/
  /*                                                                       */
  /* messages during execution.                                            */
  /*                                                                       */


  /*************************************************************************/
  /*                                                                       */
  /* Composite font flags.                                                 */
  /*                                                                       */
#define ARGS_ARE_WORDS             0x0001
#define ARGS_ARE_XY_VALUES         0x0002
#define ROUND_XY_TO_GRID           0x0004
#define WE_HAVE_A_SCALE            0x0008
/* reserved                        0x0010 */
#define MORE_COMPONENTS            0x0020
#define WE_HAVE_AN_XY_SCALE        0x0040
#define WE_HAVE_A_2X2              0x0080
#define WE_HAVE_INSTR              0x0100
#define USE_MY_METRICS             0x0200
#define OVERLAP_COMPOUND           0x0400
#define SCALED_COMPONENT_OFFSET    0x0800
#define UNSCALED_COMPONENT_OFFSET  0x1000


  /*************************************************************************/
  /*                                                                       */
  /* Returns the horizontal metrics in font units for a given glyph.  If   */
  /* `check' is true, take care of monospaced fonts by returning the       */
  /* advance width maximum.                                                */
  /*                                                                       */
  static void
  Get_HMetrics( TT_Face     face,
                FT_UInt     idx,
                FT_Bool     check,
                FT_Short*   lsb,
                FT_UShort*  aw )
  {
    ( (SFNT_Service)face->sfnt )->get_metrics( face, 0, idx, lsb, aw );

    if ( check && face->postscript.isFixedPitch )
      *aw = face->horizontal.advance_Width_Max;
  }


  /*************************************************************************/
  /*                                                                       */
  /* Returns the vertical metrics in font units for a given glyph.         */
  /* Greg Hitchcock from Microsoft told us that if there were no `vmtx'    */
  /* table, typoAscender/Descender from the `OS/2' table would be used     */
  /* instead, and if there were no `OS/2' table, use ascender/descender    */
  /* from the `hhea' table.  But that is not what Microsoft's rasterizer   */
  /* apparently does: It uses the ppem value as the advance height, and    */
  /* sets the top side bearing to be zero.                                 */
  /*                                                                       */
  /* The monospace `check' is probably not meaningful here, but we leave   */
  /* it in for a consistent interface.                                     */
  /*                                                                       */
  static void
  Get_VMetrics( TT_Face     face,
                FT_UInt     idx,
                FT_Bool     check,
                FT_Short*   tsb,
                FT_UShort*  ah )
  {
    FT_UNUSED( check );

    if ( face->vertical_info )
      ( (SFNT_Service)face->sfnt )->get_metrics( face, 1, idx, tsb, ah );

#if 1             /* Emperically determined, at variance with what MS said */

    else
    {
      *tsb = 0;
      *ah  = face->root.units_per_EM;
    }

#else      /* This is what MS said to do.  It isn't what they do, however. */

    else if ( face->os2.version != 0xFFFFU )
    {
      *tsb = face->os2.sTypoAscender;
      *ah  = face->os2.sTypoAscender - face->os2.sTypoDescender;
    }
    else
    {
      *tsb = face->horizontal.Ascender;
      *ah  = face->horizontal.Ascender - face->horizontal.Descender;
    }

#endif

  }


  /*************************************************************************/
  /*                                                                       */
  /* Translates an array of coordinates.                                   */
  /*                                                                       */
  static void
  translate_array( FT_UInt     n,
                   FT_Vector*  coords,
                   FT_Pos      delta_x,
                   FT_Pos      delta_y )
  {
    FT_UInt  k;


    if ( delta_x )
      for ( k = 0; k < n; k++ )
        coords[k].x += delta_x;

    if ( delta_y )
      for ( k = 0; k < n; k++ )
        coords[k].y += delta_y;
  }


#undef  IS_HINTED
#define IS_HINTED( flags )  ( ( flags & FT_LOAD_NO_HINTING ) == 0 )


  /*************************************************************************/
  /*                                                                       */
  /* The following functions are used by default with TrueType fonts.      */
  /* However, they can be replaced by alternatives if we need to support   */
  /* TrueType-compressed formats (like MicroType) in the future.           */
  /*                                                                       */
  /*************************************************************************/

  FT_CALLBACK_DEF( FT_Error )
  TT_Access_Glyph_Frame( TT_Loader  loader,
                         FT_UInt    glyph_index,
                         FT_ULong   offset,
                         FT_UInt    byte_count )
  {
    FT_Error   error;
    FT_Stream  stream = loader->stream;

    /* for non-debug mode */
    FT_UNUSED( glyph_index );



    /* the following line sets the `error' variable through macros! */
    if ( FT_STREAM_SEEK( offset ) || FT_FRAME_ENTER( byte_count ) )
      return error;

    loader->cursor = stream->cursor;
    loader->limit  = stream->limit;

    return TT_Err_Ok;
  }


  FT_CALLBACK_DEF( void )
  TT_Forget_Glyph_Frame( TT_Loader  loader )
  {
    FT_Stream  stream = loader->stream;


    FT_FRAME_EXIT();
  }


  FT_CALLBACK_DEF( FT_Error )
  TT_Load_Glyph_Header( TT_Loader  loader )
  {
    FT_Byte*  p     = loader->cursor;
    FT_Byte*  limit = loader->limit;


    if ( p + 10 > limit )
      return TT_Err_Invalid_Outline;

    loader->n_contours = FT_NEXT_SHORT( p );

    loader->bbox.xMin = FT_NEXT_SHORT( p );
    loader->bbox.yMin = FT_NEXT_SHORT( p );
    loader->bbox.xMax = FT_NEXT_SHORT( p );
    loader->bbox.yMax = FT_NEXT_SHORT( p );
    loader->cursor = p;

    return TT_Err_Ok;
  }


  FT_CALLBACK_DEF( FT_Error )
  TT_Load_Simple_Glyph( TT_Loader  load )
  {
    FT_Error        error;
    FT_Byte*        p          = load->cursor;
    FT_Byte*        limit      = load->limit;
    FT_GlyphLoader  gloader    = load->gloader;
    FT_Int          n_contours = load->n_contours;
    FT_Outline*     outline;
    TT_Face         face       = (TT_Face)load->face;
    FT_UShort       n_ins;
    FT_Int          n, n_points;

    FT_Byte         *flag, *flag_limit;
    FT_Byte         c, count;
    FT_Vector       *vec, *vec_limit;
    FT_Pos          x;
    FT_Short        *cont, *cont_limit;


    /* check that we can add the contours to the glyph */
    error = FT_GLYPHLOADER_CHECK_POINTS( gloader, 0, n_contours );
    if ( error )
      goto Fail;

    /* reading the contours' endpoints & number of points */
    cont       = gloader->current.outline.contours;
    cont_limit = cont + n_contours;

    /* check space for contours array + instructions count */
    if ( n_contours >= 0xFFF || p + (n_contours + 1) * 2 > limit )
      goto Invalid_Outline;

    for ( ; cont < cont_limit; cont++ )
      cont[0] = FT_NEXT_USHORT( p );

    n_points = 0;
    if ( n_contours > 0 )
      n_points = cont[-1] + 1;

    /* note that we will add four phantom points later */
    error = FT_GLYPHLOADER_CHECK_POINTS( gloader, n_points + 4, 0 );
    if ( error )
      goto Fail;

    /* we'd better check the contours table right now */
    outline = &gloader->current.outline;

    for ( cont = outline->contours + 1; cont < cont_limit; cont++ )
      if ( cont[-1] >= cont[0] )
        goto Invalid_Outline;

    /* reading the bytecode instructions */

    if ( p + 2 > limit )
      goto Invalid_Outline;

    n_ins = FT_NEXT_USHORT( p );


    if ( n_ins > face->max_profile.maxSizeOfInstructions )
    {
      error = TT_Err_Too_Many_Hints;
      goto Fail;
    }

    if ( ( limit - p ) < n_ins )
    {
      error = TT_Err_Too_Many_Hints;
      goto Fail;
    }


    p += n_ins;

    /* reading the point tags */
    flag       = (FT_Byte*)outline->tags;
    flag_limit = flag + n_points;

    FT_ASSERT( flag != NULL );

    while ( flag < flag_limit )
    {
      if ( p + 1 > limit )
        goto Invalid_Outline;

      *flag++ = c = FT_NEXT_BYTE( p );
      if ( c & 8 )
      {
        if ( p + 1 > limit )
          goto Invalid_Outline;

        count = FT_NEXT_BYTE( p );
        if ( flag + (FT_Int)count > flag_limit )
          goto Invalid_Outline;

        for ( ; count > 0; count-- )
          *flag++ = c;
      }
    }

    /* reading the X coordinates */

    vec       = outline->points;
    vec_limit = vec + n_points;
    flag      = (FT_Byte*)outline->tags;
    x         = 0;

    for ( ; vec < vec_limit; vec++, flag++ )
    {
      FT_Pos  y = 0;


      if ( *flag & 2 )
      {
        if ( p + 1 > limit )
          goto Invalid_Outline;

        y = (FT_Pos)FT_NEXT_BYTE( p );
        if ( ( *flag & 16 ) == 0 )
          y = -y;
      }
      else if ( ( *flag & 16 ) == 0 )
      {
        if ( p + 2 > limit )
          goto Invalid_Outline;

        y = (FT_Pos)FT_NEXT_SHORT( p );
      }

      x     += y;
      vec->x = x;
    }

    /* reading the Y coordinates */

    vec       = gloader->current.outline.points;
    vec_limit = vec + n_points;
    flag      = (FT_Byte*)outline->tags;
    x         = 0;

    for ( ; vec < vec_limit; vec++, flag++ )
    {
      FT_Pos  y = 0;


      if ( *flag & 4 )
      {
        if ( p  +1 > limit )
          goto Invalid_Outline;

        y = (FT_Pos)FT_NEXT_BYTE( p );
        if ( ( *flag & 32 ) == 0 )
          y = -y;
      }
      else if ( ( *flag & 32 ) == 0 )
      {
        if ( p + 2 > limit )
          goto Invalid_Outline;

        y = (FT_Pos)FT_NEXT_SHORT( p );
      }

      x     += y;
      vec->y = x;
    }

    /* clear the touch tags */
    for ( n = 0; n < n_points; n++ )
      outline->tags[n] &= FT_CURVE_TAG_ON;

    outline->n_points   = (FT_UShort)n_points;
    outline->n_contours = (FT_Short) n_contours;

    load->cursor = p;

  Fail:
    return error;

  Invalid_Outline:
    error = TT_Err_Invalid_Outline;
    goto Fail;
  }


  FT_CALLBACK_DEF( FT_Error )
  TT_Load_Composite_Glyph( TT_Loader  loader )
  {
    FT_Error        error;
    FT_Byte*        p       = loader->cursor;
    FT_Byte*        limit   = loader->limit;
    FT_GlyphLoader  gloader = loader->gloader;
    FT_SubGlyph     subglyph;
    FT_UInt         num_subglyphs;


    num_subglyphs = 0;

    do
    {
      FT_Fixed  xx, xy, yy, yx;
      FT_UInt   count;


      /* check that we can load a new subglyph */
      error = FT_GlyphLoader_CheckSubGlyphs( gloader, num_subglyphs + 1 );
      if ( error )
        goto Fail;

      /* check space */
      if ( p + 4 > limit )
        goto Invalid_Composite;

      subglyph = gloader->current.subglyphs + num_subglyphs;

      subglyph->arg1 = subglyph->arg2 = 0;

      subglyph->flags = FT_NEXT_USHORT( p );
      subglyph->index = FT_NEXT_USHORT( p );

      /* check space */
      count = 2;
      if ( subglyph->flags & ARGS_ARE_WORDS )
        count += 2;
      if ( subglyph->flags & WE_HAVE_A_SCALE )
        count += 2;
      else if ( subglyph->flags & WE_HAVE_AN_XY_SCALE )
        count += 4;
      else if ( subglyph->flags & WE_HAVE_A_2X2 )
        count += 8;

      if ( p + count > limit )
        goto Invalid_Composite;

      /* read arguments */
      if ( subglyph->flags & ARGS_ARE_WORDS )
      {
        subglyph->arg1 = FT_NEXT_SHORT( p );
        subglyph->arg2 = FT_NEXT_SHORT( p );
      }
      else
      {
        subglyph->arg1 = FT_NEXT_CHAR( p );
        subglyph->arg2 = FT_NEXT_CHAR( p );
      }

      /* read transform */
      xx = yy = 0x10000L;
      xy = yx = 0;

      if ( subglyph->flags & WE_HAVE_A_SCALE )
      {
        xx = (FT_Fixed)FT_NEXT_SHORT( p ) << 2;
        yy = xx;
      }
      else if ( subglyph->flags & WE_HAVE_AN_XY_SCALE )
      {
        xx = (FT_Fixed)FT_NEXT_SHORT( p ) << 2;
        yy = (FT_Fixed)FT_NEXT_SHORT( p ) << 2;
      }
      else if ( subglyph->flags & WE_HAVE_A_2X2 )
      {
        xx = (FT_Fixed)FT_NEXT_SHORT( p ) << 2;
        yx = (FT_Fixed)FT_NEXT_SHORT( p ) << 2;
        xy = (FT_Fixed)FT_NEXT_SHORT( p ) << 2;
        yy = (FT_Fixed)FT_NEXT_SHORT( p ) << 2;
      }

      subglyph->transform.xx = xx;
      subglyph->transform.xy = xy;
      subglyph->transform.yx = yx;
      subglyph->transform.yy = yy;

      num_subglyphs++;

    } while ( subglyph->flags & MORE_COMPONENTS );

    gloader->current.num_subglyphs = num_subglyphs;


    loader->cursor = p;

  Fail:
    return error;

  Invalid_Composite:
    error = TT_Err_Invalid_Composite;
    goto Fail;
  }


  FT_LOCAL_DEF( void )
  TT_Init_Glyph_Loading( TT_Face  face )
  {
    face->access_glyph_frame   = TT_Access_Glyph_Frame;
    face->read_glyph_header    = TT_Load_Glyph_Header;
    face->read_simple_glyph    = TT_Load_Simple_Glyph;
    face->read_composite_glyph = TT_Load_Composite_Glyph;
    face->forget_glyph_frame   = TT_Forget_Glyph_Frame;
  }


  static void
  tt_prepare_zone( TT_GlyphZone  zone,
                   FT_GlyphLoad  load,
                   FT_UInt       start_point,
                   FT_UInt       start_contour )
  {
    zone->n_points   = (FT_UShort)( load->outline.n_points - start_point );
    zone->n_contours = (FT_Short) ( load->outline.n_contours - start_contour );
    zone->org        = load->extra_points + start_point;
    zone->cur        = load->outline.points + start_point;
    zone->orus       = load->extra_points2 + start_point;
    zone->tags       = (FT_Byte*)load->outline.tags + start_point;
    zone->contours   = (FT_UShort*)load->outline.contours + start_contour;
    zone->first_point = (FT_UShort)start_point;
  }


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    TT_Hint_Glyph                                                      */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Hint the glyph using the zone prepared by the caller.  Note that   */
  /*    the zone is supposed to include four phantom points.               */
  /*                                                                       */
  static FT_Error
  TT_Hint_Glyph( TT_Loader  loader,
                 FT_Bool    is_composite )
  {
    TT_GlyphZone  zone = &loader->zone;
    FT_Pos        origin;

    FT_UNUSED( is_composite );



    origin = zone->cur[zone->n_points - 4].x;
    origin = FT_PIX_ROUND( origin ) - origin;
    if ( origin )
      translate_array( zone->n_points, zone->cur, origin, 0 );


    /* round pp2 and pp4 */
    zone->cur[zone->n_points - 3].x =
      FT_PIX_ROUND( zone->cur[zone->n_points - 3].x );
    zone->cur[zone->n_points - 1].y =
      FT_PIX_ROUND( zone->cur[zone->n_points - 1].y );


    /* save glyph phantom points */
    if ( !loader->preserve_pps )
    {
      loader->pp1 = zone->cur[zone->n_points - 4];
      loader->pp2 = zone->cur[zone->n_points - 3];
      loader->pp3 = zone->cur[zone->n_points - 2];
      loader->pp4 = zone->cur[zone->n_points - 1];
    }

    return TT_Err_Ok;
  }


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    TT_Process_Simple_Glyph                                            */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Once a simple glyph has been loaded, it needs to be processed.     */
  /*    Usually, this means scaling and hinting through bytecode           */
  /*    interpretation.                                                    */
  /*                                                                       */
  static FT_Error
  TT_Process_Simple_Glyph( TT_Loader  loader )
  {
    FT_GlyphLoader  gloader = loader->gloader;
    FT_Error        error   = TT_Err_Ok;
    FT_Outline*     outline;
    FT_UInt         n_points;


    outline  = &gloader->current.outline;
    n_points = outline->n_points;

    /* set phantom points */

    outline->points[n_points    ] = loader->pp1;
    outline->points[n_points + 1] = loader->pp2;
    outline->points[n_points + 2] = loader->pp3;
    outline->points[n_points + 3] = loader->pp4;

    outline->tags[n_points    ] = 0;
    outline->tags[n_points + 1] = 0;
    outline->tags[n_points + 2] = 0;
    outline->tags[n_points + 3] = 0;

    n_points += 4;


    if ( IS_HINTED( loader->load_flags ) )
    {
      tt_prepare_zone( &loader->zone, &gloader->current, 0, 0 );

      FT_ARRAY_COPY( loader->zone.orus, loader->zone.cur,
                     loader->zone.n_points + 4 );
    }

    /* scale the glyph */
    if ( ( loader->load_flags & FT_LOAD_NO_SCALE ) == 0 )
    {
      FT_Vector*  vec     = outline->points;
      FT_Vector*  limit   = outline->points + n_points;
      FT_Fixed    x_scale = ((TT_Size)loader->size)->metrics.x_scale;
      FT_Fixed    y_scale = ((TT_Size)loader->size)->metrics.y_scale;


      for ( ; vec < limit; vec++ )
      {
        vec->x = FT_MulFix( vec->x, x_scale );
        vec->y = FT_MulFix( vec->y, y_scale );
      }

      loader->pp1 = outline->points[n_points - 4];
      loader->pp2 = outline->points[n_points - 3];
      loader->pp3 = outline->points[n_points - 2];
      loader->pp4 = outline->points[n_points - 1];
    }

    if ( IS_HINTED( loader->load_flags ) )
    {
      loader->zone.n_points += 4;

      error = TT_Hint_Glyph( loader, 0 );
    }

    return error;
  }


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    TT_Process_Composite_Component                                     */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Once a composite component has been loaded, it needs to be         */
  /*    processed.  Usually, this means transforming and translating.      */
  /*                                                                       */
  static FT_Error
  TT_Process_Composite_Component( TT_Loader    loader,
                                  FT_SubGlyph  subglyph,
                                  FT_UInt      start_point,
                                  FT_UInt      num_base_points )
  {
    FT_GlyphLoader  gloader    = loader->gloader;
    FT_Vector*      base_vec   = gloader->base.outline.points;
    FT_UInt         num_points = gloader->base.outline.n_points;
    FT_Bool         have_scale;
    FT_Pos          x, y;


    have_scale = FT_BOOL( subglyph->flags & ( WE_HAVE_A_SCALE     |
                                              WE_HAVE_AN_XY_SCALE |
                                              WE_HAVE_A_2X2       ) );

    /* perform the transform required for this subglyph */
    if ( have_scale )
    {
      FT_UInt  i;


      for ( i = num_base_points; i < num_points; i++ )
        FT_Vector_Transform( base_vec + i, &subglyph->transform );
    }

    /* get offset */
    if ( !( subglyph->flags & ARGS_ARE_XY_VALUES ) )
    {
      FT_UInt     k = subglyph->arg1;
      FT_UInt     l = subglyph->arg2;
      FT_Vector*  p1;
      FT_Vector*  p2;


      /* match l-th point of the newly loaded component to the k-th point */
      /* of the previously loaded components.                             */

      /* change to the point numbers used by our outline */
      k += start_point;
      l += num_base_points;
      if ( k >= num_base_points ||
           l >= num_points      )
        return TT_Err_Invalid_Composite;

      p1 = gloader->base.outline.points + k;
      p2 = gloader->base.outline.points + l;

      x = p1->x - p2->x;
      y = p1->y - p2->y;
    }
    else
    {
      x = subglyph->arg1;
      y = subglyph->arg2;

      if ( !x && !y )
        return TT_Err_Ok;

  /* Use a default value dependent on                                     */
  /* TT_CONFIG_OPTION_COMPONENT_OFFSET_SCALED.  This is useful for old TT */
  /* fonts which don't set the xxx_COMPONENT_OFFSET bit.                  */

      if ( have_scale &&
#ifdef TT_CONFIG_OPTION_COMPONENT_OFFSET_SCALED
           !( subglyph->flags & UNSCALED_COMPONENT_OFFSET ) )
#else
            ( subglyph->flags & SCALED_COMPONENT_OFFSET ) )
#endif
      {

#if 0

  /*************************************************************************/
  /*                                                                       */
  /* This algorithm is what Apple documents.  But it doesn't work.         */
  /*                                                                       */
        int  a = subglyph->transform.xx > 0 ?  subglyph->transform.xx
                                            : -subglyph->transform.xx;
        int  b = subglyph->transform.yx > 0 ?  subglyph->transform.yx
                                            : -subglyph->transform.yx;
        int  c = subglyph->transform.xy > 0 ?  subglyph->transform.xy
                                            : -subglyph->transform.xy;
        int  d = subglyph->transform.yy > 0 ? subglyph->transform.yy
                                            : -subglyph->transform.yy;
        int  m = a > b ? a : b;
        int  n = c > d ? c : d;


        if ( a - b <= 33 && a - b >= -33 )
          m *= 2;
        if ( c - d <= 33 && c - d >= -33 )
          n *= 2;
        x = FT_MulFix( x, m );
        y = FT_MulFix( y, n );

#else /* 0 */

  /*************************************************************************/
  /*                                                                       */
  /* This algorithm is a guess and works much better than the above.       */
  /*                                                                       */
        FT_Fixed  mac_xscale = FT_SqrtFixed(
                                 FT_MulFix( subglyph->transform.xx,
                                            subglyph->transform.xx ) +
                                 FT_MulFix( subglyph->transform.xy,
                                            subglyph->transform.xy ) );
        FT_Fixed  mac_yscale = FT_SqrtFixed(
                                 FT_MulFix( subglyph->transform.yy,
                                            subglyph->transform.yy ) +
                                 FT_MulFix( subglyph->transform.yx,
                                            subglyph->transform.yx ) );


        x = FT_MulFix( x, mac_xscale );
        y = FT_MulFix( y, mac_yscale );

#endif /* 0 */

      }

      if ( !( loader->load_flags & FT_LOAD_NO_SCALE ) )
      {
        FT_Fixed  x_scale = ((TT_Size)loader->size)->metrics.x_scale;
        FT_Fixed  y_scale = ((TT_Size)loader->size)->metrics.y_scale;


        x = FT_MulFix( x, x_scale );
        y = FT_MulFix( y, y_scale );

        if ( subglyph->flags & ROUND_XY_TO_GRID )
        {
          x = FT_PIX_ROUND( x );
          y = FT_PIX_ROUND( y );
        }
      }
    }

    if ( x || y )
      translate_array( num_points - num_base_points,
                       base_vec + num_base_points,
                       x, y );

    return TT_Err_Ok;
  }


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    TT_Process_Composite_Glyph                                         */
  /*                                                                       */
  /* <Description>                                                         */
  /*    This is slightly different from TT_Process_Simple_Glyph, in that   */
  /*    it's sole purpose is to hint the glyph.  Thus this function is     */
  /*    only available when bytecode interpreter is enabled.               */
  /*                                                                       */
  static FT_Error
  TT_Process_Composite_Glyph( TT_Loader  loader,
                              FT_UInt    start_point,
                              FT_UInt    start_contour )
  {
    FT_Error     error;
    FT_Outline*  outline;
    FT_UInt      i;


    outline = &loader->gloader->base.outline;

    /* make room for phantom points */
    error = FT_GLYPHLOADER_CHECK_POINTS( loader->gloader,
                                         outline->n_points + 4,
                                         0 );
    if ( error )
      return error;

    outline->points[outline->n_points    ] = loader->pp1;
    outline->points[outline->n_points + 1] = loader->pp2;
    outline->points[outline->n_points + 2] = loader->pp3;
    outline->points[outline->n_points + 3] = loader->pp4;

    outline->tags[outline->n_points    ] = 0;
    outline->tags[outline->n_points + 1] = 0;
    outline->tags[outline->n_points + 2] = 0;
    outline->tags[outline->n_points + 3] = 0;


    tt_prepare_zone( &loader->zone, &loader->gloader->base,
                     start_point, start_contour );

    /* Some points are likely touched during execution of  */
    /* instructions on components.  So let's untouch them. */
    for ( i = start_point; i < loader->zone.n_points; i++ )
      loader->zone.tags[i] &= ~( FT_CURVE_TAG_TOUCH_X |
                                 FT_CURVE_TAG_TOUCH_Y );

    loader->zone.n_points += 4;

    return TT_Hint_Glyph( loader, 1 );
  }


  /* Calculate the four phantom points.                     */
  /* The first two stand for horizontal origin and advance. */
  /* The last two stand for vertical origin and advance.    */
#define TT_LOADER_SET_PP( loader )                                          \
          do {                                                              \
            (loader)->pp1.x = (loader)->bbox.xMin - (loader)->left_bearing; \
            (loader)->pp1.y = 0;                                            \
            (loader)->pp2.x = (loader)->pp1.x + (loader)->advance;          \
            (loader)->pp2.y = 0;                                            \
            (loader)->pp3.x = 0;                                            \
            (loader)->pp3.y = (loader)->top_bearing + (loader)->bbox.yMax;  \
            (loader)->pp4.x = 0;                                            \
            (loader)->pp4.y = (loader)->pp3.y - (loader)->vadvance;         \
          } while ( 0 )


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    load_truetype_glyph                                                */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Loads a given truetype glyph.  Handles composites and uses a       */
  /*    TT_Loader object.                                                  */
  /*                                                                       */
  static FT_Error
  load_truetype_glyph( TT_Loader  loader,
                       FT_UInt    glyph_index,
                       FT_UInt    recurse_count )
  {
    FT_Error        error;
    FT_Fixed        x_scale, y_scale;
    FT_ULong        offset;
    TT_Face         face         = (TT_Face)loader->face;
    FT_GlyphLoader  gloader      = loader->gloader;
    FT_Bool         opened_frame = 0;



    if ( recurse_count > face->max_profile.maxComponentDepth )
    {
      error = TT_Err_Invalid_Composite;
      goto Exit;
    }

    /* check glyph index */
    if ( glyph_index >= (FT_UInt)face->root.num_glyphs )
    {
      error = TT_Err_Invalid_Glyph_Index;
      goto Exit;
    }

    loader->glyph_index = glyph_index;

    if ( ( loader->load_flags & FT_LOAD_NO_SCALE ) == 0 )
    {
      x_scale = ((TT_Size)loader->size)->metrics.x_scale;
      y_scale = ((TT_Size)loader->size)->metrics.y_scale;
    }
    else
    {
      x_scale = 0x10000L;
      y_scale = 0x10000L;
    }

    /* get metrics, horizontal and vertical */
    {
      FT_Short   left_bearing = 0, top_bearing = 0;
      FT_UShort  advance_width = 0, advance_height = 0;


      Get_HMetrics( face, glyph_index,
                    (FT_Bool)!( loader->load_flags &
                                FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH ),
                    &left_bearing,
                    &advance_width );
      Get_VMetrics( face, glyph_index,
                    (FT_Bool)!( loader->load_flags &
                                FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH ),
                    &top_bearing,
                    &advance_height );


      loader->left_bearing = left_bearing;
      loader->advance      = advance_width;
      loader->top_bearing  = top_bearing;
      loader->vadvance     = advance_height;

      if ( !loader->linear_def )
      {
        loader->linear_def = 1;
        loader->linear     = advance_width;
      }
    }

    /* Set `offset' to the start of the glyph relative to the start of */
    /* the `glyf' table, and `byte_len' to the length of the glyph in  */
    /* bytes.                                                          */


      offset = tt_face_get_location( face, glyph_index,
                                     (FT_UInt*)&loader->byte_len );

    if ( loader->byte_len == 0 )
    {
      /* as described by Frederic Loyer, these are spaces or */
      /* the unknown glyph.                                  */
      loader->bbox.xMin = 0;
      loader->bbox.xMax = 0;
      loader->bbox.yMin = 0;
      loader->bbox.yMax = 0;

      TT_LOADER_SET_PP( loader );


      if ( ( loader->load_flags & FT_LOAD_NO_SCALE ) == 0 )
      {
        loader->pp1.x = FT_MulFix( loader->pp1.x, x_scale );
        loader->pp2.x = FT_MulFix( loader->pp2.x, x_scale );
        loader->pp3.y = FT_MulFix( loader->pp3.y, y_scale );
        loader->pp4.y = FT_MulFix( loader->pp4.y, y_scale );
      }

      error = TT_Err_Ok;
      goto Exit;
    }

    error = face->access_glyph_frame( loader, glyph_index,
                                      loader->glyf_offset + offset,
                                      loader->byte_len );
    if ( error )
      goto Exit;

    opened_frame = 1;

    /* read first glyph header */
    error = face->read_glyph_header( loader );
    if ( error )
      goto Exit;

    TT_LOADER_SET_PP( loader );

    /***********************************************************************/
    /***********************************************************************/
    /***********************************************************************/

    /* if it is a simple glyph, load it */

    if ( loader->n_contours >= 0 )
    {
      error = face->read_simple_glyph( loader );
      if ( error )
        goto Exit;

      /* all data have been read */
      face->forget_glyph_frame( loader );
      opened_frame = 0;

      error = TT_Process_Simple_Glyph( loader );
      if ( error )
        goto Exit;

      FT_GlyphLoader_Add( gloader );
    }

    /***********************************************************************/
    /***********************************************************************/
    /***********************************************************************/

    /* otherwise, load a composite! */
    else if ( loader->n_contours == -1 )
    {
      FT_UInt       start_point;
      FT_UInt       start_contour;
      FT_ULong      ins_pos;  /* position of composite instructions, if any */


      start_point   = gloader->base.outline.n_points;
      start_contour = gloader->base.outline.n_contours;

      /* for each subglyph, read composite header */
      error = face->read_composite_glyph( loader );
      if ( error )
        goto Exit;

      /* store the offset of instructions */
      ins_pos = loader->ins_pos;

      /* all data we need are read */
      face->forget_glyph_frame( loader );
      opened_frame = 0;


      if ( ( loader->load_flags & FT_LOAD_NO_SCALE ) == 0 )
      {
        loader->pp1.x = FT_MulFix( loader->pp1.x, x_scale );
        loader->pp2.x = FT_MulFix( loader->pp2.x, x_scale );
        loader->pp3.y = FT_MulFix( loader->pp3.y, y_scale );
        loader->pp4.y = FT_MulFix( loader->pp4.y, y_scale );
      }


      /*********************************************************************/
      /*********************************************************************/
      /*********************************************************************/

      {
        FT_UInt      n, num_base_points;
        FT_SubGlyph  subglyph       = 0;

        FT_UInt      num_points     = start_point;
        FT_UInt      num_subglyphs  = gloader->current.num_subglyphs;
        FT_UInt      num_base_subgs = gloader->base.num_subglyphs;


        FT_GlyphLoader_Add( gloader );

        /* read each subglyph independently */
        for ( n = 0; n < num_subglyphs; n++ )
        {
          FT_Vector  pp[4];


          /* Each time we call load_truetype_glyph in this loop, the   */
          /* value of `gloader.base.subglyphs' can change due to table */
          /* reallocations.  We thus need to recompute the subglyph    */
          /* pointer on each iteration.                                */
          subglyph = gloader->base.subglyphs + num_base_subgs + n;

          pp[0] = loader->pp1;
          pp[1] = loader->pp2;
          pp[2] = loader->pp3;
          pp[3] = loader->pp4;

          num_base_points = gloader->base.outline.n_points;

          error = load_truetype_glyph( loader, subglyph->index,
                                       recurse_count + 1 );
          if ( error )
            goto Exit;

          /* restore subglyph pointer */
          subglyph = gloader->base.subglyphs + num_base_subgs + n;

          if ( !( subglyph->flags & USE_MY_METRICS ) )
          {
            loader->pp1 = pp[0];
            loader->pp2 = pp[1];
            loader->pp3 = pp[2];
            loader->pp4 = pp[3];
          }

          num_points = gloader->base.outline.n_points;

          if ( num_points == num_base_points )
            continue;

          /* gloader->base.outline consists of three part:                  */
          /* 0 -(1)-> start_point -(2)-> num_base_points -(3)-> n_points.   */
          /*                                                                */
          /* (1): exist from the beginning                                  */
          /* (2): components that have been loaded so far                   */
          /* (3): the newly loaded component                                */
          TT_Process_Composite_Component( loader, subglyph, start_point,
                                          num_base_points );
        }


        /* process the glyph */
        loader->ins_pos = ins_pos;
        if ( IS_HINTED( loader->load_flags ) &&


             num_points > start_point )
          TT_Process_Composite_Glyph( loader, start_point, start_contour );

      }
    }
    else
    {
      /* invalid composite count ( negative but not -1 ) */
      error = TT_Err_Invalid_Outline;
      goto Exit;
    }

    /***********************************************************************/
    /***********************************************************************/
    /***********************************************************************/

  Exit:

    if ( opened_frame )
      face->forget_glyph_frame( loader );


    return error;
  }


  static FT_Error
  compute_glyph_metrics( TT_Loader   loader,
                         FT_UInt     glyph_index )
  {
    FT_BBox       bbox;
    TT_Face       face = (TT_Face)loader->face;
    FT_Fixed      y_scale;
    TT_GlyphSlot  glyph = loader->glyph;
    TT_Size       size = (TT_Size)loader->size;


    y_scale = 0x10000L;
    if ( ( loader->load_flags & FT_LOAD_NO_SCALE ) == 0 )
      y_scale = size->root.metrics.y_scale;

  FT_Outline_Get_CBox( &glyph->outline, &bbox );

    /* get the device-independent horizontal advance.  It is scaled later */
    /* by the base layer.                                                 */
    {
      FT_Pos  advance = loader->linear;


      /* the flag FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH was introduced to */
      /* correctly support DynaLab fonts, which have an incorrect       */
      /* `advance_Width_Max' field!  It is used, to my knowledge,       */
      /* exclusively in the X-TrueType font server.                     */
      /*                                                                */
      if ( face->postscript.isFixedPitch                                     &&
           ( loader->load_flags & FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH ) == 0 )
        advance = face->horizontal.advance_Width_Max;

      /* it will be scaled later by the base layer.                        */
    }

    glyph->metrics.horiBearingX = bbox.xMin;
    glyph->metrics.horiBearingY = bbox.yMax;
    glyph->metrics.horiAdvance  = loader->pp2.x - loader->pp1.x;

    /* Now take care of vertical metrics.  In the case where there is    */
    /* no vertical information within the font (relatively common), make */
    /* up some metrics by `hand'...                                      */

    {
      FT_Pos  top;      /* scaled vertical top side bearing  */
      FT_Pos  advance;  /* scaled vertical advance height    */


      /* Get the unscaled top bearing and advance height. */
      if ( face->vertical_info &&
           face->vertical.number_Of_VMetrics > 0 )
      {
        top = (FT_Short)FT_DivFix( loader->pp3.y - bbox.yMax,
                                   y_scale );

        if ( loader->pp3.y <= loader->pp4.y )
          advance = 0;
        else
          advance = (FT_UShort)FT_DivFix( loader->pp3.y - loader->pp4.y,
                                          y_scale );
      }
      else
      {
        FT_Pos  height;


        /* XXX Compute top side bearing and advance height in  */
        /*     Get_VMetrics instead of here.                   */

        /* NOTE: The OS/2 values are the only `portable' ones, */
        /*       which is why we use them, if there is an OS/2 */
        /*       table in the font.  Otherwise, we use the     */
        /*       values defined in the horizontal header.      */

        height = (FT_Short)FT_DivFix( bbox.yMax - bbox.yMin,
                                      y_scale );
        if ( face->os2.version != 0xFFFFU )
          advance = (FT_Pos)( face->os2.sTypoAscender -
                              face->os2.sTypoDescender );
        else
          advance = (FT_Pos)( face->horizontal.Ascender -
                              face->horizontal.Descender );

        top = (( advance - height )>>1);
      }



      /* scale the metrics */
      if ( !( loader->load_flags & FT_LOAD_NO_SCALE ) )
      {
        top     = FT_MulFix( top, y_scale );
        advance = FT_MulFix( advance, y_scale );
      }

      /* XXX: for now, we have no better algorithm for the lsb, but it */
      /*      should work fine.                                        */
      /*                                                               */
      glyph->metrics.vertBearingX = (( bbox.xMin - bbox.xMax )>>1);
      glyph->metrics.vertBearingY = top;
      glyph->metrics.vertAdvance  = advance;
    }

    /* adjust advance width to the value contained in the hdmx table */
    if ( !face->postscript.isFixedPitch &&
         IS_HINTED( loader->load_flags )        )
    {
      FT_Byte*  widthp;


      widthp = tt_face_get_device_metrics( face,
                                           size->root.metrics.x_ppem,
                                           glyph_index );

      if ( widthp )
        glyph->metrics.horiAdvance = *widthp << 6;
    }

    /* set glyph dimensions */
    glyph->metrics.width  = bbox.xMax - bbox.xMin;
    glyph->metrics.height = bbox.yMax - bbox.yMin;

    return 0;
  }




  static FT_Error
  tt_loader_init( TT_Loader     loader,
                  TT_Size       size,
                  TT_GlyphSlot  glyph,
                  FT_Int32      load_flags )
  {
    TT_Face    face;
    FT_Stream  stream;


    face   = (TT_Face)glyph->face;
    stream = face->root.stream;

    FT_MEM_ZERO( loader, sizeof ( TT_LoaderRec ) );


    /* seek to the beginning of the glyph table.  For Type 42 fonts      */
    /* the table might be accessed from a Postscript stream or something */
    /* else...                                                           */


    {
      FT_Error  error = face->goto_table( face, TTAG_glyf, stream, 0 );


      if ( error )
      {
        return error;
      }
      loader->glyf_offset = FT_STREAM_POS();
    }

    /* get face's glyph loader */
    {
      FT_GlyphLoader  gloader = glyph->internal->loader;


      FT_GlyphLoader_Rewind( gloader );
      loader->gloader = gloader;
    }

    loader->load_flags    = load_flags;

    loader->face   = (FT_Face)face;
    loader->size   = (FT_Size)size;
    loader->glyph  = (FT_GlyphSlot)glyph;
    loader->stream = stream;

    return TT_Err_Ok;
  }


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    TT_Load_Glyph                                                      */
  /*                                                                       */
  /* <Description>                                                         */
  /*    A function used to load a single glyph within a given glyph slot,  */
  /*    for a given size.                                                  */
  /*                                                                       */
  /* <Input>                                                               */
  /*    glyph       :: A handle to a target slot object where the glyph    */
  /*                   will be loaded.                                     */
  /*                                                                       */
  /*    size        :: A handle to the source face size at which the glyph */
  /*                   must be scaled/loaded.                              */
  /*                                                                       */
  /*    glyph_index :: The index of the glyph in the font file.            */
  /*                                                                       */
  /*    load_flags  :: A flag indicating what to load for this glyph.  The */
  /*                   FT_LOAD_XXX constants can be used to control the    */
  /*                   glyph loading process (e.g., whether the outline    */
  /*                   should be scaled, whether to load bitmaps or not,   */
  /*                   whether to hint the outline, etc).                  */
  /*                                                                       */
  /* <Return>                                                              */
  /*    FreeType error code.  0 means success.                             */
  /*                                                                       */
  FT_LOCAL_DEF( FT_Error )
  TT_Load_Glyph( TT_Size       size,
                 TT_GlyphSlot  glyph,
                 FT_UInt       glyph_index,
                 FT_Int32      load_flags )
  {
    TT_Face       face;
    FT_Stream     stream;
    FT_Error      error;
    TT_LoaderRec  loader;


    face   = (TT_Face)glyph->face;
    stream = face->root.stream;
    error  = TT_Err_Ok;


    /* if FT_LOAD_NO_SCALE is not set, `ttmetrics' must be valid */
    if ( !( load_flags & FT_LOAD_NO_SCALE ) && !size->ttmetrics.valid )
      return TT_Err_Invalid_Size_Handle;

    if ( load_flags & FT_LOAD_SBITS_ONLY )
      return TT_Err_Invalid_Argument;

    error = tt_loader_init( &loader, size, glyph, load_flags );
    if ( error )
      return error;

    glyph->format        = FT_GLYPH_FORMAT_OUTLINE;
    //glyph->num_subglyphs = 0;
    glyph->outline.flags = 0;

    /* Main loading loop */
    error = load_truetype_glyph( &loader, glyph_index, 0 );
    if ( !error )
    {
    glyph->outline        = loader.gloader->base.outline;
    glyph->outline.flags &= ~FT_OUTLINE_SINGLE_PASS;

    /* In case bit 1 of the `flags' field in the `head' table isn't */
    /* set, translate array so that (0,0) is the glyph's origin.    */
    if ( ( face->header.Flags & 2 ) == 0 && loader.pp1.x )
      FT_Outline_Translate( &glyph->outline, -loader.pp1.x, 0 );

      compute_glyph_metrics( &loader, glyph_index );
    }

    /* Set the `high precision' bit flag.                           */
    /* This is _critical_ to get correct output for monochrome      */
    /* TrueType glyphs at all sizes using the bytecode interpreter. */
    /*                                                              */
    if ( !( load_flags & FT_LOAD_NO_SCALE ) &&
         size->root.metrics.y_ppem < 24     )
      glyph->outline.flags |= FT_OUTLINE_HIGH_PRECISION;

    return error;
  }

#endif

/* END */
