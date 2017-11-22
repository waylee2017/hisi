//<MStar Software>
//******************************************************************************
// MStar Software
// Copyright (c) 2010 - 2012 MStar Semiconductor, Inc. All rights reserved.
// All software, firmware and related documentation herein ("MStar Software") are
// intellectual property of MStar Semiconductor, Inc. ("MStar") and protected by
// law, including, but not limited to, copyright law and international treaties.
// Any use, modification, reproduction, retransmission, or republication of all
// or part of MStar Software is expressly prohibited, unless prior written
// permission has been granted by MStar.
//
// By accessing, browsing and/or using MStar Software, you acknowledge that you
// have read, understood, and agree, to be bound by below terms ("Terms") and to
// comply with all applicable laws and regulations:
//
// 1. MStar shall retain any and all right, ownership and interest to MStar
//    Software and any modification/derivatives thereof.
//    No right, ownership, or interest to MStar Software and any
//    modification/derivatives thereof is transferred to you under Terms.
//
// 2. You understand that MStar Software might include, incorporate or be
//    supplied together with third party`s software and the use of MStar
//    Software may require additional licenses from third parties.
//    Therefore, you hereby agree it is your sole responsibility to separately
//    obtain any and all third party right and license necessary for your use of
//    such third party`s software.
//
// 3. MStar Software and any modification/derivatives thereof shall be deemed as
//    MStar`s confidential information and you agree to keep MStar`s
//    confidential information in strictest confidence and not disclose to any
//    third party.
//
// 4. MStar Software is provided on an "AS IS" basis without warranties of any
//    kind. Any warranties are hereby expressly disclaimed by MStar, including
//    without limitation, any warranties of merchantability, non-infringement of
//    intellectual property rights, fitness for a particular purpose, error free
//    and in conformity with any international standard.  You agree to waive any
//    claim against MStar for any loss, damage, cost or expense that you may
//    incur related to your use of MStar Software.
//    In no event shall MStar be liable for any direct, indirect, incidental or
//    consequential damages, including without limitation, lost of profit or
//    revenues, lost or damage of data, and unauthorized system use.
//    You agree that this Section 4 shall still apply without being affected
//    even if MStar Software has been modified by MStar in accordance with your
//    request or instruction for your use, except otherwise agreed by both
//    parties in writing.
//
// 5. If requested, MStar may from time to time provide technical supports or
//    services in relation with MStar Software to you for your use of
//    MStar Software in conjunction with your or your customer`s product
//    ("Services").
//    You understand and agree that, except otherwise agreed by both parties in
//    writing, Services are provided on an "AS IS" basis and the warranty
//    disclaimer set forth in Section 4 above shall apply.
//
// 6. Nothing contained herein shall be construed as by implication, estoppels
//    or otherwise:
//    (a) conferring any license or right to use MStar name, trademark, service
//        mark, symbol or any other identification;
//    (b) obligating MStar or any of its affiliates to furnish any person,
//        including without limitation, you and your customers, any assistance
//        of any kind whatsoever, or any information; or
//    (c) conferring any license or right under any intellectual property right.
//
// 7. These terms shall be governed by and construed in accordance with the laws
//    of Taiwan, R.O.C., excluding its conflict of law rules.
//    Any and all dispute arising out hereof or related hereto shall be finally
//    settled by arbitration referred to the Chinese Arbitration Association,
//    Taipei in accordance with the ROC Arbitration Law and the Arbitration
//    Rules of the Association by three (3) arbitrators appointed in accordance
//    with the said Rules.
//    The place of arbitration shall be in Taipei, Taiwan and the language shall
//    be English.
//    The arbitration award shall be final and binding to both parties.
//
//******************************************************************************
//<MStar Software>

///////////////////////////////////////////////////////////////////////////////////////////////////
///
/// file    loader.c
/// @brief  Loader code running on RAM
/// @author MStar Semiconductor Inc.
///////////////////////////////////////////////////////////////////////////////////////////////////

#include "mm_common.h"

#define VERIFICATION_ENABLE 1

#define PADCFG_END        0xFFFF
#define PADCFG_MEM_BASE   0x0000
#define REG_ADDR_BASE     0xBF000000

