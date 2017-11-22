/***************************************************************************/
/*                                                                         */
/*  ftheader.h                                                             */
/*                                                                         */
/*    Build macros of the FreeType 2 library.                              */
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

#ifndef __FT_HEADER_H__
#define __FT_HEADER_H__


  /*@***********************************************************************/
  /*                                                                       */
  /* <Macro>                                                               */
  /*    FT_BEGIN_HEADER                                                    */
  /*                                                                       */
  /* <Description>                                                         */
  /*    This macro is used in association with @FT_END_HEADER in header    */
  /*    files to ensure that the declarations within are properly          */
  /*    encapsulated in an `extern "C" { .. }' block when included from a  */
  /*    C++ compiler.                                                      */
  /*                                                                       */
#ifdef __cplusplus
#define FT_BEGIN_HEADER  extern "C" {
#else
#define FT_BEGIN_HEADER  /* nothing */
#endif


  /*@***********************************************************************/
  /*                                                                       */
  /* <Macro>                                                               */
  /*    FT_END_HEADER                                                      */
  /*                                                                       */
  /* <Description>                                                         */
  /*    This macro is used in association with @FT_BEGIN_HEADER in header  */
  /*    files to ensure that the declarations within are properly          */
  /*    encapsulated in an `extern "C" { .. }' block when included from a  */
  /*    C++ compiler.                                                      */
  /*                                                                       */
#ifdef __cplusplus
#define FT_END_HEADER  }
#else
#define FT_END_HEADER  /* nothing */
#endif


  /*************************************************************************/
  /*                                                                       */
  /* Aliases for the FreeType 2 public and configuration files.            */
  /*                                                                       */
  /*************************************************************************/

  /*************************************************************************/
  /*                                                                       */
  /* <Section>                                                             */
  /*    header_file_macros                                                 */
  /*                                                                       */
  /* <Title>                                                               */
  /*    Header File Macros                                                 */
  /*                                                                       */
  /* <Abstract>                                                            */
  /*    Macro definitions used to #include specific header files.          */
  /*                                                                       */
  /* <Description>                                                         */
  /*    The following macros are defined to the name of specific           */
  /*    FreeType 2 header files.  They can be used directly in #include    */
  /*    statements as in:                                                  */
  /*                                                                       */
  /*    {                                                                  */
  /*      #include FT_FREETYPE_H                                           */
  /*    }                                                                  */
  /*                                                                       */
  /*    There are several reasons why we are now using macros to name      */
  /*    public header files.  The first one is that such macros are not    */
  /*    limited to the infamous 8.3 naming rule required by DOS (and       */
  /*                                                                       */
  /*    The second reason is that it allows for more flexibility in the    */
  /*    way FreeType 2 is installed on a given system.                     */
  /*                                                                       */
  /*************************************************************************/


  /* configuration files */

  /*************************************************************************
   *
   * @macro:
   *   FT_CONFIG_CONFIG_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing
   *   FreeType 2 configuration data.
   *
   */
#ifndef FT_CONFIG_CONFIG_H
#define FT_CONFIG_CONFIG_H  <freetype/config/ftconfig.h>
#endif


  /*************************************************************************
   *
   * @macro:
   *   FT_CONFIG_STANDARD_LIBRARY_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing
   *   FreeType 2 interface to the standard C library functions.
   *
   */
#ifndef FT_CONFIG_STANDARD_LIBRARY_H
#define FT_CONFIG_STANDARD_LIBRARY_H  <freetype/config/ftstdlib.h>
#endif


  /*************************************************************************
   *
   * @macro:
   *   FT_CONFIG_OPTIONS_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing
   *   FreeType 2 project-specific configuration options.
   *
   */
#ifndef FT_CONFIG_OPTIONS_H
#define FT_CONFIG_OPTIONS_H  <freetype/config/ftoption.h>
#endif


  /*************************************************************************
   *
   * @macro:
   *   FT_CONFIG_MODULES_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   list of FreeType 2 modules that are statically linked to new library
   *   instances in @FT_Init_FreeType.
   *
   */
#ifndef FT_CONFIG_MODULES_H
#define FT_CONFIG_MODULES_H  <freetype/config/ftmodule.h>
#endif


  /* public headers */

  /*************************************************************************
   *
   * @macro:
   *   FT_FREETYPE_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   base FreeType 2 API.
   *
   */
