/***************************************************************************/
/*                                                                         */
/*  ftoption.h                                                             */
/*                                                                         */
/*    User-selectable configuration macros (specification only).           */
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


#ifndef __FTOPTION_H__
#define __FTOPTION_H__


#include <ft2build.h>


FT_BEGIN_HEADER

  /*************************************************************************/
  /*                                                                       */
  /*                 USER-SELECTABLE CONFIGURATION MACROS                  */
  /*                                                                       */
  /* This file contains the default configuration macro definitions for    */
  /* a standard build of the FreeType library.  There are three ways to    */
  /* use this file to build project-specific versions of the library:      */
  /*                                                                       */
  /*  - You can modify this file by hand, but this is not recommended in   */
  /*    cases where you would like to build several versions of the        */
  /*    library from a single source directory.                            */
  /*                                                                       */
  /*  - You can put a copy of this file in your build directory, more      */
  /*    precisely in `$BUILD/freetype/config/ftoption.h', where `$BUILD'   */
  /*    is the name of a directory that is included _before_ the FreeType  */
  /*    include path during compilation.                                   */
  /*                                                                       */
  /*    The default FreeType Makefiles and Jamfiles use the build          */
  /*    directory `builds/<system>' by default, but you can easily change  */
  /*    that for your own projects.                                        */
  /*                                                                       */
  /*  - Copy the file <ft2build.h> to `$BUILD/ft2build.h' and modify it    */
  /*    slightly to pre-define the macro FT_CONFIG_OPTIONS_H used to       */
  /*    locate this file during the build.  For example,                   */
  /*                                                                       */
  /*      #define FT_CONFIG_OPTIONS_H  <myftoptions.h>                     */
  /*      #include <freetype/config/ftheader.h>                            */
  /*                                                                       */
  /*    will use `$BUILD/myftoptions.h' instead of this file for macro     */
  /*    definitions.                                                       */
  /*                                                                       */
  /*    Note also that you can similarly pre-define the macro              */
  /*    FT_CONFIG_MODULES_H used to locate the file listing of the modules */
  /*    that are statically linked to the library at compile time.  By     */
  /*    default, this file is <freetype/config/ftmodule.h>.                */
  /*                                                                       */
  /*  We highly recommend using the third method whenever possible.        */
  /*                                                                       */
  /*************************************************************************/



  /*************************************************************************/
  /*                                                                       */
  /* Many compilers provide a non-ANSI 64-bit data type that can be used   */
  /* by FreeType to speed up some computations.  However, this will create */
  /* some problems when compiling the library in strict ANSI mode.         */
  /*                                                                       */
  /* For this reason, the use of 64-bit integers is normally disabled when */
  /* the __STDC__ macro is defined.  You can however disable this by       */
  /* defining the macro FT_CONFIG_OPTION_FORCE_INT64 here.                 */
  /*                                                                       */
  /* For most compilers, this will only create compilation warnings when   */
  /* building the library.                                                 */
  /*                                                                       */
  /* ObNote: The compiler-specific 64-bit integers are detected in the     */
  /*         file `ftconfig.h' either statically or through the            */
  /*         `configure' script on supported platforms.                    */
  /*                                                                       */
#undef  FT_CONFIG_OPTION_FORCE_INT64


  /*************************************************************************/
  /*                                                                       */
  /* LZW-compressed file support.                                          */
  /*                                                                       */
  /*   FreeType now handles font files that have been compressed with the  */
  /*   `compress' program.  This is mostly used to parse many of the PCF   */
  /*   files that come with various X11 distributions.  The implementation */
  /*   uses NetBSD's `zopen' to partially uncompress the file on the fly   */
  /*   (see src/lzw/ftgzip.c).                                             */
  /*                                                                       */
  /*   Define this macro if you want to enable this `feature'.             */
  /*                                                                       */
#define FT_CONFIG_OPTION_USE_LZW


  /*************************************************************************/
  /*                                                                       */
  /* Gzip-compressed file support.                                         */
  /*                                                                       */
  /*   FreeType now handles font files that have been compressed with the  */
  /*   `gzip' program.  This is mostly used to parse many of the PCF files */
  /*   that come with XFree86.  The implementation uses `zlib' to          */
  /*   partially uncompress the file on the fly (see src/gzip/ftgzip.c).   */
  /*                                                                       */
  /*   Define this macro if you want to enable this `feature'.  See also   */
  /*   the macro FT_CONFIG_OPTION_SYSTEM_ZLIB below.                       */
  /*                                                                       */
