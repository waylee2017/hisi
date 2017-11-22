/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : sample_fb.c
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

/*********************************add include here******************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <linux/fb.h>
#include <assert.h>
#include "hifb.h"
#include "hi_unf_disp.h"
#include "hi_adp_data.h"
#include "hi_adp_mpi.h"

/***************************** Macro Definition ******************************/

#ifndef CONFIG_SUPPORT_CA_RELEASE
#define Printf  printf
#else
#define Printf(x...)  
#endif 

#define BLUE                0x001f
#define RED                 0x7C00
#define GREEN               0x03e0

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

static struct fb_var_screeninfo ghifb_st_def_vinfo =
{
#ifdef CHIP_TYPE_hi3110ev500
    720,              /** visible resolution xres            **/
    576,              /** yres                               **/
    720,              /** virtual resolution xres_virtual    **/
    576,              /** yres_virtual                       **/
#else
	1280,             /** visible resolution xres            **/
    720,              /** yres                               **/
    1280,             /** virtual resolution xres_virtual    **/
    720,              /** yres_virtual                       **/
#endif
    0,                /** xoffset                            **/
    0,                /** yoffset                            **/
    16,               /** bits per pixel                     **/
    0,                /** grey levels, 1 means black/white   **/
    {10, 5, 0},       /** fb_bitfiled red                    **/
    { 5, 5, 0},       /** green                              **/
    { 0, 5, 0},       /** blue                               **/
    {15, 1, 0},       /** transparency                       **/
    0,                /** non standard pixel format          **/
    FB_ACTIVATE_FORCE,
    0,                /** height of picture in mm            **/
    0,                /** width of picture in mm             **/
    0,                /** acceleration flags                 **/
    -1,               /** pixclock                           **/
    -1,               /** left margin                        **/
    -1,               /** right margin                       **/
    -1,               /** upper margin                       **/
    -1,               /** lower margin                       **/
    -1,               /** hsync length                       **/
    -1,               /** vsync length                       **/
                      /** sync: FB_SYNC                      **/
                      /** vmod: FB_VMOD                      **/
                      /** reserved[6]: reserved for future use **/
};

void* mapped_mem  = NULL;
void* mapped_io   = NULL;
unsigned long mapped_offset  = 0;
unsigned long mapped_memlen  = 0;
unsigned long mapped_iolen   = 0;


/******************************* API forward declarations *******************/


