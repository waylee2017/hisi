/***************************************************************************/
/*                                                                         */
/*  ftmemory.h                                                             */
/*                                                                         */
/*    The FreeType memory management macros (specification).               */
/*                                                                         */
/*  Copyright 1996-2001, 2002, 2004, 2005, 2006 by                         */
/*  David Turner, Robert Wilhelm, and Werner Lemberg                       */
/*                                                                         */
/*  This file is part of the FreeType project, and may only be used,       */
/*  modified, and distributed under the terms of the FreeType project      */
/*  license, LICENSE.TXT.  By continuing to use, modify, or distribute     */
/*  this file you indicate that you have read the license and              */
/*  understand and accept it fully.                                        */
/*                                                                         */
/***************************************************************************/


#ifndef __FTMEMORY_H__
#define __FTMEMORY_H__


#include <ft2build.h>
#include FT_CONFIG_CONFIG_H
#include FT_TYPES_H


FT_BEGIN_HEADER


  /*************************************************************************/
  /*                                                                       */
  /* <Macro>                                                               */
  /*    FT_SET_ERROR                                                       */
  /*                                                                       */
  /* <Description>                                                         */
  /*    This macro is used to set an implicit `error' variable to a given  */
  /*    expression's value (usually a function call), and convert it to a  */
  /*    boolean which is set whenever the value is != 0.                   */
  /*                                                                       */
#undef  FT_SET_ERROR
#define FT_SET_ERROR( expression ) \
          ( ( error = (expression) ) != 0 )



  /*************************************************************************/
  /*************************************************************************/
  /*************************************************************************/
  /****                                                                 ****/
  /****                                                                 ****/
  /****                           M E M O R Y                           ****/
  /****                                                                 ****/
  /****                                                                 ****/
  /*************************************************************************/
  /*************************************************************************/
  /*************************************************************************/


  /*
   *  C++ refuses to handle statements like p = (void*)anything; where `p'
   *  is a typed pointer.  Since we don't have a `typeof' operator in
   *  standard C++, we have to use ugly casts.
   */

#ifdef __cplusplus
#define FT_ASSIGNP( p, val )  *((void**)&(p)) = (val)
#else
#define FT_ASSIGNP( p, val )  (p) = (val)
#endif



#define FT_DEBUG_INNER( exp )       (exp)


  /*
   *  The allocation functions return a pointer, and the error code
   *  is written to through the `p_error' parameter.  See below for
   *  for documentation.
   */

  FT_BASE( FT_Pointer )
  ft_mem_alloc( FT_Memory  memory,
                FT_Long    size,
                FT_Error  *p_error );

  FT_BASE( FT_Pointer )
  ft_mem_qalloc( FT_Memory  memory,
                 FT_Long    size,
                 FT_Error  *p_error );

  FT_BASE( FT_Pointer )
  ft_mem_realloc( FT_Memory  memory,
                  FT_Long    item_size,
                  FT_Long    cur_count,
                  FT_Long    new_count,
                  void*      block,
                  FT_Error  *p_error );

  FT_BASE( FT_Pointer )
  ft_mem_qrealloc( FT_Memory  memory,
                   FT_Long    item_size,
                   FT_Long    cur_count,
                   FT_Long    new_count,
                   void*      block,
                   FT_Error  *p_error );

  FT_BASE( void )
  ft_mem_free( FT_Memory    memory,
               const void*  P );


#define FT_MEM_ALLOC( ptr, size )                                         \
          FT_ASSIGNP( ptr, ft_mem_alloc( memory, (size), &error ) )

#define FT_MEM_FREE( ptr )                \
          FT_BEGIN_STMNT                  \
            ft_mem_free( memory, (ptr) ); \
            (ptr) = NULL;                 \
          FT_END_STMNT

#define FT_MEM_NEW( ptr )                        \
          FT_MEM_ALLOC( ptr, sizeof ( *(ptr) ) )

#define FT_MEM_REALLOC( ptr, cursz, newsz )                        \
          FT_ASSIGNP( ptr, ft_mem_realloc( memory, 1,        \
                                                 (cursz), (newsz), \
                                                 (ptr), &error ) )

#define FT_MEM_QALLOC( ptr, size )                                         \
          FT_ASSIGNP( ptr, ft_mem_qalloc( memory, (size), &error ) )

#define FT_MEM_QNEW( ptr )                        \
          FT_MEM_QALLOC( ptr, sizeof ( *(ptr) ) )

#define FT_MEM_QREALLOC( ptr, cursz, newsz )                         \
          FT_ASSIGNP( ptr, ft_mem_qrealloc( memory, 1,        \
                                                  (cursz), (newsz), \
                                                  (ptr), &error ) )

#define FT_MEM_QRENEW_ARRAY( ptr, cursz, newsz )                             \
          FT_ASSIGNP( ptr, ft_mem_qrealloc( memory, sizeof ( *(ptr) ), \
                                                  (cursz), (newsz),          \
                                                  (ptr), &error ) )

#define FT_MEM_ALLOC_MULT( ptr, count, item_size )                    \
          FT_ASSIGNP( ptr, ft_mem_realloc( memory, (item_size), \
                                                 0, (count),          \
                                                 NULL, &error ) )

#define FT_MEM_REALLOC_MULT( ptr, oldcnt, newcnt, itmsz )            \
          FT_ASSIGNP( ptr, ft_mem_realloc( memory, (itmsz),    \
                                                 (oldcnt), (newcnt), \
                                                 (ptr), &error ) )

#define FT_MEM_QALLOC_MULT( ptr, count, item_size )                    \
          FT_ASSIGNP( ptr, ft_mem_qrealloc( memory, (item_size), \
                                                  0, (count),          \
                                                  NULL, &error ) )