#define FT_CONFIG_OPTION_USE_ZLIB


  /*************************************************************************/
  /*                                                                       */
  /* ZLib library selection                                                */
  /*                                                                       */
  /*   This macro is only used when FT_CONFIG_OPTION_USE_ZLIB is defined.  */
  /*   It allows FreeType's `ftgzip' component to link to the system's     */
  /*   installation of the ZLib library.  This is useful on systems like   */
  /*   Unix or VMS where it generally is already available.                */
  /*                                                                       */
  /*   If you let it undefined, the component will use its own copy        */
  /*   of the zlib sources instead.  These have been modified to be        */
  /*   included directly within the component and *not* export external    */
  /*   function names.  This allows you to link any program with FreeType  */
  /*   _and_ ZLib without linking conflicts.                               */
  /*                                                                       */
  /*   Do not #undef this macro here since the build system might define   */
  /*   it for certain configurations only.                                 */
  /*                                                                       */
/* #define  FT_CONFIG_OPTION_SYSTEM_ZLIB */


  /*************************************************************************/
  /*                                                                       */
  /* DLL export compilation                                                */
  /*                                                                       */
  /*   When compiling FreeType as a DLL, some systems/compilers need a     */
  /*   special keyword in front OR after the return type of function       */
  /*   declarations.                                                       */
  /*                                                                       */
  /*   Two macros are used within the FreeType source code to define       */
  /*   exported library functions: FT_EXPORT and FT_EXPORT_DEF.            */
  /*                                                                       */
  /*     FT_EXPORT( return_type )                                          */
  /*                                                                       */
  /*       is used in a function declaration, as in                        */
  /*                                                                       */
  /*         FT_EXPORT( FT_Error )                                         */
  /*         FT_Init_FreeType( FT_Library*  alibrary );                    */
  /*                                                                       */
  /*                                                                       */
  /*     FT_EXPORT_DEF( return_type )                                      */
  /*                                                                       */
  /*       is used in a function definition, as in                         */
  /*                                                                       */
  /*         FT_EXPORT_DEF( FT_Error )                                     */
  /*         FT_Init_FreeType( FT_Library*  alibrary )                     */
  /*         {                                                             */
  /*           ... some code ...                                           */
  /*           return FT_Err_Ok;                                           */
  /*         }                                                             */
  /*                                                                       */
  /*   You can provide your own implementation of FT_EXPORT and            */
  /*   FT_EXPORT_DEF here if you want.  If you leave them undefined, they  */
  /*   will be later automatically defined as `extern return_type' to      */
  /*   allow normal compilation.                                           */
  /*                                                                       */
  /*   Do not #undef these macros here since the build system might define */
  /*   them for certain configurations only.                               */
  /*                                                                       */
/* #define  FT_EXPORT(x)       extern x */
/* #define  FT_EXPORT_DEF(x)   x */


  /*************************************************************************/
  /*                                                                       */
  /* Glyph Postscript Names handling                                       */
  /*                                                                       */
  /*   By default, FreeType 2 is compiled with the `PSNames' module.  This */
  /*   module is in charge of converting a glyph name string into a        */
  /*   Unicode value, or return a Macintosh standard glyph name for the    */
  /*   use with the TrueType `post' table.                                 */
  /*                                                                       */
  /*   Undefine this macro if you do not want `PSNames' compiled in your   */
  /*   build of FreeType.  This has the following effects:                 */
  /*                                                                       */
  /*   - The TrueType driver will provide its own set of glyph names,      */
  /*     if you build it to support postscript names in the TrueType       */
  /*     `post' table.                                                     */
  /*                                                                       */
  /*   - The Type 1 driver will not be able to synthetize a Unicode        */
  /*     charmap out of the glyphs found in the fonts.                     */
  /*                                                                       */
  /*   You would normally undefine this configuration macro when building  */
  /*   a version of FreeType that doesn't contain a Type 1 or CFF driver.  */
  /*                                                                       */
#define FT_CONFIG_OPTION_POSTSCRIPT_NAMES


  /*************************************************************************/
  /*                                                                       */
  /* Postscript Names to Unicode Values support                            */
  /*                                                                       */
  /*   By default, FreeType 2 is built with the `PSNames' module compiled  */
  /*   in.  Among other things, the module is used to convert a glyph name */
  /*   into a Unicode value.  This is especially useful in order to        */
  /*   synthetize on the fly a Unicode charmap from the CFF/Type 1 driver  */
  /*   through a big table named the `Adobe Glyph List' (AGL).             */
  /*                                                                       */
  /*   Undefine this macro if you do not want the Adobe Glyph List         */
  /*   compiled in your `PSNames' module.  The Type 1 driver will not be   */
  /*   able to synthetize a Unicode charmap out of the glyphs found in the */
  /*   fonts.                                                              */
  /*                                                                       */
