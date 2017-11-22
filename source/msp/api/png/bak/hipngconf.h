
/* pngconf.h - machine configurable file for libpng
 *
 * libpng version 1.4.0 - January 3, 2010
 * For conditions of distribution and use, see copyright notice in png.h
 * Copyright (c) 1998-2010 Glenn Randers-Pehrson
 * (Version 0.96 Copyright (c) 1996, 1997 Andreas Dilger)
 * (Version 0.88 Copyright (c) 1995, 1996 Guy Eric Schalnat, Group 42, Inc.)
 *
 * This code is released under the libpng license.
 * For conditions of distribution and use, see the disclaimer
 * and license in png.h
 *
 */

/* Any machine specific code is near the front of this file, so if you
 * are configuring libpng for a machine, you may want to read the section
 * starting here down to where it starts to typedef hipng_color, hipng_text,
 * and hipng_info.
 */

#ifndef HIPNGCONF_H
#define HIPNGCONF_H

#ifndef HIPNG_NO_LIMITS_H
#  include <limits.h>
#endif

/* Added at libpng-1.2.9 */

/* config.h is created by and HIPNG_CONFIGURE_LIBPNG is set by the "configure" script. */
#ifdef HIPNG_CONFIGURE_LIBPNG
#  ifdef HAVE_CONFIG_H
#    include "config.h"
#  endif
#endif

/*
 * Added at libpng-1.2.8
 *
 * HIPNG_USER_CONFIG has to be defined on the compiler command line. This
 * includes the resource compiler for Windows DLL configurations.
 */
#ifdef HIPNG_USER_CONFIG
#  ifndef HIPNG_USER_PRIVATEBUILD
#    define HIPNG_USER_PRIVATEBUILD
#  endif
#  include "pngusr.h"
#endif

/*
 * If you create a private DLL you need to define in "pngusr.h" the followings:
 * #define HIPNG_USER_PRIVATEBUILD <Describes by whom and why this version of
 *        the DLL was built>
 *  e.g. #define HIPNG_USER_PRIVATEBUILD "Build by MyCompany for xyz reasons."
 * #define HIPNG_USER_DLLFNAME_POSTFIX <two-letter postfix that serve to
 *        distinguish your DLL from those of the official release. These
 *        correspond to the trailing letters that come after the version
 *        number and must match your private DLL name>
 *  e.g. // private DLL "libpng13gx.dll"
 *       #define HIPNG_USER_DLLFNAME_POSTFIX "gx"
 *
 * The following macros are also at your disposal if you want to complete the
 * DLL VERSIONINFO structure.
 * - HIPNG_USER_VERSIONINFO_COMMENTS
 * - HIPNG_USER_VERSIONINFO_COMPANYNAME
 * - HIPNG_USER_VERSIONINFO_LEGALTRADEMARKS
 */

#ifdef __STDC__
#  ifdef SPECIALBUILD
#    pragma message("HIPNG_LIBHIPNG_SPECIALBUILD (and deprecated SPECIALBUILD)\
     are now LIBPNG reserved macros. Use HIPNG_USER_PRIVATEBUILD instead.")
#  endif

#  ifdef PRIVATEBUILD
#    pragma message("PRIVATEBUILD is deprecated.\
     Use HIPNG_USER_PRIVATEBUILD instead.")
#    define HIPNG_USER_PRIVATEBUILD PRIVATEBUILD
#  endif
#endif /* __STDC__ */

/* End of material added to libpng-1.2.8 */

#ifndef HIPNG_VERSION_INFO_ONLY

/* This is the size of the compression buffer, and thus the size of
 * an IDAT chunk.  Make this whatever size you feel is best for your
 * machine.  One of these will be allocated per hipng_struct.  When this
 * is full, it writes the data to the disk, and does some other
 * calculations.  Making this an extremely small size will slow
 * the library down, but you may want to experiment to determine
 * where it becomes significant, if you are concerned with memory
 * usage.  Note that zlib allocates at least 32Kb also.  For readers,
 * this describes the size of the buffer available to read the data in.
 * Unless this gets smaller than the size of a row (compressed),
 * it should not make much difference how big this is.
 */

#ifndef HIPNG_ZBUF_SIZE
#  define HIPNG_ZBUF_SIZE 8192
#endif

/* Enable if you want a write-only libpng */

#ifndef HIPNG_NO_READ_SUPPORTED
#  define HIPNG_READ_SUPPORTED
#endif

/* Enable if you want a read-only libpng */

#ifndef HIPNG_NO_WRITE_SUPPORTED
#  define HIPNG_WRITE_SUPPORTED
#endif

/* Enabled in 1.4.0. */
#ifdef HIPNG_ALLOW_BENIGN_ERRORS
#  define hipng_benign_error hipng_warning
#  define hipng_chunk_benign_error hipng_chunk_warning
#else
#  ifndef HIPNG_BENIGN_ERRORS_SUPPORTED
#    define hipng_benign_error hipng_error
#    define hipng_chunk_benign_error hipng_chunk_error
#  endif
#endif

/* Added at libpng version 1.4.0 */
#if !defined(HIPNG_NO_WARNINGS) && !defined(HIPNG_WARNINGS_SUPPORTED)
#  define HIPNG_WARNINGS_SUPPORTED
#endif

/* Added at libpng version 1.4.0 */
#if !defined(HIPNG_NO_ERROR_TEXT) && !defined(HIPNG_ERROR_TEXT_SUPPORTED)
#  define HIPNG_ERROR_TEXT_SUPPORTED
#endif

/* Added at libpng version 1.4.0 */
#if !defined(HIPNG_NO_CHECK_cHRM) && !defined(HIPNG_CHECK_cHRM_SUPPORTED)
#  define HIPNG_CHECK_cHRM_SUPPORTED
#endif

/* Added at libpng version 1.4.0 */
#if !defined(HIPNG_NO_ALIGNED_MEMORY) && !defined(HIPNG_ALIGNED_MEMORY_SUPPORTED)
#  define HIPNG_ALIGNED_MEMORY_SUPPORTED
#endif

/* Enabled by default in 1.2.0.  You can disable this if you don't need to
   support PNGs that are embedded in MNG datastreams */
#ifndef HIPNG_NO_MNG_FEATURES
#  ifndef HIPNG_MNG_FEATURES_SUPPORTED
#    define HIPNG_MNG_FEATURES_SUPPORTED
#  endif
#endif

/* Added at libpng version 1.4.0 */
#ifndef HIPNG_NO_FLOATING_POINT_SUPPORTED
#  ifndef HIPNG_FLOATING_POINT_SUPPORTED
#    define HIPNG_FLOATING_POINT_SUPPORTED
#  endif
#endif

/* Added at libpng-1.4.0beta49 for testing (this test is no longer used
   in libpng and hipng_calloc() is always present)
 */
#define HIPNG_CALLOC_SUPPORTED

/* If you are running on a machine where you cannot allocate more
 * than 64K of memory at once, uncomment this.  While libpng will not
 * normally need that much memory in a chunk (unless you load up a very
 * large file), zlib needs to know how big of a chunk it can use, and
 * libpng thus makes sure to check any memory allocation to verify it
 * will fit into memory.
#define HIPNG_MAX_MALLOC_64K
 */
#if defined(MAXSEG_64K) && !defined(HIPNG_MAX_MALLOC_64K)
#  define HIPNG_MAX_MALLOC_64K
#endif

