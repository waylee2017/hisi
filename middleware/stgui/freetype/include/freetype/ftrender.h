/***************************************************************************/
/*                                                                         */
/*  ftrender.h                                                             */
/*                                                                         */
/*    FreeType renderer modules public interface (specification).          */
/*                                                                         */
/*  Copyright 1996-2001, 2005, 2006 by                                     */
/*  David Turner, Robert Wilhelm, and Werner Lemberg.                      */
/*                                                                         */
/*  This file is part of the FreeType project, and may only be used,       */
/*  modified, and distributed under the terms of the FreeType project      */
/*  license, LICENSE.TXT.  By continuing to use, modify, or distribute     */
/*  this file you indicate that you have read the license and              */
/*  understand and accept it fully.                                        */
/*                                                                         */
/***************************************************************************/


#ifndef __FTRENDER_H__
#define __FTRENDER_H__


#include <ft2build.h>
#include FT_MODULE_H


FT_BEGIN_HEADER


  /*************************************************************************/
  /*                                                                       */
  /* <Section>                                                             */
  /*    module_management                                                  */
  /*                                                                       */
  /*************************************************************************/


  typedef FT_Error
  (*FT_Renderer_RenderFunc)( FT_Renderer       renderer,
                             FT_GlyphSlot      slot,
                             FT_UInt           mode,
                             const FT_Vector*  origin );

  typedef FT_Error
  (*FT_Renderer_TransformFunc)( FT_Renderer       renderer,
                                FT_GlyphSlot      slot,
                                const FT_Matrix*  matrix,
                                const FT_Vector*  delta );


  typedef void
  (*FT_Renderer_GetCBoxFunc)( FT_Renderer   renderer,
                              FT_GlyphSlot  slot,
                              FT_BBox*      cbox );


  typedef FT_Error
  (*FT_Renderer_SetModeFunc)( FT_Renderer  renderer,
                              FT_ULong     mode_tag,
                              FT_Pointer   mode_ptr );

/* deprecated identifiers */
#define FTRenderer_render  FT_Renderer_RenderFunc
#define FTRenderer_transform  FT_Renderer_TransformFunc
#define FTRenderer_getCBox  FT_Renderer_GetCBoxFunc
#define FTRenderer_setMode  FT_Renderer_SetModeFunc


  /*************************************************************************/
  /*                                                                       */
  /* <Struct>                                                              */
  /*    FT_Renderer_Class                                                  */
  /*                                                                       */
  /* <Description>                                                         */
  /*    The renderer module class descriptor.                              */
  /*                                                                       */
  /* <Fields>                                                              */
  /*    root         :: The root @FT_Module_Class fields.                  */
  /*                                                                       */
  /*    glyph_format :: The glyph image format this renderer handles.      */
  /*                                                                       */
  /*    render_glyph :: A method used to render the image that is in a     */
  /*                    given glyph slot into a bitmap.                    */
  /*                                                                       */
  /*    set_mode     :: A method used to pass additional parameters.       */
  /*                                                                       */
  /*    raster_class :: For @FT_GLYPH_FORMAT_OUTLINE renderers only.  This */
  /*                    is a pointer to its raster's class.                */
  /*                                                                       */
  /*    raster       :: For @FT_GLYPH_FORMAT_OUTLINE renderers only.  This */
  /*                    is a pointer to the corresponding raster object,   */
  /*                    if any.                                            */
  /*                                                                       */
  typedef struct  FT_Renderer_Class_
  {
    FT_Module_Class       root;

    FT_Glyph_Format       glyph_format;

    FT_Renderer_RenderFunc     render_glyph;
    FT_Renderer_TransformFunc  transform_glyph;
    FT_Renderer_GetCBoxFunc    get_glyph_cbox;
    FT_Renderer_SetModeFunc    set_mode;

    FT_Raster_Funcs*           raster_class;

  } FT_Renderer_Class;


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_Set_Renderer                                                    */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Sets the current renderer to use, and set additional mode.         */
  /*                                                                       */
  /* <InOut>                                                               */
  /*    library    :: A handle to the library object.                      */
  /*                                                                       */
  /* <Input>                                                               */
  /*    renderer   :: A handle to the renderer object.                     */
  /*                                                                       */
  /*    num_params :: The number of additional parameters.                 */
  /*                                                                       */
  /*    parameters :: Additional parameters.                               */
  /*                                                                       */
  /* <Return>                                                              */
  /*    FreeType error code.  0 means success.                             */
  /*                                                                       */
  /* <Note>                                                                */
  /*    In case of success, the renderer will be used to convert glyph     */
  /*    images in the renderer's known format into bitmaps.                */
  /*                                                                       */
  /*    This doesn't change the current renderer for other formats.        */
  /*                                                                       */
  FT_EXPORT( FT_Error )
  FT_Set_Renderer( FT_Library     library,
                   FT_Renderer    renderer,
                   FT_UInt        num_params,
                   FT_Parameter*  parameters );


  /* */


FT_END_HEADER

#endif /* __FTRENDER_H__ */


/* END */