#define FT_CONFIG_OPTION_ADOBE_GLYPH_LIST


  /*************************************************************************/
  /*                                                                       */
  /* Support for Mac fonts                                                 */
  /*                                                                       */
  /*   Define this macro if you want support for outline fonts in Mac      */
  /*   format (mac dfont, mac resource, macbinary containing a mac         */
  /*   resource) on non-Mac platforms.                                     */
  /*                                                                       */
  /*   Note that the `FOND' resource isn't checked.                        */
  /*                                                                       */
#define FT_CONFIG_OPTION_MAC_FONTS




  /*************************************************************************/
  /*                                                                       */
  /* The size in bytes of the render pool used by the scan-line converter  */
  /* to do all of its work.                                                */
  /*                                                                       */
  /* This must be greater than 4KByte.                                     */
  /*                                                                       */
#define FT_RENDER_POOL_SIZE  16384L


  /*************************************************************************/
  /*                                                                       */
  /* FT_MAX_MODULES                                                        */
  /*                                                                       */
  /*   The maximum number of modules that can be registered in a single    */
  /*   FreeType library object.  32 is the default.                        */
  /*                                                                       */
#define FT_MAX_MODULES  4



  /*************************************************************************/
  /*                                                                       */
  /* Memory Debugging                                                      */
  /*                                                                       */
  /*   FreeType now comes with an integrated memory debugger that is       */
  /*   capable of detecting simple errors like memory leaks or double      */
  /*   deletes.  To compile it within your build of the library, you       */
  /*                                                                       */
  /*   Note that the memory debugger is only activated at runtime when     */
  /*   when the _environment_ variable `FT2_DEBUG_MEMORY' is defined also! */
  /*                                                                       */
  /*   Do not #undef this macro here since the build system might define   */
  /*   it for certain configurations only.                                 */
  /*                                                                       */


  /*************************************************************************/
  /*                                                                       */
  /* Module errors                                                         */
  /*                                                                       */
  /*   If this macro is set (which is _not_ the default), the higher byte  */
  /*   of an error code gives the module in which the error has occurred,  */
  /*   while the lower byte is the real error code.                        */
  /*                                                                       */
  /*   Setting this macro makes sense for debugging purposes only, since   */
  /*   it would break source compatibility of certain programs that use    */
  /*   FreeType 2.                                                         */
  /*                                                                       */
  /*   More details can be found in the files ftmoderr.h and fterrors.h.   */
  /*                                                                       */
#undef FT_CONFIG_OPTION_USE_MODULE_ERRORS



  /*************************************************************************/
  /*************************************************************************/
  /****                                                                 ****/
  /****        S F N T   D R I V E R    C O N F I G U R A T I O N       ****/
  /****                                                                 ****/
  /*************************************************************************/
  /*************************************************************************/





  /*************************************************************************/
  /*                                                                       */
  /* TrueType CMap support                                                 */
  /*                                                                       */
  /*   Here you can fine-tune which TrueType CMap table format shall be    */
  /*   supported.                                                          */
#define TT_CONFIG_CMAP_FORMAT_0
#define TT_CONFIG_CMAP_FORMAT_2
#define TT_CONFIG_CMAP_FORMAT_4
#define TT_CONFIG_CMAP_FORMAT_6
#define TT_CONFIG_CMAP_FORMAT_8
#define TT_CONFIG_CMAP_FORMAT_10
#define TT_CONFIG_CMAP_FORMAT_12


  /*************************************************************************/
  /*************************************************************************/
  /****                                                                 ****/
  /****    T R U E T Y P E   D R I V E R    C O N F I G U R A T I O N   ****/
  /****                                                                 ****/
  /*************************************************************************/
  /*************************************************************************/


  /*************************************************************************/
  /*                                                                       */
  /* Define TT_CONFIG_OPTION_COMPONENT_OFFSET_SCALED to compile the        */
  /* TrueType glyph loader to use Apple's definition of how to handle      */
  /* component offsets in composite glyphs.                                */
  /*                                                                       */
  /* Apple and MS disagree on the default behavior of component offsets    */
  /* in composites.  Apple says that they should be scaled by the scaling  */
  /* factors in the transformation matrix (roughly, it's more complex)     */
  /* while MS says they should not.  OpenType defines two bits in the      */
  /* composite flags array which can be used to disambiguate, but old      */
  /* fonts will not have them.                                             */
  /*                                                                       */
  /*   http://partners.adobe.com/asn/developer/opentype/glyf.html          */
  /*   http://fonts.apple.com/TTRefMan/RM06/Chap6glyf.html                 */
  /*                                                                       */
#undef TT_CONFIG_OPTION_COMPONENT_OFFSET_SCALED


FT_END_HEADER


#endif /* __FTOPTION_H__ */


/* END */