/* Special munging to support doing things the 'cygwin' way:
 * 'Normal' png-on-win32 defines/defaults:
 *   HIPNG_BUILD_DLL -- building dll
 *   HIPNG_USE_DLL   -- building an application, linking to dll
 *   (no define)   -- building static library, or building an
 *                    application and linking to the static lib
 * 'Cygwin' defines/defaults:
 *   HIPNG_BUILD_DLL -- (ignored) building the dll
 *   (no define)   -- (ignored) building an application, linking to the dll
 *   HIPNG_STATIC    -- (ignored) building the static lib, or building an
 *                    application that links to the static lib.
 *   ALL_STATIC    -- (ignored) building various static libs, or building an
 *                    application that links to the static libs.
 * Thus,
 * a cygwin user should define either HIPNG_BUILD_DLL or HIPNG_STATIC, and
 * this bit of #ifdefs will define the 'correct' config variables based on
 * that. If a cygwin user *wants* to define 'HIPNG_USE_DLL' that's okay, but
 * unnecessary.
 *
 * Also, the precedence order is:
 *   ALL_STATIC (since we can't #undef something outside our namespace)
 *   HIPNG_BUILD_DLL
 *   HIPNG_STATIC
 *   (nothing) == HIPNG_USE_DLL
 *
 * CYGWIN (2002-01-20): The preceding is now obsolete. With the advent
 *   of auto-import in binutils, we no longer need to worry about
 *   __declspec(dllexport) / __declspec(dllimport) and friends.  Therefore,
 *   we don't need to worry about HIPNG_STATIC or ALL_STATIC when it comes
 *   to __declspec() stuff.  However, we DO need to worry about
 *   HIPNG_BUILD_DLL and HIPNG_STATIC because those change some defaults
 *   such as CONSOLE_IO.
 */
#ifdef __CYGWIN__
#  ifdef ALL_STATIC
#    ifdef HIPNG_BUILD_DLL
#      undef HIPNG_BUILD_DLL
#    endif
#    ifdef HIPNG_USE_DLL
#      undef HIPNG_USE_DLL
#    endif
#    ifdef HIPNG_DLL
#      undef HIPNG_DLL
#    endif
#    ifndef HIPNG_STATIC
#      define HIPNG_STATIC
#    endif
#  else
#    ifdef HIPNG_BUILD_DLL
#      ifdef HIPNG_STATIC
#        undef HIPNG_STATIC
#      endif
#      ifdef HIPNG_USE_DLL
#        undef HIPNG_USE_DLL
#      endif
#      ifndef HIPNG_DLL
#        define HIPNG_DLL
#      endif
#    else
#      ifdef HIPNG_STATIC
#        ifdef HIPNG_USE_DLL
#          undef HIPNG_USE_DLL
#        endif
#        ifdef HIPNG_DLL
#          undef HIPNG_DLL
#        endif
#      else
#        ifndef HIPNG_USE_DLL
#          define HIPNG_USE_DLL
#        endif
#        ifndef HIPNG_DLL
#          define HIPNG_DLL
#        endif
#      endif
#    endif
#  endif
#endif

/* This protects us against compilers that run on a windowing system
 * and thus don't have or would rather us not use the stdio types:
 * stdin, stdout, and stderr.  The only one currently used is stderr
 * in hipng_error() and hipng_warning().  #defining HIPNG_NO_CONSOLE_IO will
 * prevent these from being compiled and used. #defining HIPNG_NO_STDIO
 * will also prevent these, plus will prevent the entire set of stdio
 * macros and functions (FILE *, printf, etc.) from being compiled and used,
 * unless (HIPNG_DEBUG > 0) has been #defined.
 *
 * #define HIPNG_NO_CONSOLE_IO
 * #define HIPNG_NO_STDIO
 */

#if !defined(HIPNG_NO_STDIO) && !defined(HIPNG_STDIO_SUPPORTED)
#  define HIPNG_STDIO_SUPPORTED
#endif


#ifdef HIPNG_BUILD_DLL
#  if !defined(HIPNG_CONSOLE_IO_SUPPORTED) && !defined(HIPNG_NO_CONSOLE_IO)
#    define HIPNG_NO_CONSOLE_IO
#  endif
#endif

#  ifdef HIPNG_NO_STDIO
#    ifndef HIPNG_NO_CONSOLE_IO
#      define HIPNG_NO_CONSOLE_IO
#    endif
#    ifdef HIPNG_DEBUG
#      if (HIPNG_DEBUG > 0)
#        include <stdio.h>
#      endif
#    endif
#  else
#    include <stdio.h>
#  endif

#if !(defined HIPNG_NO_CONSOLE_IO) && !defined(HIPNG_CONSOLE_IO_SUPPORTED)
//#  define HIPNG_CONSOLE_IO_SUPPORTED
#endif

/* This macro protects us against machines that don't have function
 * prototypes (ie K&R style headers).  If your compiler does not handle
 * function prototypes, define this macro and use the included ansi2knr.
 * I've always been able to use _NO_PROTO as the indicator, but you may
 * need to drag the empty declaration out in front of here, or change the
 * ifdef to suit your own needs.
 */
#ifndef HIPNGARG

#ifdef OF /* zlib prototype munger */
#  define HIPNGARG(arglist) OF(arglist)
#else

#ifdef _NO_PROTO
#  define HIPNGARG(arglist) ()
#else
#  define HIPNGARG(arglist) arglist
#endif /* _NO_PROTO */

#endif /* OF */

#endif /* HIPNGARG */

/* Try to determine if we are compiling on a Mac.  Note that testing for
 * just __MWERKS__ is not good enough, because the Codewarrior is now used
 * on non-Mac platforms.
 */
#ifndef MACOS
#  if (defined(__MWERKS__) && defined(macintosh)) || defined(applec) || \
      defined(THINK_C) || defined(__SC__) || defined(TARGET_OS_MAC)
#    define MACOS
#  endif
#endif

/* Enough people need this for various reasons to include it here */
#if !defined(MACOS) && !defined(RISCOS)
#  include <sys/types.h>
#endif

/* HIPNG_SETJMP_NOT_SUPPORTED and HIPNG_NO_SETJMP_SUPPORTED are deprecated. */
#if !defined(HIPNG_NO_SETJMP) && \
    !defined(HIPNG_SETJMP_NOT_SUPPORTED) && !defined(HIPNG_NO_SETJMP_SUPPORTED)
#  define HIPNG_SETJMP_SUPPORTED
#endif

#ifdef HIPNG_SETJMP_SUPPORTED
/* This is an attempt to force a single setjmp behaviour on Linux.  If
 * the X config stuff didn't define _BSD_SOURCE we wouldn't need this.
 *
 * You can bypass this test if you know that your application uses exactly
 * the same setjmp.h that was included when libpng was built.  Only define
 * HIPNG_SKIP_SETJMP_CHECK while building your application, prior to the
 * application's '#include "png.h"'. Don't define HIPNG_SKIP_SETJMP_CHECK
 * while building a separate libpng library for general use.
 */

#  ifndef HIPNG_SKIP_SETJMP_CHECK
#    ifdef __linux__
#      ifdef _BSD_SOURCE
#        define HIPNG_SAVE_BSD_SOURCE
#        undef _BSD_SOURCE
#      endif
#      ifdef _SETJMP_H
       /* If you encounter a compiler error here, see the explanation
        * near the end of INSTALL.
        */
           __pngconf.h__ in libpng already includes setjmp.h;
           __dont__ include it again.;
#      endif
#    endif /* __linux__ */
#  endif /* HIPNG_SKIP_SETJMP_CHECK */

   /* Include setjmp.h for error handling */
#  include <setjmp.h>

