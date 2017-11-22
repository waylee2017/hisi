/***************************************************************************/
/*                                                                         */
/*  ftsizes.h                                                              */
/*                                                                         */
/*    FreeType size objects management (specification).                    */
/*                                                                         */
/*  Copyright 1996-2001, 2003, 2004, 2006 by                               */
/*  David Turner, Robert Wilhelm, and Werner Lemberg.                      */
/*                                                                         */
/*  This file is part of the FreeType project, and may only be used,       */
/*  modified, and distributed under the terms of the FreeType project      */
/*  license, LICENSE.TXT.  By continuing to use, modify, or distribute     */
/*  this file you indicate that you have read the license and              */
/*  understand and accept it fully.                                        */
/*                                                                         */
/***************************************************************************/


  /*************************************************************************/
  /*                                                                       */
  /* Typical application would normally not need to use these functions.   */
  /* However, they have been placed in a public API for the rare cases     */
  /* where they are needed.                                                */
  /*                                                                       */
  /*************************************************************************/


#ifndef __FTSIZES_H__
#define __FTSIZES_H__


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
  /*    sizes_management                                                   */
  /*                                                                       */
  /* <Title>                                                               */
  /*    Size Management                                                    */
  /*                                                                       */
  /* <Abstract>                                                            */
  /*    Managing multiple sizes per face.                                  */
  /*                                                                       */
  /* <Description>                                                         */
  /*    @FT_Size object is automatically created and used to store all     */
  /*    pixel-size dependent information, available in the `face->size'    */
  /*    field.                                                             */
  /*                                                                       */
  /*    It is however possible to create more sizes for a given face,      */
  /*    mostly in order to manage several character pixel sizes of the     */
  /*                                                                       */
  /*    modify the contents of the current `active' size; you thus need    */
  /*                                                                       */
  /*    99% of applications won't need the functions provided here,        */
  /*    especially if they use the caching sub-system, so be cautious      */
  /*    when using these.                                                  */
  /*                                                                       */
  /*************************************************************************/


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_New_Size                                                        */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Create a new size object from a given face object.                 */
  /*                                                                       */
  /* <Input>                                                               */
  /*    face :: A handle to a parent face object.                          */
  /*                                                                       */
  /* <Output>                                                              */
  /*    asize :: A handle to a new size object.                            */
  /*                                                                       */
  /* <Return>                                                              */
  /*    FreeType error code.  0 means success.                             */
  /*                                                                       */
  /* <Note>                                                                */
  /*    @FT_Load_Glyph, @FT_Load_Char, etc.                                */
  /*                                                                       */
  FT_EXPORT( FT_Error )
  FT_New_Size( FT_Face   face,
               FT_Size*  size );


FT_END_HEADER

#endif /* __FTSIZES_H__ */


/* END */
