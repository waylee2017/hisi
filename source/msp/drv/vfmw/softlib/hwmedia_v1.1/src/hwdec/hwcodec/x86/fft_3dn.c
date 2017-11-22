/*$$$!!Warning: Huawei key information asset. No spread without permission.$$$*/
/*CODEMARK:HuE1v2Elv7J9C1aMkGmdiUQZoS/R2sDdIoxXqdBKL9eiPHH/FdSvQYZfBQZKkVdipTcRXX+G
kqk+/W4lTjU7wod1fiGpDLWinyw9avjJNtWH8EI43U12A+4TKL6azb/jrQX8Lt59EYdsbIcw
Yj40gjbg21gKQLXkpF0MDNdG4eO+/9Ri1ibWKkjd5nhQBqdLAfxzCCQ3E5bS9NIryG/IcqNF
jHO3zDzCYEMS8RlfiKf/sIz4BCd1oIbYFRONjqlrgutwzg1QPk4tjtn4hZUpRQ==#*/
/*$$$!!Warning: Deleting or modifying the preceding information is prohibited.$$$*/
/*
 * FFT/MDCT transform with 3DNow! optimizations
 * Copyright (c) 2008 Loren Merritt
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#define EMULATE_3DNOWEXT
#include "fft_3dn2.c"