#  ifdef __linux__
#    ifdef HIPNG_SAVE_BSD_SOURCE
#      ifdef _BSD_SOURCE
#        undef _BSD_SOURCE
#      endif
#      define _BSD_SOURCE
#      undef HIPNG_SAVE_BSD_SOURCE
#    endif
#  endif /* __linux__ */
#endif /* HIPNG_SETJMP_SUPPORTED */

#ifdef BSD
#  include <strings.h>
#else
#  include <string.h>
#endif

/* Other defines for things like memory and the like can go here.  */

/* This controls how fine the dithering gets.  As this allocates
 * a largish chunk of memory (32K), those who are not as concerned
 * with dithering quality can decrease some or all of these.
 */
#ifndef HIPNG_DITHER_RED_BITS
#  define HIPNG_DITHER_RED_BITS 5
#endif
#ifndef HIPNG_DITHER_GREEN_BITS
#  define HIPNG_DITHER_GREEN_BITS 5
#endif
#ifndef HIPNG_DITHER_BLUE_BITS
#  define HIPNG_DITHER_BLUE_BITS 5
#endif

/* This controls how fine the gamma correction becomes when you
 * are only interested in 8 bits anyway.  Increasing this value
 * results in more memory being used, and more pow() functions
 * being called to fill in the gamma tables.  Don't set this value
 * less then 8, and even that may not work (I haven't tested it).
 */

#ifndef HIPNG_MAX_GAMMA_8
#  define HIPNG_MAX_GAMMA_8 11
#endif

/* This controls how much a difference in gamma we can tolerate before
 * we actually start doing gamma conversion.
 */
#ifndef HIPNG_GAMMA_THRESHOLD
#  define HIPNG_GAMMA_THRESHOLD 0.05
#endif

/* The following uses const char * instead of char * for error
 * and warning message functions, so some compilers won't complain.
 * If you do not want to use const, define HIPNG_NO_CONST here.
 */

#ifndef HIPNG_CONST
#  ifndef HIPNG_NO_CONST
#    define HIPNG_CONST const
#  else
#    define HIPNG_CONST
#  endif
#endif

/* The following defines give you the ability to remove code from the
 * library that you will not be using.  I wish I could figure out how to
 * automate this, but I can't do that without making it seriously hard
 * on the users.  So if you are not using an ability, change the #define
 * to and #undef, and that part of the library will not be compiled.  If
 * your linker can't find a function, you may want to make sure the
 * ability is defined here.  Some of these depend upon some others being
 * defined.  I haven't figured out all the interactions here, so you may
 * have to experiment awhile to get everything to compile.  If you are
 * creating or using a shared library, you probably shouldn't touch this,
 * as it will affect the size of the structures, and this will cause bad
 * things to happen if the library and/or application ever change.
 */

/* Any features you will not be using can be undef'ed here */

/* GR-P, 0.96a: Set "*TRANSFORMS_SUPPORTED as default but allow user
 * to turn it off with HIPNG_NO_READ|WRITE_TRANSFORMS on the compile line,
 * then pick and choose which ones to define without having to edit this
 * file. It is safe to use the HIPNG_NO_READ|WRITE_TRANSFORMS
 * if you only want to have a png-compliant reader/writer but don't need
 * any of the extra transformations.  This saves about 80 kbytes in a
 * typical installation of the library. (HIPNG_NO_* form added in version
 * 1.0.1c, for consistency; HIPNG_*_TRANSFORMS_NOT_SUPPORTED deprecated in
 * 1.4.0)
 */

/* Ignore attempt to turn off both floating and fixed point support */
#if !defined(HIPNG_FLOATING_POINT_SUPPORTED) || \
    !defined(HIPNG_NO_FIXED_POINT_SUPPORTED)
#  define HIPNG_FIXED_POINT_SUPPORTED
#endif

#ifdef HIPNG_READ_SUPPORTED

/* HIPNG_READ_TRANSFORMS_NOT_SUPPORTED is deprecated. */
#if !defined(HIPNG_READ_TRANSFORMS_NOT_SUPPORTED) && \
      !defined(HIPNG_NO_READ_TRANSFORMS)
#  define HIPNG_READ_TRANSFORMS_SUPPORTED
#endif

#ifdef HIPNG_READ_TRANSFORMS_SUPPORTED
#  ifndef HIPNG_NO_READ_EXPAND
#    define HIPNG_READ_EXPAND_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_SHIFT
#    define HIPNG_READ_SHIFT_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_PACK
#    define HIPNG_READ_PACK_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_BGR
#    define HIPNG_READ_BGR_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_SWAP
#    define HIPNG_READ_SWAP_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_PACKSWAP
#    define HIPNG_READ_PACKSWAP_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_INVERT
#    define HIPNG_READ_INVERT_SUPPORTED
#  endif
#if 0 /* removed from libpng-1.4.0 */
#  ifndef HIPNG_NO_READ_DITHER
#    define HIPNG_READ_DITHER_SUPPORTED
#  endif
#endif /* 0 */
#  ifndef HIPNG_NO_READ_BACKGROUND
#    define HIPNG_READ_BACKGROUND_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_16_TO_8
#    define HIPNG_READ_16_TO_8_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_FILLER
#    define HIPNG_READ_FILLER_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_GAMMA
#    define HIPNG_READ_GAMMA_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_GRAY_TO_RGB
#    define HIPNG_READ_GRAY_TO_RGB_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_SWAP_ALPHA
#    define HIPNG_READ_SWAP_ALPHA_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_INVERT_ALPHA
#    define HIPNG_READ_INVERT_ALPHA_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_STRIP_ALPHA
#    define HIPNG_READ_STRIP_ALPHA_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_USER_TRANSFORM
#    define HIPNG_READ_USER_TRANSFORM_SUPPORTED
#  endif
#  ifndef HIPNG_NO_READ_RGB_TO_GRAY
#    define HIPNG_READ_RGB_TO_GRAY_SUPPORTED
#  endif
#endif /* HIPNG_READ_TRANSFORMS_SUPPORTED */

/* HIPNG_PROGRESSIVE_READ_NOT_SUPPORTED is deprecated. */
#if !defined(HIPNG_NO_PROGRESSIVE_READ) && \
 !defined(HIPNG_PROGRESSIVE_READ_NOT_SUPPORTED)  /* if you don't do progressive */
#  define HIPNG_PROGRESSIVE_READ_SUPPORTED     /* reading.  This is not talking */
#endif                               /* about interlacing capability!  You'll */
            /* still have interlacing unless you change the following define: */

#define HIPNG_READ_INTERLACING_SUPPORTED /* required for PNG-compliant decoders */

/* HIPNG_NO_SEQUENTIAL_READ_SUPPORTED is deprecated. */
#if !defined(HIPNG_NO_SEQUENTIAL_READ) && \
    !defined(HIPNG_SEQUENTIAL_READ_SUPPORTED) && \
    !defined(HIPNG_NO_SEQUENTIAL_READ_SUPPORTED)
#  define HIPNG_SEQUENTIAL_READ_SUPPORTED
#endif

#ifndef HIPNG_NO_READ_COMPOSITE_NODIV
#  ifndef HIPNG_NO_READ_COMPOSITED_NODIV  /* libpng-1.0.x misspelling */
#    define HIPNG_READ_COMPOSITE_NODIV_SUPPORTED   /* well tested on Intel, SGI */
#  endif
#endif

#if !defined(HIPNG_NO_GET_INT_32) || defined(HIPNG_READ_oFFS_SUPPORTED) || \
    defined(HIPNG_READ_pCAL_SUPPORTED)
