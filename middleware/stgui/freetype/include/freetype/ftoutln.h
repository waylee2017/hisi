/***************************************************************************/
/*                                                                         */
/*  ftoutln.h                                                              */
/*                                                                         */
/*    Support for the FT_Outline type used to store glyph shapes of        */
/*    most scalable font formats (specification).                          */
/*                                                                         */
/*  Copyright 1996-2001, 2002, 2003, 2005, 2006 by                         */
/*  David Turner, Robert Wilhelm, and Werner Lemberg.                      */
/*                                                                         */
/*  This file is part of the FreeType project, and may only be used,       */
/*  modified, and distributed under the terms of the FreeType project      */
/*  license, LICENSE.TXT.  By continuing to use, modify, or distribute     */
/*  this file you indicate that you have read the license and              */
/*  understand and accept it fully.                                        */
/*                                                                         */
/***************************************************************************/


#ifndef __FTOUTLN_H__
#define __FTOUTLN_H__


#include <ft2build.h>
#include FT_FREETYPE_H

#ifdef FREETYPE_H
#error "freetype.h of FreeType 1 has been loaded!"
#error "Please fix the directory search order for header files"
#error "so that freetype.h of FreeType 2 is found first."
#endif


FT_BEGIN_HEADER


  /*************************************************************************/
  /*                                                                       */
  /* <Section>                                                             */
  /*    outline_processing                                                 */
  /*                                                                       */
  /* <Title>                                                               */
  /*    Outline Processing                                                 */
  /*                                                                       */
  /* <Abstract>                                                            */
  /*    Functions to create, transform, and render vectorial glyph images. */
  /*                                                                       */
  /* <Description>                                                         */
  /*    This section contains routines used to create and destroy scalable */
  /*    glyph images known as `outlines'.  These can also be measured,     */
  /*    transformed, and converted into bitmaps and pixmaps.               */
  /*                                                                       */
  /* <Order>                                                               */
  /*    FT_Outline                                                         */
  /*    FT_OUTLINE_FLAGS                                                   */
  /*    FT_Outline_Translate                                               */
  /*    FT_Outline_Transform                                               */
  /*    FT_Outline_Check                                                   */
  /*                                                                       */
  /*    FT_Outline_Get_CBox                                                */
  /*                                                                       */
  /*                                                                       */
  /*    FT_Outline_Decompose                                               */
  /*    FT_Outline_Funcs                                                   */
  /*    FT_Outline_MoveTo_Func                                             */
  /*    FT_Outline_LineTo_Func                                             */
  /*    FT_Outline_ConicTo_Func                                            */
  /*    FT_Outline_CubicTo_Func                                            */
  /*                                                                       */
  /*************************************************************************/


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_Outline_Decompose                                               */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Walks over an outline's structure to decompose it into individual  */
  /*    segments and Bézier arcs.  This function is also able to emit      */
  /*    `move to' and `close to' operations to indicate the start and end  */
  /*    of new contours in the outline.                                    */
  /*                                                                       */
  /* <Input>                                                               */
  /*    outline        :: A pointer to the source target.                  */
  /*                                                                       */
  /*    func_interface :: A table of `emitters', i.e,. function pointers   */
  /*                      called during decomposition to indicate path     */
  /*                      operations.                                      */
  /*                                                                       */
  /* <InOut>                                                               */
  /*    user           :: A typeless pointer which is passed to each       */
  /*                      emitter during the decomposition.  It can be     */
  /*                      used to store the state during the               */
  /*                      decomposition.                                   */
  /*                                                                       */
  /* <Return>                                                              */
  /*    FreeType error code.  0 means sucess.                              */
  /*                                                                       */
  FT_EXPORT( FT_Error )
  FT_Outline_Decompose( FT_Outline*              outline,
                        const FT_Outline_Funcs*  func_interface,
                        void*                    user );




  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_Outline_Check                                                   */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Check the contents of an outline descriptor.                       */
  /*                                                                       */
  /* <Input>                                                               */
  /*    outline :: A handle to a source outline.                           */
  /*                                                                       */
  /* <Return>                                                              */
  /*    FreeType error code.  0 means success.                             */
  /*                                                                       */
  FT_EXPORT( FT_Error )
  FT_Outline_Check( FT_Outline*  outline );


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_Outline_Get_CBox                                                */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Returns an outline's `control box'.  The control box encloses all  */
  /*    the outline's points, including Bézier control points.  Though it  */
  /*    coincides with the exact bounding box for most glyphs, it can be   */
  /*    slightly larger in some situations (like when rotating an outline  */
  /*    which contains Bézier outside arcs).                               */
  /*                                                                       */
  /*    Computing the control box is very fast, while getting the bounding */
  /*    box can take much more time as it needs to walk over all segments  */
  /*    and arcs in the outline.  To get the latter, you can use the       */
  /*    `ftbbox' component which is dedicated to this single task.         */
  /*                                                                       */
  /* <Input>                                                               */
  /*    outline :: A pointer to the source outline descriptor.             */
  /*                                                                       */
  /* <Output>                                                              */
  /*    acbox   :: The outline's control box.                              */
  /*                                                                       */
  FT_EXPORT( void )
  FT_Outline_Get_CBox( const FT_Outline*  outline,
                       FT_BBox           *acbox );


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_Outline_Translate                                               */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Applies a simple translation to the points of an outline.          */
  /*                                                                       */
  /* <InOut>                                                               */
  /*    outline :: A pointer to the target outline descriptor.             */
  /*                                                                       */
  /* <Input>                                                               */
  /*    xOffset :: The horizontal offset.                                  */
  /*                                                                       */
  /*    yOffset :: The vertical offset.                                    */
  /*                                                                       */
  FT_EXPORT( void )
  FT_Outline_Translate( const FT_Outline*  outline,
                        FT_Pos             xOffset,
                        FT_Pos             yOffset );



  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_Outline_Transform                                               */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Applies a simple 2x2 matrix to all of an outline's points.  Useful */
  /*    for applying rotations, slanting, flipping, etc.                   */
  /*                                                                       */
  /* <InOut>                                                               */
  /*    outline :: A pointer to the target outline descriptor.             */
  /*                                                                       */
  /* <Input>                                                               */
  /*    matrix  :: A pointer to the transformation matrix.                 */
  /*                                                                       */
  /* <Note>                                                                */
  /*    You can use @FT_Outline_Translate if you need to translate the     */
  /*    outline's points.                                                  */
  /*                                                                       */
  FT_EXPORT( void )
  FT_Outline_Transform( const FT_Outline*  outline,
                        const FT_Matrix*   matrix );



 /**************************************************************************
  *
  * @enum:
  *   FT_Orientation
  *
  * @description:
  *   A list of values used to describe an outline's contour orientation.
  *
  *   The TrueType and Postscript specifications use different conventions
  *   to determine whether outline contours should be filled or unfilled.
  *
  * @values:
  *   FT_ORIENTATION_TRUETYPE ::
  *     According to the TrueType specification, clockwise contours must
  *     be filled, and counter-clockwise ones must be unfilled.
  *
  *   FT_ORIENTATION_POSTSCRIPT ::
  *     According to the Postscript specification, counter-clockwise contours
  *     must be filled, and clockwise ones must be unfilled.
  *
  *   FT_ORIENTATION_FILL_RIGHT ::
  *     This is identical to @FT_ORIENTATION_TRUETYPE, but is used to
  *     remember that in TrueType, everything that is to the right of
  *     the drawing direction of a contour must be filled.
  *
  *   FT_ORIENTATION_FILL_LEFT ::
  *     This is identical to @FT_ORIENTATION_POSTSCRIPT, but is used to
  *     remember that in Postscript, everything that is to the left of
  *     the drawing direction of a contour must be filled.
  *
  *   FT_ORIENTATION_NONE ::
  *     The orientation cannot be determined.  That is, different parts of
  *     the glyph have different orientation.
  *
  */
  typedef enum
  {
    FT_ORIENTATION_TRUETYPE   = 0,
    FT_ORIENTATION_POSTSCRIPT = 1,
    FT_ORIENTATION_FILL_RIGHT = FT_ORIENTATION_TRUETYPE,
    FT_ORIENTATION_FILL_LEFT  = FT_ORIENTATION_POSTSCRIPT,
    FT_ORIENTATION_NONE

  } FT_Orientation;



  /* */


FT_END_HEADER

#endif /* __FTOUTLN_H__ */


/* END */


/* Local Variables: */
/* coding: utf-8    */
/* End:             */