#define SHA_HASH_DIGI_LEN           8                                   // 32-bit count, 5 for SHA-1, 8 for SHA-256,384,512
MBT_VOID SHA256_Init(MBT_U32 *hash);
MBT_VOID SHA256_Hash(const MBT_U32 *data, MBT_U32 *hash);
MBT_VOID SHA256_Hash_Message(MBT_U8 *pu8Message, MBT_U32 u32Length);

// SHA256 result
static MBT_U32   sha_H[SHA_HASH_DIGI_LEN] = {
    0xDEADBEEF, 0xDEADBEEF, 0xDEADBEEF, 0xDEADBEEF, 0xDEADBEEF, 0xDEADBEEF, 0xDEADBEEF, 0xDEADBEEF,
};

// Golden APP SHA256 digest
// Here is the digest of the test.bin for testing
// Will be replaced when append the new APP by 'app_append.py'
static MBT_U32 AppDigest[SHA_HASH_DIGI_LEN] = {
    0x73F911A1, 0x8C9E84EC, 0xE56D24D1, 0xF01547A4, 0x7B3A0D67, 0x283679F0, 0x9FF9AE14, 0xFFF3D95C
};


//#ifndef bfn

MBT_U32 LDR_APP_Auth(MBT_U8 *u8From, MBT_U32 u32Size)
{
#if defined(VERIFICATION_ENABLE) && VERIFICATION_ENABLE
    MBT_S32 i;
    SHA256_Hash_Message(u8From, u32Size);
    for(i = 0; i < SHA_HASH_DIGI_LEN; i++)
    {
        if(sha_H[i] != AppDigest[i])
            return 0;
    }

#endif

    return 1;
}


// SHA-256 Hash Computation

inline MBT_U32 rotrFixed(MBT_U32 x, MBT_U32 y)
{
    return((x>>y) | (x<<(sizeof(MBT_U32)*8-y)));
}

static MBT_U32 SHA256_K[64] = {
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
    0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
    0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
    0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
    0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
    0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
    0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
    0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
    0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
};

#define blk0(i)                     (W[i] = data[i])
#define blk2(i)                     (W[i&15] += s1(W[(i-2)&15])+W[(i-7)&15]+s0(W[(i-15)&15]))

#define Ch(x,y,z)                   (z^(x&(y^z)))
#define Maj(x,y,z)                  ((x&y)|(z&(x|y)))

#define a(i)                        T[(0-i)&7]
#define b(i)                        T[(1-i)&7]
#define c(i)                        T[(2-i)&7]
#define d(i)                        T[(3-i)&7]
#define e(i)                        T[(4-i)&7]
#define f(i)                        T[(5-i)&7]
#define g(i)                        T[(6-i)&7]
#define h(i)                        T[(7-i)&7]

// for SHA256
#define S0(x)                       (rotrFixed(x,2)^rotrFixed(x,13)^rotrFixed(x,22))
#define S1(x)                       (rotrFixed(x,6)^rotrFixed(x,11)^rotrFixed(x,25))
#define s0(x)                       (rotrFixed(x,7)^rotrFixed(x,18)^(x>>3))
#define s1(x)                       (rotrFixed(x,17)^rotrFixed(x,19)^(x>>10))

#define R(i)                        h(i) += S1(e(i))+Ch(e(i),f(i),g(i))+SHA256_K[i+j]+(j?blk2(i):blk0(i));  \
                                    d(i) += h(i);                                                           \
                                    h(i) += S0(a(i)) + Maj(a(i),b(i),c(i))


MBT_VOID SHA256_Init(MBT_U32 *hash)
{
    hash[0] = 0x6a09e667;
    hash[1] = 0xbb67ae85;
    hash[2] = 0x3c6ef372;
    hash[3] = 0xa54ff53a;
    hash[4] = 0x510e527f;
    hash[5] = 0x9b05688c;
    hash[6] = 0x1f83d9ab;
    hash[7] = 0x5be0cd19;
}