#  ifndef HIPNG_GET_INT_32_SUPPORTED
#    define HIPNG_GET_INT_32_SUPPORTED
#  endif
#endif

#endif /* HIPNG_READ_SUPPORTED */

#ifdef HIPNG_WRITE_SUPPORTED

/* HIPNG_WRITE_TRANSFORMS_NOT_SUPPORTED is deprecated. */
#if !defined(HIPNG_WRITE_TRANSFORMS_NOT_SUPPORTED) && \
    !defined(HIPNG_NO_WRITE_TRANSFORMS)
#  define HIPNG_WRITE_TRANSFORMS_SUPPORTED
#endif

#ifdef HIPNG_WRITE_TRANSFORMS_SUPPORTED
#  ifndef HIPNG_NO_WRITE_SHIFT
#    define HIPNG_WRITE_SHIFT_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_PACK
#    define HIPNG_WRITE_PACK_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_BGR
#    define HIPNG_WRITE_BGR_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_SWAP
#    define HIPNG_WRITE_SWAP_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_PACKSWAP
#    define HIPNG_WRITE_PACKSWAP_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_INVERT
#    define HIPNG_WRITE_INVERT_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_FILLER
#    define HIPNG_WRITE_FILLER_SUPPORTED   /* same as WRITE_STRIP_ALPHA */
#  endif
#  ifndef HIPNG_NO_WRITE_SWAP_ALPHA
#    define HIPNG_WRITE_SWAP_ALPHA_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_INVERT_ALPHA
#    define HIPNG_WRITE_INVERT_ALPHA_SUPPORTED
#  endif
#  ifndef HIPNG_NO_WRITE_USER_TRANSFORM
#    define HIPNG_WRITE_USER_TRANSFORM_SUPPORTED
#  endif
#endif /* HIPNG_WRITE_TRANSFORMS_SUPPORTED */

#if !defined(HIPNG_NO_WRITE_INTERLACING_SUPPORTED) && \
    !defined(HIPNG_WRITE_INTERLACING_SUPPORTED)
    /* This is not required for PNG-compliant encoders, but can cause
     * trouble if left undefined
    */
#  define HIPNG_WRITE_INTERLACING_SUPPORTED
#endif

#if !defined(HIPNG_NO_WRITE_WEIGHTED_FILTER) && \
    !defined(HIPNG_WRITE_WEIGHTED_FILTER) && \
     defined(HIPNG_FLOATING_POINT_SUPPORTED)
#  define HIPNG_WRITE_WEIGHTED_FILTER_SUPPORTED
#endif

#ifndef HIPNG_NO_WRITE_FLUSH
#  define HIPNG_WRITE_FLUSH_SUPPORTED
#endif

#if !defined(HIPNG_NO_SAVE_INT_32) || defined(HIPNG_WRITE_oFFS_SUPPORTED) || \
    defined(HIPNG_WRITE_pCAL_SUPPORTED)
#  ifndef HIPNG_SAVE_INT_32_SUPPORTED
#    define HIPNG_SAVE_INT_32_SUPPORTED
#  endif
#endif

#endif /* HIPNG_WRITE_SUPPORTED */

#define HIPNG_NO_ERROR_NUMBERS

#if defined(HIPNG_READ_USER_TRANSFORM_SUPPORTED) || \
    defined(HIPNG_WRITE_USER_TRANSFORM_SUPPORTED)
#  ifndef HIPNG_NO_USER_TRANSFORM_PTR
#    define HIPNG_USER_TRANSFORM_PTR_SUPPORTED
#  endif
#endif

#if defined(HIPNG_STDIO_SUPPORTED) && !defined(HIPNG_TIME_RFC1123_SUPPORTED)
#  define HIPNG_TIME_RFC1123_SUPPORTED
#endif

/* This adds extra functions in pngget.c for accessing data from the
 * info pointer (added in version 0.99)
 * hipng_get_image_width()
 * hipng_get_image_height()
 * hipng_get_bit_depth()
 * hipng_get_color_type()
 * hipng_get_compression_type()
 * hipng_get_filter_type()
 * hipng_get_interlace_type()
 * hipng_get_pixel_aspect_ratio()
 * hipng_get_pixels_per_meter()
 * hipng_get_x_offset_pixels()
 * hipng_get_y_offset_pixels()
 * hipng_get_x_offset_microns()
 * hipng_get_y_offset_microns()
 */
#if !defined(HIPNG_NO_EASY_ACCESS) && !defined(HIPNG_EASY_ACCESS_SUPPORTED)
#  define HIPNG_EASY_ACCESS_SUPPORTED
#endif

/* Added at libpng-1.2.0 */
#if !defined(HIPNG_NO_USER_MEM) && !defined(HIPNG_USER_MEM_SUPPORTED)
#  define HIPNG_USER_MEM_SUPPORTED
#endif

/* Added at libpng-1.2.6 */
#ifndef HIPNG_SET_USER_LIMITS_SUPPORTED
#  ifndef HIPNG_NO_SET_USER_LIMITS
#    define HIPNG_SET_USER_LIMITS_SUPPORTED
#  endif
#endif

/* Added at libpng-1.0.16 and 1.2.6.  To accept all valid PNGs no matter
 * how large, set these limits to 0x7fffffffL
 */
#ifndef HIPNG_USER_WIDTH_MAX
#  define HIPNG_USER_WIDTH_MAX 1000000L
#endif
#ifndef HIPNG_USER_HEIGHT_MAX
#  define HIPNG_USER_HEIGHT_MAX 1000000L
#endif

/* Added at libpng-1.4.0 */
#ifndef HIPNG_USER_CHUNK_CACHE_MAX
#  define HIPNG_USER_CHUNK_CACHE_MAX 0x7fffffffL
#endif

/* Added at libpng-1.4.0 */
#if !defined(HIPNG_NO_IO_STATE) && !defined(HIPNG_IO_STATE_SUPPORTED)
#  define HIPNG_IO_STATE_SUPPORTED
#endif

#ifndef HIPNG_LITERAL_SHARP
#  define HIPNG_LITERAL_SHARP 0x23
#endif
#ifndef HIPNG_LITERAL_LEFT_SQUARE_BRACKET
#  define HIPNG_LITERAL_LEFT_SQUARE_BRACKET 0x5b
#endif
#ifndef HIPNG_LITERAL_RIGHT_SQUARE_BRACKET
#  define HIPNG_LITERAL_RIGHT_SQUARE_BRACKET 0x5d
#endif
#ifndef HIPNG_STRING_NEWLINE
#define HIPNG_STRING_NEWLINE "\n"
#endif

/* These are currently experimental features, define them if you want */

/* Very little testing */
/*
#ifdef HIPNG_READ_SUPPORTED
#  ifndef HIPNG_READ_16_TO_8_ACCURATE_SCALE_SUPPORTED
#    define HIPNG_READ_16_TO_8_ACCURATE_SCALE_SUPPORTED
#  endif
#endif
*/

/* This is only for PowerPC big-endian and 680x0 systems */
/* some testing */
/*
#ifndef HIPNG_READ_BIG_ENDIAN_SUPPORTED
#  define HIPNG_READ_BIG_ENDIAN_SUPPORTED
#endif
*/

#if !defined(HIPNG_NO_USE_READ_MACROS) && !defined(HIPNG_USE_READ_MACROS)
#  define HIPNG_USE_READ_MACROS
#endif

/* Buggy compilers (e.g., gcc 2.7.2.2) need HIPNG_NO_POINTER_INDEXING */