#define FT_MEM_QREALLOC_MULT( ptr, oldcnt, newcnt, itmsz)             \
          FT_ASSIGNP( ptr, ft_mem_qrealloc( memory, (itmsz),    \
                                                  (oldcnt), (newcnt), \
                                                  (ptr), &error ) )


#define FT_MEM_SET_ERROR( cond )  ( (cond), error != 0 )


#define FT_MEM_SET( dest, byte, count )     ft_memset( dest, byte, count )

#define FT_MEM_COPY( dest, source, count )  ft_memcpy( dest, source, count )

#define FT_MEM_MOVE( dest, source, count )  ft_memmove( dest, source, count )


#define FT_MEM_ZERO( dest, count )  FT_MEM_SET( dest, 0, count )

#define FT_ZERO( p )                FT_MEM_ZERO( p, sizeof ( *(p) ) )


#define FT_ARRAY_ZERO( dest, count )                        \
          FT_MEM_ZERO( dest, (count) * sizeof ( *(dest) ) )

#define FT_ARRAY_COPY( dest, source, count )                        \
          FT_MEM_COPY( dest, source, (count) * sizeof ( *(dest) ) )

#define FT_ARRAY_MOVE( dest, source, count )                        \
          FT_MEM_MOVE( dest, source, (count) * sizeof ( *(dest) ) )


  /*
   *  Return the maximum number of adressable elements in an array.
   *  We limit ourselves to INT_MAX, rather than UINT_MAX, to avoid
   *  any problems.
   */
#define FT_ARRAY_MAX( ptr )           ( FT_INT_MAX / sizeof ( *(ptr) ) )

#define FT_ARRAY_CHECK( ptr, count )  ( (count) <= FT_ARRAY_MAX( ptr ) )


  /*************************************************************************/
  /*                                                                       */
  /* The following functions macros expect that their pointer argument is  */
  /* _typed_ in order to automatically compute array element sizes.        */
  /*                                                                       */

#define FT_MEM_NEW_ARRAY( ptr, count )                                      \
          FT_ASSIGNP( ptr, ft_mem_realloc( memory, sizeof ( *(ptr) ), \
                                                 0, (count),                \
                                                 NULL, &error ) )

#define FT_MEM_RENEW_ARRAY( ptr, cursz, newsz )                             \
          FT_ASSIGNP( ptr, ft_mem_realloc( memory, sizeof ( *(ptr) ), \
                                                 (cursz), (newsz),          \
                                                 (ptr), &error ) )

#define FT_MEM_QNEW_ARRAY( ptr, count )                                      \
          FT_ASSIGNP( ptr, ft_mem_qrealloc( memory, sizeof ( *(ptr) ), \
                                                  0, (count),                \
                                                  NULL, &error ) )

#define FT_MEM_QRENEW_ARRAY( ptr, cursz, newsz )                             \
          FT_ASSIGNP( ptr, ft_mem_qrealloc( memory, sizeof ( *(ptr) ), \
                                                  (cursz), (newsz),          \
                                                  (ptr), &error ) )


#define FT_ALLOC( ptr, size )                           \
          FT_MEM_SET_ERROR( FT_MEM_ALLOC( ptr, size ) )

#define FT_REALLOC( ptr, cursz, newsz )                           \
          FT_MEM_SET_ERROR( FT_MEM_REALLOC( ptr, cursz, newsz ) )

#define FT_ALLOC_MULT( ptr, count, item_size )                           \
          FT_MEM_SET_ERROR( FT_MEM_ALLOC_MULT( ptr, count, item_size ) )

#define FT_REALLOC_MULT( ptr, oldcnt, newcnt, itmsz )              \
          FT_MEM_SET_ERROR( FT_MEM_REALLOC_MULT( ptr, oldcnt,      \
                                                 newcnt, itmsz ) )

#define FT_QALLOC( ptr, size )                           \
          FT_MEM_SET_ERROR( FT_MEM_QALLOC( ptr, size ) )

#define FT_QREALLOC( ptr, cursz, newsz )                           \
          FT_MEM_SET_ERROR( FT_MEM_QREALLOC( ptr, cursz, newsz ) )

#define FT_QALLOC_MULT( ptr, count, item_size )                           \
          FT_MEM_SET_ERROR( FT_MEM_QALLOC_MULT( ptr, count, item_size ) )

#define FT_QREALLOC_MULT( ptr, oldcnt, newcnt, itmsz )              \
          FT_MEM_SET_ERROR( FT_MEM_QREALLOC_MULT( ptr, oldcnt,      \
                                                  newcnt, itmsz ) )

#define FT_FREE( ptr )  FT_MEM_FREE( ptr )

#define FT_NEW( ptr )  FT_MEM_SET_ERROR( FT_MEM_NEW( ptr ) )

#define FT_NEW_ARRAY( ptr, count )                           \
          FT_MEM_SET_ERROR( FT_MEM_NEW_ARRAY( ptr, count ) )

#define FT_RENEW_ARRAY( ptr, curcnt, newcnt )                           \
          FT_MEM_SET_ERROR( FT_MEM_RENEW_ARRAY( ptr, curcnt, newcnt ) )

#define FT_QNEW( ptr )                           \
          FT_MEM_SET_ERROR( FT_MEM_QNEW( ptr ) )

#define FT_QNEW_ARRAY( ptr, count )                          \
          FT_MEM_SET_ERROR( FT_MEM_NEW_ARRAY( ptr, count ) )

#define FT_QRENEW_ARRAY( ptr, curcnt, newcnt )                          \
          FT_MEM_SET_ERROR( FT_MEM_RENEW_ARRAY( ptr, curcnt, newcnt ) )




 /* */


FT_END_HEADER

#endif /* __FTMEMORY_H__ */


/* END */
