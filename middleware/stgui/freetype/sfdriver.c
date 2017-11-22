/***************************************************************************/
/*                                                                         */
/*  sfdriver.c                                                             */
/*                                                                         */
/*    High-level SFNT driver interface (body).                             */
/*                                                                         */
/*  Copyright 1996-2001, 2002, 2003, 2004, 2005, 2006 by                   */
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
#include FT_INTERNAL_SFNT_H
#include FT_INTERNAL_OBJECTS_H

#include "sfdriver.h"
#include "ttload.h"
#include "sfobjs.h"
#include "sferrors.h"
#include "ttcmap.h"
#include "ttkern.h"
#include "ttmtx.h"

#include FT_SERVICE_GLYPH_DICT_H
#include FT_SERVICE_POSTSCRIPT_NAME_H
#include FT_SERVICE_SFNT_H
#include FT_SERVICE_TT_CMAP_H

 /*
  *  SFNT TABLE SERVICE
  *
  */

  static void*
  get_sfnt_table( TT_Face      face,
                  FT_Sfnt_Tag  tag )
  {
    void*  table;


    switch ( tag )
    {
    case ft_sfnt_head:
      table = &face->header;
      break;

    case ft_sfnt_hhea:
      table = &face->horizontal;
      break;

    case ft_sfnt_vhea:
      table = face->vertical_info ? &face->vertical : 0;
      break;

    case ft_sfnt_os2:
      table = face->os2.version == 0xFFFFU ? 0 : &face->os2;
      break;

    case ft_sfnt_post:
      table = &face->postscript;
      break;

    case ft_sfnt_maxp:
      table = &face->max_profile;
      break;

    case ft_sfnt_pclt:
      table = face->pclt.Version ? &face->pclt : 0;
      break;

    default:
      table = 0;
    }

    return table;
  }


  static FT_Error
  sfnt_table_info( TT_Face    face,
                   FT_UInt    idx,
                   FT_ULong  *tag,
                   FT_ULong  *length )
  {
    if ( !tag || !length )
      return SFNT_Err_Invalid_Argument;

    if ( idx >= face->num_tables )
      return SFNT_Err_Table_Missing;

    *tag    = face->dir_tables[idx].Tag;
    *length = face->dir_tables[idx].Length;

    return SFNT_Err_Ok;
  }


  static const FT_Service_SFNT_TableRec  sfnt_service_sfnt_table =
  {
    (FT_SFNT_TableLoadFunc)tt_face_load_any,
    (FT_SFNT_TableGetFunc) get_sfnt_table,
    (FT_SFNT_TableInfoFunc)sfnt_table_info
  };

 /*
  *  POSTSCRIPT NAME SERVICE
  *
  */

  static const char*
  sfnt_get_ps_name( TT_Face  face )
  {
    FT_Int       n, found_win, found_apple;
    const char*  result = NULL;


    /* shouldn't happen, but just in case to avoid memory leaks */
    if ( face->postscript_name )
      return face->postscript_name;

    /* scan the name table to see whether we have a Postscript name here, */
    /* either in Macintosh or Windows platform encodings                  */
    found_win   = -1;
    found_apple = -1;

    for ( n = 0; n < face->num_names; n++ )
    {
      TT_NameEntryRec*  name = face->name_table.names + n;


      if ( name->nameID == 6 && name->stringLength > 0 )
      {
        if ( name->platformID == 3     &&
             name->encodingID == 1     &&
             name->languageID == 0x409 )
          found_win = n;

        if ( name->platformID == 1 &&
             name->encodingID == 0 &&
             name->languageID == 0 )
          found_apple = n;
      }
    }

    if ( found_win != -1 )
    {
      FT_Memory         memory = face->root.memory;
      TT_NameEntryRec*  name   = face->name_table.names + found_win;
      FT_UInt           len    = (name->stringLength>>1);
      FT_Error          error  = SFNT_Err_Ok;

      FT_UNUSED( error );


      if ( !FT_ALLOC( result, name->stringLength + 1 ) )
      {
        FT_Stream   stream = face->name_table.stream;
        FT_String*  r      = (FT_String*)result;
        FT_Byte*    p      = (FT_Byte*)name->string;


        if ( FT_STREAM_SEEK( name->stringOffset ) ||
             FT_FRAME_ENTER( name->stringLength ) )
        {
          FT_FREE( result );
          name->stringLength = 0;
          name->stringOffset = 0;
          FT_FREE( name->string );

          goto Exit;
        }

        p = (FT_Byte*)stream->cursor;

        for ( ; len > 0; len--, p += 2 )
        {
          if ( p[0] == 0 && p[1] >= 32 && p[1] < 128 )
            *r++ = p[1];
        }
        *r = '\0';

        FT_FRAME_EXIT();
      }
      goto Exit;
    }

    if ( found_apple != -1 )
    {
      FT_Memory         memory = face->root.memory;
      TT_NameEntryRec*  name   = face->name_table.names + found_apple;
      FT_UInt           len    = name->stringLength;
      FT_Error          error  = SFNT_Err_Ok;

      FT_UNUSED( error );


      if ( !FT_ALLOC( result, len + 1 ) )
      {
        FT_Stream  stream = face->name_table.stream;


        if ( FT_STREAM_SEEK( name->stringOffset ) ||
             FT_STREAM_READ( result, len )        )
        {
          name->stringOffset = 0;
          name->stringLength = 0;
          FT_FREE( name->string );
          FT_FREE( result );
          goto Exit;
        }
        ((char*)result)[len] = '\0';
      }
    }

  Exit:
    face->postscript_name = result;
    return result;
  }

  static const FT_Service_PsFontNameRec  sfnt_service_ps_name =
  {
    (FT_PsName_GetFunc)sfnt_get_ps_name
  };


  /*
   *  TT CMAP INFO
   */
  static const FT_Service_TTCMapsRec  tt_service_get_cmap_info =
  {
    (TT_CMap_Info_GetFunc)tt_get_cmap_info
  };




  /*
   *  SERVICE LIST
   */

  static const FT_ServiceDescRec  sfnt_services[] =
  {
    { FT_SERVICE_ID_SFNT_TABLE,           &sfnt_service_sfnt_table },
    { FT_SERVICE_ID_POSTSCRIPT_FONT_NAME, &sfnt_service_ps_name },
    { FT_SERVICE_ID_TT_CMAP,              &tt_service_get_cmap_info },

    { NULL, NULL }
  };


  FT_CALLBACK_DEF( FT_Module_Interface )
  sfnt_get_interface( FT_Module    module,
                      const char*  module_interface )
  {
    FT_UNUSED( module );

    return ft_service_list_lookup( sfnt_services, module_interface );
  }




  static
  const SFNT_Interface  sfnt_interface =
  {
    tt_face_goto_table,
    sfnt_init_face,
    sfnt_load_face,
    sfnt_done_face,
    sfnt_get_interface,
    tt_face_load_any,
    tt_face_load_head,
    tt_face_load_hhea,
    tt_face_load_cmap,
    tt_face_load_maxp,
    tt_face_load_os2,
    tt_face_load_post,
    tt_face_load_name,
    tt_face_free_name,
    tt_face_load_kern,
    tt_face_load_gasp,
    tt_face_load_pclt,
    0,
    0,
    0,
    0,
    /* since version 2.1.8 */
    tt_face_get_kerning,
    /* since version 2.2 */
    tt_face_load_font_dir,
    tt_face_load_hmtx,
    0,
    0,
    0,
    0,
    tt_face_get_metrics
  };


  FT_CALLBACK_TABLE_DEF
  const FT_Module_Class  sfnt_module_class =
  {
    0,  /* not a font driver or renderer */
    sizeof( FT_ModuleRec ),

    "sfnt",     /* driver name                            */
    0x10000L,   /* driver version 1.0                     */
    0x20000L,   /* driver requires FreeType 2.0 or higher */

    (const void*)&sfnt_interface,  /* module specific interface */

    (FT_Module_Constructor)0,
    (FT_Module_Destructor) 0,
    (FT_Module_Requester)  sfnt_get_interface
  };
#endif

/* END */
