/*$$$!!Warning: Huawei key information asset. No spread without permission.$$$*/
/*CODEMARK:HuE1v2Elv7J9C1aMkGmdiUQZoS/R2sDdIoxXqdBKL9eiPHH/FdSvQYZfBQZKkVdipTcRXX+G
kqk+/W4lTjU7wod1fiGpDLWinyw9avjJNtWpXroRjyAxZSJSk8RGM/5va1+H8PF2AG6QFKLp
1HPx5d7xzrrp2ZqDGeQec3+69TxL5rwGG3/jh1vAIw9G06Iowzz3B5/FHYMrdCggBZnaduUU
L5kQSEcRmiWv6svFUN9NP3e+D0z1thkFfP3pFr2saLRGBHGNmpltBHFLeMcz5g==#*/
/*$$$!!Warning: Deleting or modifying the preceding information is prohibited.$$$*/
/* Copyright (C) 1991,95,96,2002 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, write to the Free
   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
   02111-1307 USA.  */

//#include <signal.h>
//#include <errno.h>

/* Raise the signal SIG.  */
int raise (int sig)
{
    //  __set_errno (ENOSYS);
    //  return -1;
    return 0;
}
//weak_alias (raise, gsignal)

//stub_warning (raise)
//stub_warning (gsignal)
//#include <stub-tag.h>