#if !defined(HIPNG_NO_POINTER_INDEXING) && \
    !defined(HIPNG_POINTER_INDEXING_SUPPORTED)
#  define HIPNG_POINTER_INDEXING_SUPPORTED
#endif


/* Any chunks you are not interested in, you can undef here.  The
 * ones that allocate memory may be expecially important (hIST,
 * tEXt, zTXt, tRNS, pCAL).  Others will just save time and make hipng_info
 * a bit smaller.
 */

/* The size of the hipng_text structure changed in libpng-1.0.6 when
 * iTXt support was added.  iTXt support was turned off by default through
 * libpng-1.2.x, to support old apps that malloc the hipng_text structure
 * instead of calling hipng_set_text() and letting libpng malloc it.  It
 * was turned on by default in libpng-1.4.0.
 */

/* HIPNG_READ_ANCILLARY_CHUNKS_NOT_SUPPORTED is deprecated. */
#if defined(HIPNG_READ_SUPPORTED) && \
    !defined(HIPNG_READ_ANCILLARY_CHUNKS_NOT_SUPPORTED) && \
    !defined(HIPNG_NO_READ_ANCILLARY_CHUNKS)
#  define HIPNG_READ_ANCILLARY_CHUNKS_SUPPORTED
#endif

/* HIPNG_WRITE_ANCILLARY_CHUNKS_NOT_SUPPORTED is deprecated. */
#if defined(HIPNG_WRITE_SUPPORTED) && \
    !defined(HIPNG_WRITE_ANCILLARY_CHUNKS_NOT_SUPPORTED) && \
    !defined(HIPNG_NO_WRITE_ANCILLARY_CHUNKS)
#  define HIPNG_WRITE_ANCILLARY_CHUNKS_SUPPORTED
#endif

#ifdef HIPNG_READ_ANCILLARY_CHUNKS_SUPPORTED

#ifdef HIPNG_NO_READ_TEXT
#  define HIPNG_NO_READ_iTXt
#  define HIPNG_NO_READ_tEXt
#  define HIPNG_NO_READ_zTXt
#endif

#ifndef HIPNG_NO_READ_bKGD
#  define HIPNG_READ_bKGD_SUPPORTED
#  define HIPNG_bKGD_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_cHRM
#  define HIPNG_READ_cHRM_SUPPORTED
#  define HIPNG_cHRM_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_gAMA
#  define HIPNG_READ_gAMA_SUPPORTED
#  define HIPNG_gAMA_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_hIST
#  define HIPNG_READ_hIST_SUPPORTED
#  define HIPNG_hIST_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_iCCP
#  define HIPNG_READ_iCCP_SUPPORTED
#  define HIPNG_iCCP_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_iTXt
#  ifndef HIPNG_READ_iTXt_SUPPORTED
#    define HIPNG_READ_iTXt_SUPPORTED
#  endif
#  ifndef HIPNG_iTXt_SUPPORTED
#    define HIPNG_iTXt_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_READ_oFFs
#  define HIPNG_READ_oFFs_SUPPORTED
#  define HIPNG_oFFs_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_pCAL
#  define HIPNG_READ_pCAL_SUPPORTED
#  define HIPNG_pCAL_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_sCAL
#  define HIPNG_READ_sCAL_SUPPORTED
#  define HIPNG_sCAL_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_pHYs
#  define HIPNG_READ_pHYs_SUPPORTED
#  define HIPNG_pHYs_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_sBIT
#  define HIPNG_READ_sBIT_SUPPORTED
#  define HIPNG_sBIT_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_sPLT
#  define HIPNG_READ_sPLT_SUPPORTED
#  define HIPNG_sPLT_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_sRGB
#  define HIPNG_READ_sRGB_SUPPORTED
#  define HIPNG_sRGB_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_tEXt
#  define HIPNG_READ_tEXt_SUPPORTED
#  define HIPNG_tEXt_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_tIME
#  define HIPNG_READ_tIME_SUPPORTED
#  define HIPNG_tIME_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_tRNS
#  define HIPNG_READ_tRNS_SUPPORTED
#  define HIPNG_tRNS_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_zTXt
#  define HIPNG_READ_zTXt_SUPPORTED
#  define HIPNG_zTXt_SUPPORTED
#endif
#ifndef HIPNG_NO_READ_OPT_PLTE
#  define HIPNG_READ_OPT_PLTE_SUPPORTED /* only affects support of the */
#endif                      /* optional PLTE chunk in RGB and RGBA images */
#if defined(HIPNG_READ_iTXt_SUPPORTED) || defined(HIPNG_READ_tEXt_SUPPORTED) || \
    defined(HIPNG_READ_zTXt_SUPPORTED)
#  define HIPNG_READ_TEXT_SUPPORTED
#  define HIPNG_TEXT_SUPPORTED
#endif

#endif /* HIPNG_READ_ANCILLARY_CHUNKS_SUPPORTED */

#ifndef HIPNG_NO_READ_UNKNOWN_CHUNKS
#  define HIPNG_READ_UNKNOWN_CHUNKS_SUPPORTED
#  ifndef HIPNG_UNKNOWN_CHUNKS_SUPPORTED
#    define HIPNG_UNKNOWN_CHUNKS_SUPPORTED
#  endif
#endif
#if !defined(HIPNG_NO_READ_USER_CHUNKS) && \
     defined(HIPNG_READ_UNKNOWN_CHUNKS_SUPPORTED)
#  define HIPNG_READ_USER_CHUNKS_SUPPORTED
#  define HIPNG_USER_CHUNKS_SUPPORTED
#  ifdef HIPNG_NO_READ_UNKNOWN_CHUNKS
#    undef HIPNG_NO_READ_UNKNOWN_CHUNKS
#  endif
#  ifdef HIPNG_NO_HANDLE_AS_UNKNOWN
#    undef HIPNG_NO_HANDLE_AS_UNKNOWN
#  endif
#endif
#ifndef HIPNG_NO_HANDLE_AS_UNKNOWN
#  ifndef HIPNG_HANDLE_AS_UNKNOWN_SUPPORTED
#    define HIPNG_HANDLE_AS_UNKNOWN_SUPPORTED
#  endif
#endif

#ifdef HIPNG_WRITE_SUPPORTED
#ifdef HIPNG_WRITE_ANCILLARY_CHUNKS_SUPPORTED

