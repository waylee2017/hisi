/***************************************************************************/
/*                                                                         */
/*  svsfnt.h                                                               */
/*                                                                         */
/*    The FreeType SFNT table loading service (specification).             */
/*                                                                         */
/*  Copyright 2003, 2004 by                                                */
/*  David Turner, Robert Wilhelm, and Werner Lemberg.                      */
/*                                                                         */
/*  This file is part of the FreeType project, and may only be used,       */
/*  modified, and distributed under the terms of the FreeType project      */
/*  license, LICENSE.TXT.  By continuing to use, modify, or distribute     */
/*  this file you indicate that you have read the license and              */
/*  understand and accept it fully.                                        */
/*                                                                         */
/***************************************************************************/


#ifndef __SVSFNT_H__
#define __SVSFNT_H__

#include FT_INTERNAL_SERVICE_H
#include FT_TRUETYPE_TABLES_H


FT_BEGIN_HEADER


  /*
   *  SFNT table loading service.
   */

#define FT_SERVICE_ID_SFNT_TABLE  "sfnt-table"


  /*
   */
  typedef FT_Error
  (*FT_SFNT_TableLoadFunc)( FT_Face    face,
                            FT_ULong   tag,
                            FT_Long    offset,
                            FT_Byte*   buffer,
                            FT_ULong*  length );

  typedef void*
  (*FT_SFNT_TableGetFunc)( FT_Face      face,
                           FT_Sfnt_Tag  tag );


  /*
   */
  typedef FT_Error
  (*FT_SFNT_TableInfoFunc)( FT_Face    face,
                            FT_UInt    idx,
                            FT_ULong  *tag,
                            FT_ULong  *length );


  FT_DEFINE_SERVICE( SFNT_Table )
  {
    FT_SFNT_TableLoadFunc  load_table;
    FT_SFNT_TableGetFunc   get_table;
    FT_SFNT_TableInfoFunc  table_info;
  };

  /* */


FT_END_HEADER


#endif /* __SVSFNT_H__ */


/* END */
