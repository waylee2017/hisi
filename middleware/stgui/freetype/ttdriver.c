/***************************************************************************/
/*                                                                         */
/*  ttdriver.c                                                             */
/*                                                                         */
/*    TrueType font driver implementation (body).                          */
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
#include FT_INTERNAL_STREAM_H
#include FT_INTERNAL_SFNT_H
#include FT_TRUETYPE_IDS_H


#include FT_SERVICE_TRUETYPE_ENGINE_H

#include "ttdriver.h"
#include "ttgload.h"
#include "tterrors.h"


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    tt_get_kerning                                                     */
  /*                                                                       */
  /* <Description>                                                         */
  /*    A driver method used to return the kerning vector between two      */
  /*    glyphs of the same face.                                           */
  /*                                                                       */
  /* <Input>                                                               */
  /*    face        :: A handle to the source face object.                 */
  /*                                                                       */
  /*    left_glyph  :: The index of the left glyph in the kern pair.       */
  /*                                                                       */
  /*    right_glyph :: The index of the right glyph in the kern pair.      */
  /*                                                                       */
  /* <Output>                                                              */
  /*    kerning     :: The kerning vector.  This is in font units for      */
  /*                   scalable formats, and in pixels for fixed-sizes     */
  /*                   formats.                                            */
  /*                                                                       */
  /* <Return>                                                              */
  /*    FreeType error code.  0 means success.                             */
  /*                                                                       */
  /* <Note>                                                                */
  /*    Only horizontal layouts (left-to-right & right-to-left) are        */
  /*    supported by this function.  Other layouts, or more sophisticated  */
  /*    kernings, are out of scope of this method (the basic driver interface is meant to be simple). */

  static FT_Error
  tt_get_kerning( FT_Face     ttface,
                  FT_UInt     left_glyph,
                  FT_UInt     right_glyph,
                  FT_Vector*  kerning )
  {
    TT_Face       face = (TT_Face)ttface;
    SFNT_Service  sfnt = (SFNT_Service)face->sfnt;


    kerning->x = 0;
    kerning->y = 0;

    if ( sfnt )
      kerning->x = sfnt->get_kerning( face, left_glyph, right_glyph );

    return 0;
  }



  /*************************************************************************/
  /*************************************************************************/
  /*************************************************************************/
  /****                                                                 ****/
  /****                                                                 ****/
  /****                           S I Z E S                             ****/
  /****                                                                 ****/
  /****                                                                 ****/
  /*************************************************************************/
  /*************************************************************************/
  /*************************************************************************/




  static FT_Error
  tt_size_request( FT_Size          size,
                   FT_Size_Request  req )
  {
    TT_Size   ttsize = (TT_Size)size;
    FT_Error  error  = TT_Err_Ok;


    FT_Request_Metrics( size->face, req );

    if ( FT_IS_SCALABLE( size->face ) )
      error = tt_size_reset( ttsize );

    return error;
  }


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    Load_Glyph                                                         */
  /*                                                                       */
  /* <Description>                                                         */
  /*    A driver method used to load a glyph within a given glyph slot.    */
  /*                                                                       */
  /* <Input>                                                               */
  /*    slot        :: A handle to the target slot object where the glyph  */
  /*                   will be loaded.                                     */
  /*                                                                       */
  /*    size        :: A handle to the source face size at which the glyph */
  /*                   must be scaled, loaded, etc.                        */
  /*                                                                       */
  /*    glyph_index :: The index of the glyph in the font file.            */
  /*                                                                       */
  /*    load_flags  :: A flag indicating what to load for this glyph.  The */
  /*                   FTLOAD_??? constants can be used to control the     */
  /*                   glyph loading process (e.g., whether the outline    */
  /*                   should be scaled, whether to load bitmaps or not,   */
  /*                   whether to hint the outline, etc).                  */
  /*                                                                       */
  /* <Return>                                                              */
  /*    FreeType error code.  0 means success.                             */
  /*                                                                       */
  static FT_Error
  Load_Glyph( FT_GlyphSlot  ttslot,         /* TT_GlyphSlot */
              FT_Size       ttsize,         /* TT_Size      */
              FT_UInt       glyph_index,
              FT_Int32      load_flags )
  {
    TT_GlyphSlot  slot = (TT_GlyphSlot)ttslot;
    TT_Size       size = (TT_Size)ttsize;
    FT_Face       face = ttslot->face;
    FT_Error      error;


    if ( !slot )
      return TT_Err_Invalid_Slot_Handle;

    if ( !size )
      return TT_Err_Invalid_Size_Handle;

    if ( !face || glyph_index >= (FT_UInt)face->num_glyphs )
      return TT_Err_Invalid_Argument;

    if ( load_flags & ( FT_LOAD_NO_RECURSE | FT_LOAD_NO_SCALE ) )
    {
      load_flags |= FT_LOAD_NO_HINTING |
                    FT_LOAD_NO_BITMAP  |
                    FT_LOAD_NO_SCALE;
    }

    /* now load the glyph outline if necessary */
    error = TT_Load_Glyph( size, slot, glyph_index, load_flags );

    return error;
  }


  /*************************************************************************/
  /*************************************************************************/
  /*************************************************************************/
  /****                                                                                   ****/
  /****                                                                                   ****/
  /****                D R I V E R I N T E R F A C E                    ****/
  /****                                                                                   ****/
  /****                                                                                   ****/
  /*************************************************************************/
  /*************************************************************************/
  /*************************************************************************/


  static const FT_Service_TrueTypeEngineRec  tt_service_truetype_engine =
  {
    FT_TRUETYPE_ENGINE_TYPE_NONE
  };

  static const FT_ServiceDescRec  tt_services[] =
  {
    { FT_SERVICE_ID_TRUETYPE_ENGINE, &tt_service_truetype_engine},
    { NULL, NULL }
  };


  FT_CALLBACK_DEF( FT_Module_Interface )
  tt_get_interface( FT_Module    driver,
                    const char*  tt_interface )
  {
    FT_Module_Interface  result;
    FT_Module            sfntd;
    SFNT_Service         sfnt;


    result = ft_service_list_lookup( tt_services, tt_interface );
    if ( result != NULL )
      return result;

    /* only return the default interface from the SFNT module */
    sfntd = FT_Get_Module( driver->library, "sfnt" );
    if ( sfntd )
    {
      sfnt = (SFNT_Service)( sfntd->clazz->module_interface );
      if ( sfnt )
        return sfnt->get_interface( driver, tt_interface );
    }

    return 0;
  }


  /* The FT_DriverInterface structure is defined in ftdriver.h. */

  FT_CALLBACK_TABLE_DEF
  const FT_Driver_ClassRec  tt_driver_class =
  {
    {
      FT_MODULE_FONT_DRIVER |FT_MODULE_DRIVER_SCALABLE |0,
      sizeof ( TT_DriverRec ),
      "truetype",      /* driver name                           */
      0x10000L,        /* driver version == 1.0                 */
      0x20000L,        /* driver requires FreeType 2.0 or above */
      (void*)0,        /* driver specific interface */
      tt_driver_init,
      tt_driver_done,
      tt_get_interface,
    },

    sizeof ( TT_FaceRec ),
    sizeof ( TT_SizeRec ),
    sizeof ( FT_GlyphSlotRec ),
    tt_face_init,
    tt_face_done,
    tt_size_init,
    tt_size_done,
    tt_slot_init,
    0,                      /* FT_Slot_DoneFunc */
    Load_Glyph,
    tt_get_kerning,
    0,                      /* FT_Face_AttachFunc      */
    0,                      /* FT_Face_GetAdvancesFunc */
    tt_size_request,
    0                       /* FT_Size_SelectFunc      */
  };

#endif  

/* END */