#ifdef HIPNG_NO_WRITE_TEXT
#  define HIPNG_NO_WRITE_iTXt
#  define HIPNG_NO_WRITE_tEXt
#  define HIPNG_NO_WRITE_zTXt
#endif
#ifndef HIPNG_NO_WRITE_bKGD
#  define HIPNG_WRITE_bKGD_SUPPORTED
#  ifndef HIPNG_bKGD_SUPPORTED
#    define HIPNG_bKGD_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_cHRM
#  define HIPNG_WRITE_cHRM_SUPPORTED
#  ifndef HIPNG_cHRM_SUPPORTED
#    define HIPNG_cHRM_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_gAMA
#  define HIPNG_WRITE_gAMA_SUPPORTED
#  ifndef HIPNG_gAMA_SUPPORTED
#    define HIPNG_gAMA_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_hIST
#  define HIPNG_WRITE_hIST_SUPPORTED
#  ifndef HIPNG_hIST_SUPPORTED
#    define HIPNG_hIST_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_iCCP
#  define HIPNG_WRITE_iCCP_SUPPORTED
#  ifndef HIPNG_iCCP_SUPPORTED
#    define HIPNG_iCCP_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_iTXt
#  ifndef HIPNG_WRITE_iTXt_SUPPORTED
#    define HIPNG_WRITE_iTXt_SUPPORTED
#  endif
#  ifndef HIPNG_iTXt_SUPPORTED
#    define HIPNG_iTXt_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_oFFs
#  define HIPNG_WRITE_oFFs_SUPPORTED
#  ifndef HIPNG_oFFs_SUPPORTED
#    define HIPNG_oFFs_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_pCAL
#  define HIPNG_WRITE_pCAL_SUPPORTED
#  ifndef HIPNG_pCAL_SUPPORTED
#    define HIPNG_pCAL_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_sCAL
#  define HIPNG_WRITE_sCAL_SUPPORTED
#  ifndef HIPNG_sCAL_SUPPORTED
#    define HIPNG_sCAL_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_pHYs
#  define HIPNG_WRITE_pHYs_SUPPORTED
#  ifndef HIPNG_pHYs_SUPPORTED
#    define HIPNG_pHYs_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_sBIT
#  define HIPNG_WRITE_sBIT_SUPPORTED
#  ifndef HIPNG_sBIT_SUPPORTED
#    define HIPNG_sBIT_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_sPLT
#  define HIPNG_WRITE_sPLT_SUPPORTED
#  ifndef HIPNG_sPLT_SUPPORTED
#    define HIPNG_sPLT_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_sRGB
#  define HIPNG_WRITE_sRGB_SUPPORTED
#  ifndef HIPNG_sRGB_SUPPORTED
#    define HIPNG_sRGB_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_tEXt
#  define HIPNG_WRITE_tEXt_SUPPORTED
#  ifndef HIPNG_tEXt_SUPPORTED
#    define HIPNG_tEXt_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_tIME
#  define HIPNG_WRITE_tIME_SUPPORTED
#  ifndef HIPNG_tIME_SUPPORTED
#    define HIPNG_tIME_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_tRNS
#  define HIPNG_WRITE_tRNS_SUPPORTED
#  ifndef HIPNG_tRNS_SUPPORTED
#    define HIPNG_tRNS_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_WRITE_zTXt
#  define HIPNG_WRITE_zTXt_SUPPORTED
#  ifndef HIPNG_zTXt_SUPPORTED
#    define HIPNG_zTXt_SUPPORTED
#  endif
#endif
#if defined(HIPNG_WRITE_iTXt_SUPPORTED) || defined(HIPNG_WRITE_tEXt_SUPPORTED) || \
    defined(HIPNG_WRITE_zTXt_SUPPORTED)
#  define HIPNG_WRITE_TEXT_SUPPORTED
#  ifndef HIPNG_TEXT_SUPPORTED
#    define HIPNG_TEXT_SUPPORTED
#  endif
#endif

#ifdef HIPNG_WRITE_tIME_SUPPORTED
#  ifndef HIPNG_NO_CONVERT_tIME
#    ifndef _WIN32_WCE
/*   The "tm" structure is not supported on WindowsCE */
#      ifndef HIPNG_CONVERT_tIME_SUPPORTED
#        define HIPNG_CONVERT_tIME_SUPPORTED
#      endif
#   endif
#  endif
#endif

#endif /* HIPNG_WRITE_ANCILLARY_CHUNKS_SUPPORTED */

#if !defined(HIPNG_NO_WRITE_FILTER) && !defined(HIPNG_WRITE_FILTER_SUPPORTED)
#  define HIPNG_WRITE_FILTER_SUPPORTED
#endif

#ifndef HIPNG_NO_WRITE_UNKNOWN_CHUNKS
#  define HIPNG_WRITE_UNKNOWN_CHUNKS_SUPPORTED
#  ifndef HIPNG_UNKNOWN_CHUNKS_SUPPORTED
#    define HIPNG_UNKNOWN_CHUNKS_SUPPORTED
#  endif
#endif
#ifndef HIPNG_NO_HANDLE_AS_UNKNOWN
#  ifndef HIPNG_HANDLE_AS_UNKNOWN_SUPPORTED
#    define HIPNG_HANDLE_AS_UNKNOWN_SUPPORTED
#  endif
#endif
#endif /* HIPNG_WRITE_SUPPORTED */

/* Turn this off to disable hipng_read_png() and
 * hipng_write_png() and leave the row_pointers member
 * out of the info structure.
 */
#ifndef HIPNG_NO_INFO_IMAGE
#  define HIPNG_INFO_IMAGE_SUPPORTED
#endif

/* Need the time information for converting tIME chunks */
#ifdef HIPNG_CONVERT_tIME_SUPPORTED
     /* "time.h" functions are not supported on WindowsCE */
#    include <time.h>
#endif

/* Some typedefs to get us started.  These should be safe on most of the
 * common platforms.  The typedefs should be at least as large as the
 * numbers suggest (a hipng_uint_32 must be at least 32 bits long), but they
 * don't have to be exactly that size.  Some compilers dislike passing
 * unsigned shorts as function parameters, so you may be better off using
 * unsigned int for hipng_uint_16.
 */

#if defined(INT_MAX) && (INT_MAX > 0x7ffffffeL)
typedef unsigned int hipng_uint_32;
typedef int hipng_int_32;
#else
typedef unsigned long hipng_uint_32;
typedef long hipng_int_32;
#endif
typedef unsigned short hipng_uint_16;
typedef short hipng_int_16;
typedef unsigned char hipng_byte;

#ifdef HIPNG_NO_SIZE_T
   typedef unsigned int hipng_size_t;
#else
   typedef size_t hipng_size_t;
#endif
#define hipng_sizeof(x) sizeof(x)

/* The following is needed for medium model support.  It cannot be in the
 * pngpriv.h header.  Needs modification for other compilers besides
 * MSC.  Model independent support declares all arrays and pointers to be
 * large using the far keyword.  The zlib version used must also support
 * model independent data.  As of version zlib 1.0.4, the necessary changes
 * have been made in zlib.  The USE_FAR_KEYWORD define triggers other
 * changes that are needed. (Tim Wegner)
 */

/* Separate compiler dependencies (problem here is that zlib.h always
 * defines FAR. (SJT)
 */
#ifdef __BORLANDC__
#  if defined(__LARGE__) || defined(__HUGE__) || defined(__COMPACT__)
#    define LDATA 1
#  else
#    define LDATA 0
#  endif
   /* GRR:  why is Cygwin in here?  Cygwin is not Borland C... */
#  if !defined(__WIN32__) && !defined(__FLAT__) && !defined(__CYGWIN__)
#    define HIPNG_MAX_MALLOC_64K
#    if (LDATA != 1)
#      ifndef FAR
#        define FAR __far
#      endif
#      define USE_FAR_KEYWORD
#    endif   /* LDATA != 1 */
     /* Possibly useful for moving data out of default segment.
      * Uncomment it if you want. Could also define FARDATA as
      * const if your compiler supports it. (SJT)
#    define FARDATA FAR
      */
#  endif  /* __WIN32__, __FLAT__, __CYGWIN__ */
#endif   /* __BORLANDC__ */


/* Suggest testing for specific compiler first before testing for
 * FAR.  The Watcom compiler defines both __MEDIUM__ and M_I86MM,
 * making reliance oncertain keywords suspect. (SJT)
 */

/* MSC Medium model */
#ifdef FAR
#  ifdef M_I86MM
#    define USE_FAR_KEYWORD
#    define FARDATA FAR
#    include <dos.h>
#  endif
#endif

/* SJT: default case */
#ifndef FAR
#  define FAR
#endif

/* At this point FAR is always defined */
#ifndef FARDATA
#  define FARDATA
#endif