MBT_VOID SHA256_Hash(const MBT_U32 *data, MBT_U32 *hash)
{
    MBT_U32                 W[16];
    MBT_U32                 T[8];
    MBT_S32                 j;

    // Initialize state and local variable
    for (j = 0; j < 16; j++)
    {
        W[j] = 0;
    }
    for (j = 0; j < 8; j++)
    {
        T[j] = hash[j];
    }

    // Interative Hash Computation
    for (j = 0; j < 64; j += 16)
    {
        /* R( 0)
        h(0) += S1(e(0))+Ch(e(0),f(0),g(0))+SHA256_K[0+j]+(j?blk2(0):blk0(0));
        d(0) += h(0);
        h(0) += S0(a(0)) + Maj(a(0),b(0),c(0));
        */
        R( 0); R( 1); R( 2); R( 3);
        R( 4); R( 5); R( 6); R( 7);
        R( 8); R( 9); R(10); R(11);
        R(12); R(13); R(14); R(15);
    }

    // Update new hash value
    hash[0] += a(0);
    hash[1] += b(0);
    hash[2] += c(0);
    hash[3] += d(0);
    hash[4] += e(0);
    hash[5] += f(0);
    hash[6] += g(0);
    hash[7] += h(0);
}

MBT_VOID SHA256_Hash_Message(MBT_U8 *pu8Message, MBT_U32 u32Length)
{
    MBT_U32              sha_M[SHA_HASH_DIGI_LEN * 2]; // temp buffer for message block

    MBT_S32                 len, i;
    unsigned char       msg[4];
    MBT_U32              msg_addr;
    MBT_U32              tmp;

    SHA256_Init(sha_H);

    for(i = 0; i < sizeof(sha_M) / sizeof(sha_M[0]); i++)
        sha_M[i] = 0;

    msg_addr = (MBT_U32)(pu8Message);
    len = (MBT_S32)(u32Length);

    while (len >= 0)
    {
        if (len < 64) // last 1 data block
        {
            // move n*32 bits data
            for (i = 0; i < (len&~3);)
            {
                *(MBT_U32*)msg = *(MBT_U32*)(msg_addr);
                msg_addr += 4;

                sha_M[i/4] = (msg[0] << 24) | (msg[1] << 16) | (msg[2] << 8) | msg[3];
                i += 4;
            }

            // move non-32 bits data
            *(MBT_U32*)msg = *(MBT_U32*)(msg_addr);
            msg_addr += 4;

            // append and stuffing
            sha_M[i/4] = 0;
            while (i < len)
            {
                sha_M[i/4] |= msg[i%4] << (24-((i%4)*8));
                i++;
            }
            // 1 append
            sha_M[i/4] |= 0x80 << (24-((i%4)*8));
            i = (i + 4) & ~3;


            // If (len * 8 + 1(1 append) + 64(64-bit msg length)) > 512,
            // it's not enough for padding 8-byte(64-bit) length;
            // namely, if len=56~63.
            if (len >= 56)
            {
                // No room for message length

                // 0 append
                for (; i < 64;)
                {
                    sha_M[i/4] = 0;
                    i += 4;
                }
                SHA256_Hash(sha_M, sha_H);
                // reset to next block
                i = 0;
            }
            // 0 append
            for (; i < 56;)
            {
                sha_M[i/4] = 0;
                i += 4;
            }

            sha_M[14] = 0;
            //sha_M[15] = (*(U32*)_Rom_Public.p_message_length) * 8; // bit count
            sha_M[15] = u32Length << 3; // bit count
        }
        else
        {
            // move n*32 bits data
            for (i = 0; i < 64;)
            {
                *(MBT_U32*)msg = *(MBT_U32*)(msg_addr);
                msg_addr += 4;

                sha_M[i/4] = (msg[0] << 24) | (msg[1] << 16) | (msg[2] << 8) | msg[3];
                i += 4;
            }
        }
        SHA256_Hash(sha_M, sha_H);
        len -= 64;
    }
    // Hash revert to digit
    for (i = 0; i < SHA_HASH_DIGI_LEN/2; i++)
    {
        tmp = sha_H[SHA_HASH_DIGI_LEN-1-i];
        sha_H[SHA_HASH_DIGI_LEN-1-i] = sha_H[i];
        sha_H[i] = tmp;
    }
}