#define FT_FREETYPE_H  <freetype/freetype.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_ERRORS_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   list of FreeType 2 error codes (and messages).
   *
   *   It is included by @FT_FREETYPE_H.
   *
   */
#define FT_ERRORS_H  <freetype/fterrors.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_MODULE_ERRORS_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   list of FreeType 2 module error offsets (and messages).
   *
   */
#define FT_MODULE_ERRORS_H  <freetype/ftmoderr.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_SYSTEM_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   FreeType 2 interface to low-level operations (i.e., memory management
   *   and stream i/o).
   *
   *   It is included by @FT_FREETYPE_H.
   *
   */
#define FT_SYSTEM_H  <freetype/ftsystem.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_IMAGE_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing type
   *   definitions related to glyph images (i.e., bitmaps, outlines,
   *   scan-converter parameters).
   *
   *   It is included by @FT_FREETYPE_H.
   *
   */
#define FT_IMAGE_H  <freetype/ftimage.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_TYPES_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   basic data types defined by FreeType 2.
   *
   *   It is included by @FT_FREETYPE_H.
   *
   */
#define FT_TYPES_H  <freetype/fttypes.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_LIST_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   list management API of FreeType 2.
   *
   *   (Most applications will never need to include this file.)
   *
   */
#define FT_LIST_H  <freetype/ftlist.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_OUTLINE_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   scalable outline management API of FreeType 2.
   *
   */
#define FT_OUTLINE_H  <freetype/ftoutln.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_SIZES_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   API which manages multiple @FT_Size objects per face.
   *
   */
#define FT_SIZES_H  <freetype/ftsizes.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_MODULE_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   module management API of FreeType 2.
   *
   */
#define FT_MODULE_H  <freetype/ftmodapi.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_RENDER_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   renderer module management API of FreeType 2.
   *
   */
#define FT_RENDER_H  <freetype/ftrender.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_TYPE1_TABLES_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   types and API specific to the Type 1 format.
   *
   */
#define FT_TYPE1_TABLES_H  <freetype/t1tables.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_TRUETYPE_IDS_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   enumeration values which identify name strings, languages, encodings,
   *   etc.  This file really contains a _large_ set of constant macro
   *   definitions, taken from the TrueType and OpenType specifications.
   *
   */
#define FT_TRUETYPE_IDS_H  <freetype/ttnameid.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_TRUETYPE_TABLES_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   types and API specific to the TrueType (as well as OpenType) format.
   *
   */
#define FT_TRUETYPE_TABLES_H  <freetype/tttables.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_TRUETYPE_TAGS_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   definitions of TrueType four-byte `tags' which identify blocks in
   *   SFNT-based font formats (i.e., TrueType and OpenType).
   *
   */
#define FT_TRUETYPE_TAGS_H  <freetype/tttags.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_BDF_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   definitions of an API which accesses BDF-specific strings from a
   *   face.
   *
   */
#define FT_BDF_H  <freetype/ftbdf.h>




  /*************************************************************************
   *
   * @macro:
   *   FT_BITMAP_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   API of the optional bitmap conversion component.
   *
   */
#define FT_BITMAP_H  <freetype/ftbitmap.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_BBOX_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   API of the optional exact bounding box computation routines.
   *
   */
#define FT_BBOX_H  <freetype/ftbbox.h>



  /*************************************************************************
   *
   * @macro:
   *   FT_OPENTYPE_VALIDATE_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   optional FreeType 2 API which validates OpenType tables (BASE, GDEF,
   *   GPOS, GSUB, JSTF).
   *
   */
#define FT_OPENTYPE_VALIDATE_H  <freetype/ftotval.h>


  /*************************************************************************
   *
   * @macro:
   *   FT_GX_VALIDATE_H
   *
   * @description:
   *   A macro used in #include statements to name the file containing the
   *   optional FreeType 2 API which validates TrueTypeGX/AAT tables (feat,
   *   mort, morx, bsln, just, kern, opbd, trak, prop).
   *
   */
#define FT_GX_VALIDATE_H  <freetype/ftgxval.h>





  /* */

#define FT_ERROR_DEFINITIONS_H  <freetype/fterrdef.h>



#endif /* __FT2_BUILD_H__ */


/* END */