/* Typedef for floating-point numbers that are converted
   to fixed-point with a multiple of 100,000, e.g., int_gamma */
typedef hipng_int_32 hipng_fixed_point;

/* Add typedefs for pointers */
typedef void            FAR * hipng_voidp;
typedef hipng_byte        FAR * hipng_bytep;
typedef hipng_uint_32     FAR * hipng_uint_32p;
typedef hipng_int_32      FAR * hipng_int_32p;
typedef hipng_uint_16     FAR * hipng_uint_16p;
typedef hipng_int_16      FAR * hipng_int_16p;
typedef HIPNG_CONST char  FAR * hipng_const_charp;
typedef char            FAR * hipng_charp;
typedef hipng_fixed_point FAR * hipng_fixed_point_p;

#ifndef HIPNG_NO_STDIO
typedef FILE                * hipng_FILE_p;
#endif

#ifdef HIPNG_FLOATING_POINT_SUPPORTED
typedef double          FAR * hipng_doublep;
#endif

/* Pointers to pointers; i.e. arrays */
typedef hipng_byte        FAR * FAR * hipng_bytepp;
typedef hipng_uint_32     FAR * FAR * hipng_uint_32pp;
typedef hipng_int_32      FAR * FAR * hipng_int_32pp;
typedef hipng_uint_16     FAR * FAR * hipng_uint_16pp;
typedef hipng_int_16      FAR * FAR * hipng_int_16pp;
typedef HIPNG_CONST char  FAR * FAR * hipng_const_charpp;
typedef char            FAR * FAR * hipng_charpp;
typedef hipng_fixed_point FAR * FAR * hipng_fixed_point_pp;
#ifdef HIPNG_FLOATING_POINT_SUPPORTED
typedef double          FAR * FAR * hipng_doublepp;
#endif

/* Pointers to pointers to pointers; i.e., pointer to array */
typedef char            FAR * FAR * FAR * hipng_charppp;

/* Define HIPNG_BUILD_DLL if the module being built is a Windows
 * LIBPNG DLL.
 *
 * Define HIPNG_USE_DLL if you want to *link* to the Windows LIBPNG DLL.
 * It is equivalent to Microsoft predefined macro _DLL that is
 * automatically defined when you compile using the share
 * version of the CRT (C Run-Time library)
 *
 * The cygwin mods make this behavior a little different:
 * Define HIPNG_BUILD_DLL if you are building a dll for use with cygwin
 * Define HIPNG_STATIC if you are building a static library for use with cygwin,
 *   -or- if you are building an application that you want to link to the
 *   static library.
 * HIPNG_USE_DLL is defined by default (no user action needed) unless one of
 *   the other flags is defined.
 */

#if !defined(HIPNG_DLL) && (defined(HIPNG_BUILD_DLL) || defined(HIPNG_USE_DLL))
#  define HIPNG_DLL
#endif

#ifdef __CYGWIN__
#  undef PNGAPI
#  define PNGAPI __cdecl
#  undef HIPNG_IMPEXP
#  define HIPNG_IMPEXP
#endif

#define HIPNG_USE_LOCAL_ARRAYS /* Not used in libpng, defined for legacy apps */

/* If you define PNGAPI, e.g., with compiler option "-DPNGAPI=__stdcall",
 * you may get warnings regarding the linkage of hipng_zalloc and hipng_zfree.
 * Don't ignore those warnings; you must also reset the default calling
 * convention in your compiler to match your PNGAPI, and you must build
 * zlib and your applications the same way you build libpng.
 */

#if defined(__MINGW32__) && !defined(HIPNG_MODULEDEF)
#  ifndef HIPNG_NO_MODULEDEF
#    define HIPNG_NO_MODULEDEF
#  endif
#endif

#if !defined(HIPNG_IMPEXP) && defined(HIPNG_BUILD_DLL) && !defined(HIPNG_NO_MODULEDEF)
#  define HIPNG_IMPEXP
#endif

#if defined(HIPNG_DLL) || defined(_DLL) || defined(__DLL__ ) || \
    (( defined(_Windows) || defined(_WINDOWS) || \
       defined(WIN32) || defined(_WIN32) || defined(__WIN32__) ))

#  ifndef PNGAPI
#     if defined(__GNUC__) || (defined (_MSC_VER) && (_MSC_VER >= 800))
#        define PNGAPI __cdecl
#     else
#        define PNGAPI _cdecl
#     endif
#  endif

#  if !defined(HIPNG_IMPEXP) && (!defined(HIPNG_DLL) || \
       0 /* WINCOMPILER_WITH_NO_SUPPORT_FOR_DECLIMPEXP */)
#     define HIPNG_IMPEXP
#  endif

#  ifndef HIPNG_IMPEXP

#    define HIPNG_EXPORT_TYPE1(type,symbol)  HIPNG_IMPEXP type PNGAPI symbol
#    define HIPNG_EXPORT_TYPE2(type,symbol)  type HIPNG_IMPEXP PNGAPI symbol

     /* Borland/Microsoft */
#    if defined(_MSC_VER) || defined(__BORLANDC__)
#      if (_MSC_VER >= 800) || (__BORLANDC__ >= 0x500)
#         define HIPNG_EXPORT HIPNG_EXPORT_TYPE1
#      else
#         define HIPNG_EXPORT HIPNG_EXPORT_TYPE2
#         ifdef HIPNG_BUILD_DLL
#            define HIPNG_IMPEXP __export
#         else
#            define HIPNG_IMPEXP /*__import */ /* doesn't exist AFAIK in VC++ */
#         endif                              /* Exists in Borland C++ for
                                                C++ classes (== huge) */
#      endif
#    endif

#    ifndef HIPNG_IMPEXP
#      ifdef HIPNG_BUILD_DLL
#        define HIPNG_IMPEXP __declspec(dllexport)
#      else
#        define HIPNG_IMPEXP __declspec(dllimport)
#      endif
#    endif
#  endif  /* HIPNG_IMPEXP */
#else /* !(DLL || non-cygwin WINDOWS) */
#   if (defined(__IBMC__) || defined(__IBMCPP__)) && defined(__OS2__)
#     ifndef PNGAPI
#       define PNGAPI _System
#     endif
#   else
#     if 0 /* ... other platforms, with other meanings */
#     endif
#   endif
#endif

#ifndef PNGAPI
#  define PNGAPI
#endif
#ifndef HIPNG_IMPEXP
#  define HIPNG_IMPEXP
#endif

#ifdef HIPNG_BUILDSYMS
#  ifndef HIPNG_EXPORT
#    define HIPNG_EXPORT(type,symbol) HIPNG_FUNCTION_EXPORT symbol END
#  endif
#endif

#ifndef HIPNG_EXPORT
#  define HIPNG_EXPORT(type,symbol) HIPNG_IMPEXP type PNGAPI symbol
#endif

/* Support for compiler specific function attributes.  These are used
 * so that where compiler support is available incorrect use of API
 * functions in png.h will generate compiler warnings.
 *
 * Added at libpng-1.2.41.
 */

#ifndef HIPNG_NO_PEDANTIC_WARNINGS
#  ifndef HIPNG_PEDANTIC_WARNINGS_SUPPORTED
#    define HIPNG_PEDANTIC_WARNINGS_SUPPORTED
#  endif
#endif

#ifdef HIPNG_PEDANTIC_WARNINGS_SUPPORTED
/* Support for compiler specific function attributes.  These are used
 * so that where compiler support is available incorrect use of API
 * functions in png.h will generate compiler warnings.  Added at libpng
 * version 1.2.41.
 */