/******************************* API realization *****************************/
/***************************************************************************************
* func          : print_vinfo
* description   : CNcomment: 打印可变信息 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static void print_vinfo(struct fb_var_screeninfo *vinfo)
{
	Printf("================================================\n");
    Printf("Printing vinfo:\n");
    Printf("xres\t\t: %d\n", vinfo->xres);
    Printf("yres\t\t: %d\n", vinfo->yres);
    Printf("xres_virtual\t: %d\n", vinfo->xres_virtual);
    Printf("yres_virtual\t: %d\n", vinfo->yres_virtual);
    Printf("xoffset\t\t: %d\n", vinfo->xoffset);
    Printf("yoffset\t\t: %d\n", vinfo->yoffset);
    Printf("bits_per_pixel\t: %d\n", vinfo->bits_per_pixel);
    Printf("grayscale\t: %d\n", vinfo->grayscale);
    Printf("nonstd\t\t: %d\n", vinfo->nonstd);
    Printf("activate\t: %d\n", vinfo->activate);
    Printf("height\t\t: %d\n", vinfo->height);
    Printf("width\t\t: %d\n", vinfo->width);
    Printf("accel_flags\t: %d\n", vinfo->accel_flags);
    Printf("pixclock\t: %d\n", vinfo->pixclock);
    Printf("left_margin\t: %d\n", vinfo->left_margin);
    Printf("right_margin\t: %d\n", vinfo->right_margin);
    Printf("upper_margin\t: %d\n", vinfo->upper_margin);
    Printf("lower_margin\t: %d\n", vinfo->lower_margin);
    Printf("hsync_len\t: %d\n", vinfo->hsync_len);
    Printf("vsync_len\t: %d\n", vinfo->vsync_len);
    Printf("sync\t\t: %d\n", vinfo->sync);
    Printf("vmode\t\t: %d\n", vinfo->vmode);
    Printf("red\t\t: %d/%d\n", vinfo->red.length, vinfo->red.offset);
    Printf("green\t\t: %d/%d\n", vinfo->green.length, vinfo->green.offset);
    Printf("blue\t\t: %d/%d\n", vinfo->blue.length, vinfo->blue.offset);
    Printf("alpha\t\t: %d/%d\n", vinfo->transp.length, vinfo->transp.offset);
	Printf("================================================\n");
}

/***************************************************************************************
* func          : print_finfo
* description   : CNcomment: 打印固定信息 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static void print_finfo(struct fb_fix_screeninfo *finfo)
{
	Printf("================================================\n");
    Printf("Printing finfo:\n");
    Printf("smem_start \t= %p\n", (char *)finfo->smem_start);
    Printf("smem_len \t= %d\n", finfo->smem_len);
    Printf("type \t\t= %d\n", finfo->type);
    Printf("type_aux \t= %d\n", finfo->type_aux);
    Printf("visual \t\t= %d\n", finfo->visual);
    Printf("xpanstep \t= %d\n", finfo->xpanstep);
    Printf("ypanstep \t= %d\n", finfo->ypanstep);
    Printf("ywrapstep \t= %d\n", finfo->ywrapstep);
    Printf("line_length \t= %d\n", finfo->line_length);
    Printf("mmio_start \t= %p\n", (char *)finfo->mmio_start);
    Printf("mmio_len \t= %d\n", finfo->mmio_len);
    Printf("accel \t\t= %d\n", finfo->accel);
	Printf("================================================\n");
}


/***************************************************************************************
* func          : DrawBox
* description   : CNcomment: 绘制矩形 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
void DrawBox(int x, int y, int w, int h,                \
                  unsigned long stride,char* pmapped_mem,     \
                  unsigned short color)
{
    int i, j;
    unsigned short* pvideo = (unsigned short*)pmapped_mem;

    for (i = y; i < y + h; i++)
    {
        pvideo = (unsigned short*)(pmapped_mem + i * stride);
        for (j = x; j < x + w; j++)
        {
            *(pvideo + j) = color;
        }
    }
}


/***************************************************************************************
* func          : main
* description   : CNcomment: 函数入口 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
int main(int argc, char* argv[])
{

    struct fb_fix_screeninfo finfo;
    struct fb_var_screeninfo vinfo;

	HIFB_LAYER_INFO_S layerinfo;
    HIFB_BUFFER_S CanvasBuf;
    HIFB_ALPHA_S  stAlpha;

	HI_U32 u32BufSize         = 0;
    HI_U32 u32DisPlayBufSize = 0;
    HI_U32 u32LineLen         = 0;
	
    int y   = 0;
    int ret = 0;
    int console_fd = 0;
	
    const char* file = "/dev/fb2";

#ifdef CHIP_TYPE_hi3110ev500
    ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_PAL);
#else
	ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_720P_50);
#endif
    if (ret != HI_SUCCESS)
    {
        return 0;
    }

	/* open fb device */
    if (argc >= 2)
    {
        file = argv[1];
    }
	
    console_fd = open(file, O_RDWR, 0);
    if (console_fd < 0)
    {
        Printf ( "Unable to open %s\n", file);
        return (-1);
    }

    /* set color format ARGB1555, screen size: 720*576 */
    if (ioctl(console_fd, FBIOPUT_VSCREENINFO, &ghifb_st_def_vinfo) < 0)
    {
        Printf ( "Unable to set variable screeninfo!\n");
        ret = -1;
        goto CLOSEFD;
    }

    /* Get the type of video hardware */
    if (ioctl(console_fd, FBIOGET_FSCREENINFO, &finfo) < 0)
    {
        Printf ( "Couldn't get console hardware info\n");
        ret = -1;
        goto CLOSEFD;
    }

    print_finfo(&finfo);

    mapped_memlen = finfo.smem_len + mapped_offset;
    u32DisPlayBufSize = ghifb_st_def_vinfo.xres_virtual*ghifb_st_def_vinfo.xres_virtual*(ghifb_st_def_vinfo.bits_per_pixel/8);

	if (mapped_memlen != 0 && mapped_memlen >= u32DisPlayBufSize)
    {
        u32BufSize = finfo.smem_len;
        u32LineLen = finfo.line_length;
        mapped_mem = mmap(NULL, mapped_memlen,PROT_READ | PROT_WRITE, MAP_SHARED, console_fd, 0);
        if (mapped_mem == (char *)-1)
        {
            Printf ( "Unable to memory map the video hardware\n");
            mapped_mem = NULL;
            ret = -1;
            goto CLOSEFD;
        }
    }

    /* Determine the current screen depth */
    if (ioctl(console_fd, FBIOGET_VSCREENINFO, &vinfo) < 0)
    {
        Printf ( "Couldn't get console pixel format\n");
        ret = -1;
        goto UNMAP;
    }

    print_vinfo(&vinfo);

    /* set alpha */
    stAlpha.bAlphaEnable  = HI_TRUE;
    stAlpha.bAlphaChannel = HI_FALSE;
    stAlpha.u8Alpha0 = 0xff;
    stAlpha.u8Alpha1 = 0xff;
    if (ioctl(console_fd, FBIOPUT_ALPHA_HIFB, &stAlpha) < 0)
    {
        Printf ( "Couldn't set alpha\n");
        ret = -1;
        goto UNMAP;
    }

    /*单buffer模式*/
    if (mapped_memlen == 0 || mapped_memlen < u32DisPlayBufSize)
    {

        if (ioctl(console_fd, FBIOGET_LAYER_INFO, &layerinfo) < 0)
        {
            printf("Get layer info failed!\n");
            goto CLOSEFD;
        }
        
         layerinfo.u32Mask=0;
         layerinfo.eAntiflickerLevel=HIFB_LAYER_ANTIFLICKER_HIGH;
         layerinfo.BufMode=HIFB_LAYER_BUF_NONE;
         layerinfo.u32CanvasWidth = vinfo.xres_virtual;
         layerinfo.u32CanvasHeight = vinfo.yres_virtual;
         layerinfo.u32Mask |= HIFB_LAYERMASK_BUFMODE;
         layerinfo.u32Mask |= HIFB_LAYERMASK_ANTIFLICKER_MODE;
         layerinfo.u32Mask |= HIFB_LAYERMASK_CANVASSIZE;
        if (ioctl(console_fd, FBIOPUT_LAYER_INFO, &layerinfo) < 0)
        {
            printf("put layer info failed!\n");
            goto CLOSEFD;
        }

        if (ioctl(console_fd, FBIOGET_CANVAS_BUFFER, &CanvasBuf) < 0)
        {
            printf("get canvas buffer failed\n");
            goto CLOSEFD;
        }
        
        if (CanvasBuf.stCanvas.u32PhyAddr == 0)
        {
             printf("CanvasBuf is NULL\n");
             goto CLOSEFD;
        }
        
        u32LineLen = CanvasBuf.stCanvas.u32Pitch;
        u32BufSize = CanvasBuf.stCanvas.u32Height * CanvasBuf.stCanvas.u32Pitch;
   
        mapped_mem = (void *)HI_MEM_Map(CanvasBuf.stCanvas.u32PhyAddr, u32BufSize);
        if (mapped_mem == NULL)
        {
             printf("map canvas buffer failed\n");
             goto CLOSEFD;
        }
    } 

    
    memset(mapped_mem, 0x00, u32BufSize);

    Printf("fill box\n");

    y = 0;
    DrawBox(100, y, 100, 100, u32LineLen, mapped_mem, BLUE);
    y += 110;
    DrawBox(100, y, 100, 100, u32LineLen, mapped_mem, RED);
    y += 110;
    DrawBox(100, y, 100, 100, u32LineLen, mapped_mem, GREEN);
    y += 110;
    DrawBox(100, y, 100, 100, u32LineLen, mapped_mem, 0x0f0f);
    y += 110;
    DrawBox(100, y, 100, 100, u32LineLen, mapped_mem, -1);

    if (mapped_memlen == 0 ||mapped_memlen < u32DisPlayBufSize)
    {
        if (ioctl(console_fd, FBIO_REFRESH, &CanvasBuf) < 0)
        {
            printf("refresh buffer info failed!\n");
        } 
    }
#if 1
    if (ioctl(console_fd, FBIOPAN_DISPLAY, &vinfo) < 0)
    {
		printf("pan display failed!\n");
    }
#endif
    getchar();

UNMAP:
    if (mapped_memlen != 0)
    {
        munmap(mapped_mem, mapped_memlen);
    }
    else
    {
        HI_MEM_Unmap(mapped_mem);
    }

CLOSEFD:
    close(console_fd);
    HIADP_Disp_DeInit();
    return ret;
}
