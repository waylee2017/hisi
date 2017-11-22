/***************************************************************************/
/*                                                                         */
/*  ftlist.h                                                               */
/*                                                                         */
/*    Generic list support for FreeType (specification).                   */
/*                                                                         */
/*  Copyright 1996-2001, 2003 by                                           */
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
  /*  This file implements functions relative to list processing.  Its     */
  /*  data structures are defined in `freetype.h'.                         */
  /*                                                                       */
  /*************************************************************************/


#ifndef __FTLIST_H__
#define __FTLIST_H__


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
  /*    list_processing                                                    */
  /*                                                                       */
  /* <Title>                                                               */
  /*    List Processing                                                    */
  /*                                                                       */
  /* <Abstract>                                                            */
  /*    Simple management of lists.                                        */
  /*                                                                       */
  /* <Description>                                                         */
  /*    This section contains various definitions related to list          */
  /*    processing using doubly-linked nodes.                              */
  /*                                                                       */
  /* <Order>                                                               */
  /*    FT_List                                                            */
  /*    FT_ListNode                                                        */
  /*    FT_ListRec                                                         */
  /*    FT_ListNodeRec                                                     */
  /*                                                                       */
  /*    FT_List_Add                                                        */
  /*    FT_List_Find                                                       */
  /*    FT_List_Remove                                                     */
  /*    FT_List_Up                                                         */
  /*    FT_List_Iterator                                                   */
  /*    FT_List_Finalize                                                   */
  /*    FT_List_Destructor                                                 */
  /*                                                                       */
  /*************************************************************************/


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_List_Find                                                       */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Finds the list node for a given listed object.                     */
  /*                                                                       */
  /* <Input>                                                               */
  /*    list :: A pointer to the parent list.                              */
  /*    data :: The address of the listed object.                          */
  /*                                                                       */
  /* <Return>                                                              */
  /*    List node.  NULL if it wasn't found.                               */
  /*                                                                       */
  FT_EXPORT( FT_ListNode )
  FT_List_Find( FT_List  list,
                void*    data );


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_List_Add                                                        */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Appends an element to the end of a list.                           */
  /*                                                                       */
  /* <InOut>                                                               */
  /*    list :: A pointer to the parent list.                              */
  /*    node :: The node to append.                                        */
  /*                                                                       */
  FT_EXPORT( void )
  FT_List_Add( FT_List      list,
               FT_ListNode  node );




  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_List_Remove                                                     */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Removes a node from a list.  This function doesn't check whether   */
  /*    the node is in the list!                                           */
  /*                                                                       */
  /* <Input>                                                               */
  /*    node :: The node to remove.                                        */
  /*                                                                       */
  /* <InOut>                                                               */
  /*    list :: A pointer to the parent list.                              */
  /*                                                                       */
  FT_EXPORT( void )
  FT_List_Remove( FT_List      list,
                  FT_ListNode  node );


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_List_Up                                                         */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Moves a node to the head/top of a list.  Used to maintain LRU      */
  /*    lists.                                                             */
  /*                                                                       */
  /* <InOut>                                                               */
  /*    list :: A pointer to the parent list.                              */
  /*    node :: The node to move.                                          */
  /*                                                                       */
  FT_EXPORT( void )
  FT_List_Up( FT_List      list,
              FT_ListNode  node );






  /*************************************************************************/
  /*                                                                       */
  /* <FuncType>                                                            */
  /*    FT_List_Destructor                                                 */
  /*                                                                       */
  /* <Description>                                                         */
  /*    An @FT_List iterator function which is called during a list        */
  /*    finalization by @FT_List_Finalize to destroy all elements in a     */
  /*    given list.                                                        */
  /*                                                                       */
  /* <Input>                                                               */
  /*    system :: The current system object.                               */
  /*                                                                       */
  /*    data   :: The current object to destroy.                           */
  /*                                                                       */
  /*              be used to point to the iteration's state.               */
  /*                                                                       */
  typedef void
  (*FT_List_Destructor)( FT_Memory  memory,
                         void*      data,
                         void*      user );


  /*************************************************************************/
  /*                                                                       */
  /* <Function>                                                            */
  /*    FT_List_Finalize                                                   */
  /*                                                                       */
  /* <Description>                                                         */
  /*    Destroys all elements in the list as well as the list itself.      */
  /*                                                                       */
  /* <Input>                                                               */
  /*    list    :: A handle to the list.                                   */
  /*                                                                       */
  /*    destroy :: A list destructor that will be applied to each element  */
  /*               of the list.                                            */
  /*                                                                       */
  /*    memory  :: The current memory object which handles deallocation.   */
  /*                                                                       */
  /*    user    :: A user-supplied field which is passed as the last       */
  /*               argument to the destructor.                             */
  /*                                                                       */
  FT_EXPORT( void )
  FT_List_Finalize( FT_List             list,
                    FT_List_Destructor  destroy,
                    FT_Memory           memory,
                    void*               user );


  /* */


FT_END_HEADER

#endif /* __FTLIST_H__ */


/* END */