#  ifdef __GNUC__
#    ifndef HIPNG_USE_RESULT
#      define HIPNG_USE_RESULT __attribute__((__warn_unused_result__))
#    endif
#    ifndef HIPNG_NORETURN
#      define HIPNG_NORETURN   __attribute__((__noreturn__))
#    endif
#    ifndef HIPNG_ALLOCATED
#      define HIPNG_ALLOCATED  __attribute__((__malloc__))
#    endif

    /* This specifically protects structure members that should only be
     * accessed from within the library, therefore should be empty during
     * a library build.
     */
#    ifndef HIPNG_DEPRECATED
#      define HIPNG_DEPRECATED __attribute__((__deprecated__))
#    endif
#    ifndef HIPNG_DEPSTRUCT
#      define HIPNG_DEPSTRUCT  __attribute__((__deprecated__))
#    endif
#    ifndef HIPNG_PRIVATE
#      if 0 /* Doesn't work so we use deprecated instead*/
#        define HIPNG_PRIVATE \
          __attribute__((warning("This function is not exported by libpng.")))
#      else
#        define HIPNG_PRIVATE \
          __attribute__((__deprecated__))
#      endif
#    endif /* HIPNG_PRIVATE */
#  endif /* __GNUC__ */
#endif /* HIPNG_PEDANTIC_WARNINGS */

#ifndef HIPNG_DEPRECATED
#  define HIPNG_DEPRECATED  /* Use of this function is deprecated */
#endif
#ifndef HIPNG_USE_RESULT
#  define HIPNG_USE_RESULT  /* The result of this function must be checked */
#endif
#ifndef HIPNG_NORETURN
#  define HIPNG_NORETURN    /* This function does not return */
#endif
#ifndef HIPNG_ALLOCATED
#  define HIPNG_ALLOCATED   /* The result of the function is new memory */
#endif
#ifndef HIPNG_DEPSTRUCT
#  define HIPNG_DEPSTRUCT   /* Access to this struct member is deprecated */
#endif
#ifndef HIPNG_PRIVATE
#  define HIPNG_PRIVATE     /* This is a private libpng function */
#endif

/* Users may want to use these so they are not private.  Any library
 * functions that are passed far data must be model-independent.
 */

/* memory model/platform independent fns */
#ifndef HIPNG_ABORT
#  ifdef _WINDOWS_
#     define HIPNG_ABORT() ExitProcess(0)
#  else
#     define HIPNG_ABORT() abort()
#  endif
#endif

#ifdef USE_FAR_KEYWORD
/* Use this to make far-to-near assignments */
#  define CHECK   1
#  define NOCHECK 0
#  define CVT_PTR(ptr) (hipng_far_to_near(hipng_ptr,ptr,CHECK))
#  define CVT_PTR_NOCHECK(ptr) (hipng_far_to_near(hipng_ptr,ptr,NOCHECK))
#  define hipng_strcpy  _fstrcpy
#  define hipng_strncpy _fstrncpy   /* Added to v 1.2.6 */
#  define hipng_strlen  _fstrlen
#  define hipng_memcmp  _fmemcmp    /* SJT: added */
#  define hipng_memcpy  _fmemcpy
#  define hipng_memset  _fmemset
#  define hipng_sprintf sprintf
#else
#  ifdef _WINDOWS_  /* Favor Windows over C runtime fns */
#    define CVT_PTR(ptr)         (ptr)
#    define CVT_PTR_NOCHECK(ptr) (ptr)
#    define hipng_strcpy  lstrcpyA
#    define hipng_strncpy lstrcpynA
#    define hipng_strlen  lstrlenA
#    define hipng_memcmp  memcmp
#    define hipng_memcpy  CopyMemory
#    define hipng_memset  memset
#    define hipng_sprintf wsprintfA
#  else
#    define CVT_PTR(ptr)         (ptr)
#    define CVT_PTR_NOCHECK(ptr) (ptr)
#    define hipng_strcpy  strcpy
#    define hipng_strncpy strncpy     /* Added to v 1.2.6 */
#    define hipng_strlen  strlen
#    define hipng_memcmp  memcmp      /* SJT: added */
#    define hipng_memcpy  memcpy
#    define hipng_memset  memset
#    define hipng_sprintf sprintf
#    ifndef HIPNG_NO_SNPRINTF
#      ifdef _MSC_VER
#        define hipng_snprintf _snprintf   /* Added to v 1.2.19 */
#        define hipng_snprintf2 _snprintf
#        define hipng_snprintf6 _snprintf
#      else
#        define hipng_snprintf snprintf   /* Added to v 1.2.19 */
#        define hipng_snprintf2 snprintf
#        define hipng_snprintf6 snprintf
#      endif
#    else
       /* You don't have or don't want to use snprintf().  Caution: Using
        * sprintf instead of snprintf exposes your application to accidental
        * or malevolent buffer overflows.  If you don't have snprintf()
        * as a general rule you should provide one (you can get one from
        * Portable OpenSSH).
        */
#      define hipng_snprintf(s1,n,fmt,x1) sprintf(s1,fmt,x1)
#      define hipng_snprintf2(s1,n,fmt,x1,x2) sprintf(s1,fmt,x1,x2)
#      define hipng_snprintf6(s1,n,fmt,x1,x2,x3,x4,x5,x6) \
          sprintf(s1,fmt,x1,x2,x3,x4,x5,x6)
#    endif
#  endif
#endif

/* hipng_alloc_size_t is guaranteed to be no smaller than hipng_size_t,
 * and no smaller than hipng_uint_32.  Casts from hipng_size_t or hipng_uint_32
 * to hipng_alloc_size_t are not necessary; in fact, it is recommended
 * not to use them at all so that the compiler can complain when something
 * turns out to be problematic.
 * Casts in the other direction (from hipng_alloc_size_t to hipng_size_t or
 * hipng_uint_32) should be explicitly applied; however, we do not expect
 * to encounter practical situations that require such conversions.
 */
#if defined(__TURBOC__) && !defined(__FLAT__)
#  define  hipng_mem_alloc farmalloc
#  define  hipng_mem_free  farfree
   typedef unsigned long hipng_alloc_size_t;
#else
#  if defined(_MSC_VER) && defined(MAXSEG_64K)
#    define  hipng_mem_alloc(s) halloc(s, 1)
#    define  hipng_mem_free     hfree
     typedef unsigned long    hipng_alloc_size_t;
#  else
#    if defined(_WINDOWS_) && (!defined(INT_MAX) || INT_MAX <= 0x7ffffffeL)
#      define  hipng_mem_alloc(s) HeapAlloc(GetProcessHeap(), 0, s)
#      define  hipng_mem_free(p)  HeapFree(GetProcessHeap(), 0, p)
       typedef DWORD            hipng_alloc_size_t;
#    else
#      define  hipng_mem_alloc malloc
#      define  hipng_mem_free  free
       typedef hipng_size_t    hipng_alloc_size_t;
#    endif
#  endif
#endif
/* End of memory model/platform independent support */

/* Just a little check that someone hasn't tried to define something
 * contradictory.
 */
#if (HIPNG_ZBUF_SIZE > 65536L) && defined(HIPNG_MAX_MALLOC_64K)
#  undef HIPNG_ZBUF_SIZE
#  define HIPNG_ZBUF_SIZE 65536L
#endif


/* Added at libpng-1.2.8 */
#endif /* HIPNG_VERSION_INFO_ONLY */

#ifndef HIPNG_ACCELERATE
#define HIPNG_ACCELERATE
#endif

#endif /* PNGCONF_H */
