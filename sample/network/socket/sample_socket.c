/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <fcntl.h>
#include <getopt.h>
#include <sys/time.h>

#include "hi_unf_common.h"

#define PACKET_LEN 2048
#define MAX_SOCKET 1024

typedef enum _tagNetSocketType
{
    NET_SOCKET_TCP,
    NET_SOCKET_UDP
} NETSOCKETTYPE;

//Default timeout = 10s
HI_U32 TimeOutSec = 10;
HI_S16 ServerPort = 5001;
HI_S16 ClientPort = 5001;
NETSOCKETTYPE SocketType = NET_SOCKET_TCP;
HI_CHAR serverip[64] = "10.73.10.75";
HI_CHAR clientip[64] = "10.73.10.70";
HI_U32 speedtest_packet_len = 1024 * 1024;
HI_U32 speedtest_loop_num = 10;
HI_U32 speedtest_units = 1024 * 1024;
HI_CHAR speedtest_units_string = 'm';

HI_S32 Net_Socket_Create(NETSOCKETTYPE NetSocketType)
{
    HI_S32 ret = HI_FAILURE;

    if (NET_SOCKET_TCP == NetSocketType)
    {
        ret = socket(AF_INET, SOCK_STREAM, 0);
        if (ret == -1)
        {
            perror("socket\n");
        }
    }
    else if (NET_SOCKET_UDP == NetSocketType)
    {
        ret = socket(AF_INET, SOCK_DGRAM, 0);
        if (ret == -1)
        {
            perror("socket\n");
        }
    }

    return ret;
}

HI_VOID Net_Socket_Destroy(HI_S32 fd)
{
    close(fd);
}

HI_S32 Net_Socket_Bind(HI_S32 sockfd, HI_U16 ipPort)
{
    HI_S32 ret = HI_SUCCESS;
    struct sockaddr_in serv_addr;

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(ipPort);
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    bzero(serv_addr.sin_zero, 8);

    ret = bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(struct sockaddr));

    if (ret != HI_SUCCESS)
    {
        perror("socket bind error.\n");
    }

    return ret;
}

HI_S32 Net_Socket_Listen(HI_S32 sockfd)
{
    if (listen(sockfd, 10) == -1)
    {
        perror("socket listen error.\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 Net_Socket_Connect(HI_S32 sockfd, HI_CHAR * ipString, HI_U16 ipport, HI_U32 timeout_s)
{
    HI_S32 blockflag;
    HI_S32 status;
    HI_U32 nsec = 1, maxsec = 0;
    struct sockaddr_in serv_addr;

    if (ipString == HI_NULL)
    {
        return HI_FAILURE;
    }

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(ipport);
    serv_addr.sin_addr.s_addr = inet_addr(ipString);

    blockflag  = fcntl(sockfd, F_GETFL, 0);
    blockflag |= O_NONBLOCK;
    (void)fcntl(sockfd, F_SETFL, blockflag);
    do
    {
        status = connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(struct sockaddr_in));
        if (status == 0)
        {
            return HI_SUCCESS;
        }

        if (maxsec >= timeout_s)
        {
            break;
        }

        (void)sleep(nsec);
        maxsec += nsec;
        nsec <<= 1;
    } while (1);

    return HI_FAILURE;
}

HI_S32 Net_Socket_Accept(HI_S32 fd, HI_S32 *clientfd, HI_U32 timeout_ms)
{
    HI_U32 len;
    HI_S32 client;
    HI_S32 ret = HI_SUCCESS;
    fd_set acceptfd;
    struct timeval timeout_val;
    struct sockaddr_in client_addr;

    if (clientfd == HI_NULL)
    {
        return HI_FAILURE;
    }

    timeout_val.tv_sec  = timeout_ms / 1000;
    timeout_val.tv_usec = ((timeout_ms % 1000) * 1000);

    FD_ZERO(&acceptfd);
    FD_SET(fd, &acceptfd);

    ret = select(fd + 1, &acceptfd, NULL, NULL, &timeout_val);
    if (ret == -1)
    {
        perror("select error\n");
        return HI_FAILURE;
    }
    else if (ret == 0)
    {
        return HI_FAILURE;
    }

    if (FD_ISSET(fd, &acceptfd))
    {
        len = sizeof(struct sockaddr_in);
        client = accept(fd, (struct sockaddr *)&client_addr, &len);
        if (client == -1)
        {
            perror("Accept Error.\n");
            return HI_FAILURE;
        }

        *clientfd = client;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

HI_S32 Net_Socket_Recv(HI_S32 sockfd, HI_CHAR *buf, HI_U32 len, HI_U32 *recvlen, HI_U32 timeout_ms)
{
    HI_S32 recvbytes;
    fd_set readfd;
    struct timeval timeout_val;

    if ((buf == HI_NULL) || (recvlen == HI_NULL))
    {
        return HI_FAILURE;
    }

    timeout_val.tv_sec  = timeout_ms / 1000;
    timeout_val.tv_usec = ((timeout_ms % 1000) * 1000);
    FD_ZERO(&readfd);
    FD_SET(sockfd, &readfd);
    if (select(sockfd + 1, &readfd, NULL, NULL, &timeout_val) <= 0)
    {
        return HI_FAILURE;
    }

    if (FD_ISSET(sockfd, &readfd))
    {
        if ((recvbytes = recv(sockfd, buf, len, 0)) == -1)
        {
            perror("recv error!");
            return HI_FAILURE;
        }

        *recvlen = recvbytes;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

HI_S32 Net_Socket_RecvFrom(HI_S32 sockfd, HI_CHAR *buf, HI_U32 len, HI_U32 *recvlen, HI_CHAR *ipstring, HI_S16 *port,
                           HI_U32 timeout_ms)
{
    HI_S32 recvbytes;
    fd_set readfd;
    struct timeval timeout_val;
    struct sockaddr_in send_addr;
    socklen_t alen;

    if ((buf == HI_NULL) || (recvlen == HI_NULL))
    {
        return HI_FAILURE;
    }

    timeout_val.tv_sec  = timeout_ms / 1000;
    timeout_val.tv_usec = ((timeout_ms % 1000) * 1000);
    FD_ZERO(&readfd);
    FD_SET(sockfd, &readfd);
    if (select(sockfd + 1, &readfd, NULL, NULL, &timeout_val) <= 0)
    {
        return HI_FAILURE;
    }

    if (FD_ISSET(sockfd, &readfd))
    {
        alen = sizeof(struct sockaddr);
        if ((recvbytes = recvfrom(sockfd, buf, len, 0, (struct sockaddr *)&send_addr, &alen)) == -1)
        {
            perror("recv error");
            return HI_FAILURE;
        }

        if ((ipstring != HI_NULL) && (port != HI_NULL))
        {
            printf("recv form ip = %s port = %d success recvlen = %d \n", inet_ntoa(send_addr.sin_addr),
                   ntohs(send_addr.sin_port), recvbytes);
            strcpy(ipstring, inet_ntoa(send_addr.sin_addr));
            *port = ntohs(send_addr.sin_port);
        }

        *recvlen = recvbytes;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

HI_S32 Net_Socket_Send(HI_S32 sockfd, HI_CHAR *buf, HI_U32 len, HI_U32 *sendlen, HI_U32 timeout_ms)
{
    HI_S32 sendbytes;
    fd_set writefd;
    struct timeval timeout_val;

    if ((buf == HI_NULL) || (sendlen == HI_NULL))
    {
        return HI_FAILURE;
    }

    timeout_val.tv_sec  = timeout_ms / 1000;
    timeout_val.tv_usec = (timeout_ms % 1000) * 1000;
    FD_ZERO(&writefd);
    FD_SET(sockfd, &writefd);
    if (select(sockfd + 1, NULL, &writefd, NULL, &timeout_val) <= 0)
    {
        perror("write error\n");
        return HI_FAILURE;
    }

    if (FD_ISSET(sockfd, &writefd))
    {
        sendbytes = send(sockfd, buf, len, 0);
        if (sendbytes == -1)
        {
            perror("send error");
            return HI_FAILURE;
        }

        *sendlen = sendbytes;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

HI_S32 Net_Socket_SendTo(HI_S32 sockfd, HI_CHAR *buf, HI_U32 len, HI_U32 *sendlen, HI_CHAR *ipString, HI_S16 ipport,
                         HI_U32 timeout_ms)
{
    HI_S32 sendbytes;
    fd_set writefd;
    struct timeval timeout_val;
    struct sockaddr_in recv_addr;

    if ((buf == HI_NULL) || (sendlen == HI_NULL))
    {
        return HI_FAILURE;
    }

    timeout_val.tv_sec  = timeout_ms / 1000;
    timeout_val.tv_usec = (timeout_ms % 1000) * 1000;
    FD_ZERO(&writefd);
    FD_SET(sockfd, &writefd);
    if (select(sockfd + 1, NULL, &writefd, NULL, &timeout_val) <= 0)
    {
        perror("write error\n");
        return HI_FAILURE;
    }

    if (FD_ISSET(sockfd, &writefd))
    {
        recv_addr.sin_family = AF_INET;
        recv_addr.sin_port = htons(ipport);
        recv_addr.sin_addr.s_addr = inet_addr(ipString);

        sendbytes = sendto(sockfd, buf, len, 0, (struct sockaddr *)&recv_addr, sizeof(struct sockaddr));
        if (sendbytes == -1)
        {
            perror("send error!");
            return HI_FAILURE;
        }

        *sendlen = sendbytes;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

HI_CHAR * Net_Socket_GetSocketName(HI_S32 sockfd)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHAR *ipstr;
    struct sockaddr_in client_addr;
    socklen_t alen;

    alen = sizeof(struct sockaddr);
    ret = getsockname(sockfd, (struct sockaddr *)&client_addr, &alen);
    if (ret == -1)
    {
        perror("getsockname error\n");
        return HI_NULL;
    }

    ipstr = inet_ntoa(client_addr.sin_addr);

    return ipstr;
}

HI_CHAR * Net_Socket_GetPeerName(HI_S32 sockfd)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHAR *ipstr;
    struct sockaddr_in client_addr;
    socklen_t alen;

    alen = sizeof(struct sockaddr);
    ret = getpeername(sockfd, (struct sockaddr *)&client_addr, &alen);
    if (ret == -1)
    {
        perror("getpeername error\n");
        return HI_NULL;
    }

    ipstr = inet_ntoa(client_addr.sin_addr);

    return ipstr;
}


HI_S32 Net_Send(HI_S32 sockfd, HI_CHAR *buf, HI_U32 len, HI_CHAR *ipString, HI_S16 ipport)
{
    HI_S32 ret;
    HI_U32 errornum;
    HI_U32 sendbufflen;
    HI_U32 sendbufflen_act;
    HI_CHAR *psend = buf;

    if (buf == HI_NULL)
    {
        return HI_FAILURE;
    }

    if ((ipString == HI_NULL) && (SocketType == NET_SOCKET_UDP))
    {
        return HI_FAILURE;
    }

    errornum = 10;
    sendbufflen = len;
    while (sendbufflen)
    {
        if (SocketType == NET_SOCKET_TCP)
        {
            ret = Net_Socket_Send(sockfd, psend, sendbufflen, &sendbufflen_act, 2000);
        }
        else
        {
            ret = Net_Socket_SendTo(sockfd, psend, sendbufflen, &sendbufflen_act, ipString, ipport, 2000);
        }

        if (ret == HI_SUCCESS)
        {
            psend = psend + sendbufflen_act;
            sendbufflen = sendbufflen - sendbufflen_act;
        }
        else
        {
            errornum--;
            if (!errornum)
            {
                return HI_FAILURE;
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 Net_Recv(HI_S32 sockfd, HI_CHAR *buf, HI_U32 len, HI_CHAR *ipString, HI_S16 *ipport)
{
    HI_S32 ret;
    HI_U32 errornum;
    HI_U32 recvbufflen;
    HI_U32 recvlen_act;
    HI_CHAR *psend = buf;

    if (buf == HI_NULL)
    {
        return HI_FAILURE;
    }

    errornum = 10;
    recvbufflen = len;
    while (recvbufflen)
    {
        if (SocketType == NET_SOCKET_TCP)
        {
            ret = Net_Socket_Recv(sockfd, psend, recvbufflen, &recvlen_act, 2000);
        }
        else
        {
            ret = Net_Socket_RecvFrom(sockfd, psend, recvbufflen, &recvlen_act, ipString, ipport, 2000);
        }

        if (ret == HI_SUCCESS)
        {
            psend = psend + recvlen_act;
            recvbufflen = recvbufflen - recvlen_act;
        }
        else
        {
            errornum--;
            if (!errornum)
            {
                return HI_FAILURE;
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 Net_Upload(HI_S32 sockfd, HI_CHAR *filepath)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHAR cmdflag[16];
    HI_CHAR downloadbuff[PACKET_LEN];
    HI_BOOL bfile = HI_FALSE;
    HI_U32 msecbegin, msecend, msecall, msecall_total;
    HI_U32 len   = 0, send_len = 0;
    HI_U32 index = 0;
    HI_U32 maxindex = speedtest_loop_num;
    HI_U32 speed_integar, speed_decimal;
    HI_U64 speed;
    HI_S32 fd;
    off_t fd_len, fd_send_len;

    struct timeval tm;

    if (SocketType == NET_SOCKET_TCP)
    {
        strcpy(cmdflag, "TCP");
    }
    else
    {
        strcpy(cmdflag, "UDP");
    }

    if (strncmp(filepath, "none", 4) != 0)
    {
        bfile = HI_TRUE;
    }

    index = 0;

    if (bfile)
    {
        fd = open(filepath, O_RDONLY);
        if (fd == -1)
        {
            printf("open file %s error\n", filepath);
            return HI_FAILURE;
        }

        fd_len = lseek(fd, 0, SEEK_END);
        printf("Server %s Upload File %s ,File len %lu\n", cmdflag, filepath, fd_len);

        if (SocketType == NET_SOCKET_TCP)
        {
            ret = Net_Send(sockfd, (HI_CHAR*)&fd_len, sizeof(off_t), HI_NULL, 0);
        }
        else
        {
            ret = Net_Send(sockfd, (HI_CHAR*)&fd_len, sizeof(off_t), clientip, ClientPort);
        }

        lseek(fd, 0, SEEK_SET);
        len = 0;
        fd_send_len   = 0;
        msecall_total = 0;
        gettimeofday(&tm, HI_NULL);
        msecbegin = tm.tv_sec * 1000 + tm.tv_usec / 1000;
        while (fd_send_len < fd_len)
        {
            send_len = read(fd, downloadbuff, PACKET_LEN);
            if (send_len <= 0)
            {
                break;
            }

            if (SocketType == NET_SOCKET_TCP)
            {
                ret = Net_Send(sockfd, downloadbuff, send_len, HI_NULL, 0);
            }
            else
            {
                ret = Net_Send(sockfd, downloadbuff, send_len, clientip, ClientPort);
            }

            if (ret != HI_SUCCESS)
            {
                printf("UpLoad Send Data error \n");
                break;
            }

            fd_send_len = fd_send_len + send_len;

            len = len + send_len;

            //calculate speed when have send 1M data
            if (len >= speedtest_packet_len)
            {
                gettimeofday(&tm, HI_NULL);
                msecend = tm.tv_sec * 1000 + tm.tv_usec / 1000;
                msecall = msecend - msecbegin;
                msecall_total = msecall_total + msecall;

                speed = len;
                speed = speed * 1000 / msecall; //b/s
                speed_decimal = speed % speedtest_units;
                speed_decimal = speed_decimal * 100 / speedtest_units;
                speed_integar = speed / speedtest_units;
                printf("[FILE] send %lu%c  time = %dms , speed %d.%d%c/s \n",
                       fd_send_len / speedtest_units, speedtest_units_string, msecall,
                       speed_integar, speed_decimal, speedtest_units_string);
                len = 0;
                index++;

                gettimeofday(&tm, HI_NULL);
                msecbegin = tm.tv_sec * 1000 + tm.tv_usec / 1000;
            }
        }

        gettimeofday(&tm, HI_NULL);
        msecend = tm.tv_sec * 1000 + tm.tv_usec / 1000;
        msecall = msecend - msecbegin;
        msecall_total = msecall_total + msecall;

        close(fd);

        speed = fd_send_len;
        speed = speed * 1000 / msecall_total; //b/s

        speed_decimal = speed % speedtest_units;
        speed_decimal = speed_decimal * 100 / speedtest_units;
        speed_integar = speed / speedtest_units;

        printf("Server %s Upload send %lu%c time = %dms ,average speed %d.%d%c/s\n", cmdflag,
               fd_send_len / speedtest_units, speedtest_units_string, msecall_total,
               speed_integar, speed_decimal, speedtest_units_string);
    }
    else
    {
        printf("Server %s Upload PacketLen %dk,LoopNum %d\n", cmdflag,
               speedtest_packet_len / 1024,
               speedtest_loop_num);

        memset(downloadbuff, 0xaa, PACKET_LEN);

        len = 0;
        msecall_total = 0;
        gettimeofday(&tm, HI_NULL);
        msecbegin = tm.tv_sec * 1000 + tm.tv_usec / 1000;

        while (maxindex > index)
        {
            if (SocketType == NET_SOCKET_TCP)
            {
                ret = Net_Send(sockfd, downloadbuff, PACKET_LEN, HI_NULL, 0);
            }
            else
            {
                ret = Net_Send(sockfd, downloadbuff, PACKET_LEN, clientip, ClientPort);
            }

            if (ret != HI_SUCCESS)
            {
                printf("UpLoad Send Data error \n");
                return HI_FAILURE;
            }

            len = len + PACKET_LEN;
            if (len >= speedtest_packet_len)
            {
                gettimeofday(&tm, HI_NULL);
                msecend = tm.tv_sec * 1000 + tm.tv_usec / 1000;
                msecall = msecend - msecbegin;
                msecall_total = msecall_total + msecall;

                speed = len;
                speed = speed * 1000 / msecall; //b/s
                speed_decimal = speed % speedtest_units;
                speed_decimal = speed_decimal * 100 / speedtest_units;
                speed_integar = speed / speedtest_units;
                printf("[%d] send %d%c  time = %dms , speed %d.%d%c/s \n", index,
                       len / speedtest_units, speedtest_units_string, msecall,
                       speed_integar, speed_decimal, speedtest_units_string);

                len = 0;
                index++;
                if (SocketType == NET_SOCKET_UDP)
                {
                    sleep(1);
                }

                gettimeofday(&tm, HI_NULL);
                msecbegin = tm.tv_sec * 1000 + tm.tv_usec / 1000;
            }
        }

        speed = speedtest_packet_len * speedtest_loop_num;
        speed = speed * 1000 / msecall_total; //b/s

        speed_decimal = speed % speedtest_units;
        speed_decimal = speed_decimal * 100 / speedtest_units;
        speed_integar = speed / speedtest_units;

        printf("Server %s Upload send %d%c time = %dms ,average speed %d.%d%c/s\n", cmdflag,
               speedtest_packet_len * speedtest_loop_num / speedtest_units, speedtest_units_string, msecall_total,
               speed_integar, speed_decimal, speedtest_units_string);
    }

    return HI_SUCCESS;
}

HI_S32 Net_Download(HI_S32 sockfd, HI_CHAR *filepath)
{
    HI_S32 ret = HI_SUCCESS;
    HI_CHAR cmdflag[16];
    HI_CHAR downloadbuff[PACKET_LEN];
    HI_BOOL bfile = HI_FALSE;
    HI_U32 msecbegin, msecend, msecall, msecall_total;
    HI_U32 len   = 0, recv_len;
    HI_U32 index = 0;
    HI_U32 maxindex = speedtest_loop_num;
    HI_U32 speed_integar, speed_decimal;
    HI_U64 speed;
    HI_S32 fd;
    off_t fd_len, fd_recv_len;

    struct timeval tm;

    if (SocketType == NET_SOCKET_TCP)
    {
        strcpy(cmdflag, "TCP");
    }
    else
    {
        strcpy(cmdflag, "UDP");
    }

    printf("---------------------------%s---------------------------------\n", filepath);

    if (strncmp(filepath, "none", 4) != 0)
    {
        bfile = HI_TRUE;
    }

    index = 0;
    if (bfile)
    {
        fd = open(filepath, O_WRONLY | O_CREAT);
        if (fd == -1)
        {
            printf("open file %s error\n", filepath);
            return HI_FAILURE;
        }

        ret = Net_Recv(sockfd, (HI_CHAR *)&fd_len, sizeof(off_t), HI_NULL, HI_NULL);

        printf("Server %s Download File %s ,File len %lu\n", cmdflag, filepath, fd_len);
        len = 0;
        msecall_total = 0;
        fd_recv_len = 0;
        gettimeofday(&tm, HI_NULL);
        msecbegin = tm.tv_sec * 1000 + tm.tv_usec / 1000;
        while (fd_recv_len < fd_len)
        {
            if (fd_len - fd_recv_len >= PACKET_LEN)
            {
                recv_len = PACKET_LEN;
            }
            else
            {
                recv_len = fd_len - fd_recv_len;
            }

            ret = Net_Recv(sockfd, downloadbuff, recv_len, HI_NULL, HI_NULL);
            if (ret != HI_SUCCESS)
            {
                printf("Recv Data error \n");
                break;
            }

            if (recv_len != write(fd, downloadbuff, recv_len))
            {
                printf("write to file len error \n");
            }

            fd_recv_len = fd_recv_len + recv_len;
            len = len + recv_len;
            if (len >= speedtest_packet_len)
            {
                gettimeofday(&tm, HI_NULL);
                msecend   = tm.tv_sec * 1000 + tm.tv_usec / 1000;
                msecall   = msecend - msecbegin;
                msecbegin = msecend;
                msecall_total = msecall_total + msecall;

                speed = len;
                speed = speed * 1000 / msecall; //b/s
                speed_decimal = speed % speedtest_units;
                speed_decimal = speed_decimal * 100 / speedtest_units;
                speed_integar = speed / speedtest_units;
                printf("[FILE] recv %lu%c  time = %dms , speed %d.%d%c/s \n",
                       fd_recv_len / speedtest_units, speedtest_units_string, msecall,
                       speed_integar, speed_decimal, speedtest_units_string);

                len = 0;
                index++;
            }
        }

        gettimeofday(&tm, HI_NULL);
        msecend = tm.tv_sec * 1000 + tm.tv_usec / 1000;
        msecall = msecend - msecbegin;
        msecall_total = msecall_total + msecall;

        close(fd);

        speed = speedtest_packet_len * speedtest_loop_num;
        speed = speed * 1000 / msecall_total; //b/s

        speed_decimal = speed % speedtest_units;
        speed_decimal = speed_decimal * 100 / speedtest_units;
        speed_integar = speed / speedtest_units;

        printf("Server %s DownLoad recv %lu%c time = %dms ,average speed %d.%d%c/s\n", cmdflag,
               fd_recv_len / speedtest_units, speedtest_units_string, msecall_total,
               speed_integar, speed_decimal, speedtest_units_string);
        printf("------------------------------------------------------------\n");
    }
    else
    {
        printf("Server %s DownLoad PacketLen %dk,LoopNum %d\n", cmdflag,
               speedtest_packet_len / 1024,
               speedtest_loop_num);

        memset(downloadbuff, 0xff, PACKET_LEN);

        len = 0;
        msecall_total = 0;
        gettimeofday(&tm, HI_NULL);
        msecbegin = tm.tv_sec * 1000 + tm.tv_usec / 1000;

        while (maxindex > index)
        {
            ret = Net_Recv(sockfd, downloadbuff, PACKET_LEN, HI_NULL, HI_NULL);
            if (ret != HI_SUCCESS)
            {
                printf("Recv Data error \n");
                return HI_FAILURE;
            }

            len = len + PACKET_LEN;
            if (len >= speedtest_packet_len)
            {
                gettimeofday(&tm, HI_NULL);
                msecend = tm.tv_sec * 1000 + tm.tv_usec / 1000;
                msecall = msecend - msecbegin;
                msecall_total = msecall_total + msecall;

                speed = len;
                speed = speed * 1000 / msecall; //b/s
                speed_decimal = speed % speedtest_units;
                speed_decimal = speed_decimal * 100 / speedtest_units;
                speed_integar = speed / speedtest_units;
                printf("[%d] recv %d%c  time = %dms , speed %d.%d%c/s \n", index,
                       len / speedtest_units, speedtest_units_string, msecall,
                       speed_integar, speed_decimal, speedtest_units_string);

                len = 0;
                index++;
                gettimeofday(&tm, HI_NULL);
                msecbegin = tm.tv_sec * 1000 + tm.tv_usec / 1000;
            }
        }

        speed = speedtest_packet_len * speedtest_loop_num;
        speed = speed * 1000 / msecall_total; //b/s

        speed_decimal = speed % speedtest_units;
        speed_decimal = speed_decimal * 100 / speedtest_units;
        speed_integar = speed / speedtest_units;

        printf("Server %s Upload recv %d%c time = %dms ,average speed %d.%d%c/s\n", cmdflag,
               speedtest_packet_len * speedtest_loop_num / speedtest_units, speedtest_units_string, msecall_total,
               speed_integar, speed_decimal, speedtest_units_string);
        printf("------------------------------------------------------------\n");
    }

    return HI_SUCCESS;
}

HI_VOID TCP_Server(HI_S32 argc)
{
    HI_S32 ret;
    HI_CHAR recvbuff[PACKET_LEN];
    HI_U32 recvlen;
    HI_S32 clientsocket;

    clientsocket = (HI_S32)argc;
    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");
    printf("@@@@@@@@@@@@@@TCP Socket %d Recv begin @@@@@@@@@@@@@\n", clientsocket);
    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");

    while (1)
    {
        //Recognize the command head
        ret = Net_Recv(clientsocket, recvbuff, 1, HI_NULL, HI_NULL);
        if (ret != HI_SUCCESS)
        {
            continue;
        }

        if (recvbuff[0] != '$')
        {
            continue;
        }

        ret = Net_Recv(clientsocket, recvbuff, 3, HI_NULL, HI_NULL);
        if (ret != HI_SUCCESS)
        {
            continue;
        }

        if (recvbuff[2] != '$')
        {
            continue;
        }

        //Get command length
        recvlen = recvbuff[1] << 8;
        recvlen = recvlen + recvbuff[0];
        if (recvlen > PACKET_LEN)
        {
            continue;
        }

        memset(recvbuff, 0, PACKET_LEN);
        ret = Net_Recv(clientsocket, recvbuff, recvlen, HI_NULL, HI_NULL);
        if (ret != HI_SUCCESS)
        {
            printf("recv sockfd %d error \n", clientsocket);
            return;
        }

        printf("recv cmd:%s\n", recvbuff);
        if (strncmp(recvbuff, "close", 5) == 0)
        {
            break;
        }
        else if (strncmp(recvbuff, "speed", 5) == 0)
        {
            Net_Upload(clientsocket, recvbuff + 6);
        }
        else if (strncmp(recvbuff, "down", 4) == 0)
        {
            Net_Upload(clientsocket, recvbuff + 5);
        }
    }

    Net_Socket_Destroy(clientsocket);

    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");
    printf("@@@@@@@@@@@@@@@@TCP Socket %d close @@@@@@@@@@@@@@@\n", clientsocket);
    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");
}

HI_VOID UDP_Server(HI_S32 sockfd)
{
    HI_S32 ret;
    HI_CHAR recvbuff[PACKET_LEN];
    HI_U32 recvlen;

    printf("UDP socket %d recv begin \n", sockfd);

    while (1)
    {
        //Recognize the command head
        ret = Net_Recv(sockfd, recvbuff, 4, clientip, &ClientPort);
        if (ret != HI_SUCCESS)
        {
            continue;
        }

        if ((recvbuff[0] != '$') || (recvbuff[3] != '$'))
        {
            continue;
        }

        //Get command length
        recvlen = recvbuff[2] << 8;
        recvlen = recvlen + recvbuff[1];
        if (recvlen > PACKET_LEN)
        {
            continue;
        }

        memset(recvbuff, 0, PACKET_LEN);
        ret = Net_Recv(sockfd, recvbuff, recvlen, clientip, &ClientPort);
        if (ret != HI_SUCCESS)
        {
            continue;
        }

        printf("%s\n", recvbuff);
        if (strncmp(recvbuff, "close", 5) == 0)
        {
            break;
        }
        else if (strncmp(recvbuff, "speed", 5) == 0)
        {
            Net_Upload(sockfd, recvbuff + 6);
        }
        else if (strncmp(recvbuff, "down", 4) == 0)
        {
            printf("udp no support down test \n");
        }
    }
}

HI_S32 main_server()
{
    HI_S32 ret;
    HI_S32 serversocket;
    HI_S32 clientsocket;

    serversocket = Net_Socket_Create(SocketType);
    if (serversocket == HI_FAILURE)
    {
        printf("Create Socket Failure\n");
        return HI_FAILURE;
    }

    ret = Net_Socket_Bind(serversocket, ServerPort);
    if (ret != HI_SUCCESS)
    {
        printf("Bind Socket Failure\n");
        return HI_FAILURE;
    }

    if (SocketType == NET_SOCKET_TCP)
    {
        ret = Net_Socket_Listen(serversocket);
        if (ret != HI_SUCCESS)
        {
            printf("Listen Socket Failure\n");
            return HI_FAILURE;
        }

        printf("------------------------------------------------------------\n");
        printf("Server listening on TCP port %d\n", ServerPort);
        printf("------------------------------------------------------------\n");

        while (1)
        {
            ret = Net_Socket_Accept(serversocket, &clientsocket, 2000);
            if (ret != HI_SUCCESS)
            {
                continue;
            }

            printf("socket %d server ip = %s\n", clientsocket, Net_Socket_GetSocketName(clientsocket));
            printf("socket %d client ip = %s\n", clientsocket, Net_Socket_GetPeerName(clientsocket));

            TCP_Server(clientsocket);
            printf("------------------------------------------------------------\n");
            printf("Server listening on TCP port %d\n", ServerPort);
            printf("------------------------------------------------------------\n");
        }
    }
    else
    {
        printf("------------------------------------------------------------\n");
        printf("Server listening on UDP port %d\n", ServerPort);
        printf("------------------------------------------------------------\n");
        while (1)
        {
            UDP_Server(serversocket);
        }
    }

    Net_Socket_Destroy(serversocket);
    return HI_SUCCESS;
}

HI_S32 main_client_cmd(HI_S32 sockfd, HI_CHAR *cmdline)
{
    HI_U32 cmdlen = 0;
    HI_CHAR cmdhead[4];

    cmdlen = strlen(cmdline);
    cmdline[cmdlen - 1] = 0;
    cmdhead[0] = '$';
    cmdhead[1] = cmdlen & 0xff;
    cmdhead[2] = (cmdlen >> 8) & 0xff;
    cmdhead[3] = '$';
    Net_Send(sockfd, cmdhead, 4, serverip, ServerPort);
    Net_Send(sockfd, cmdline, cmdlen, serverip, ServerPort);
    if (strncmp(cmdline, "speed", 5) == 0)
    {
        Net_Download(sockfd, cmdline + 6);
    }

    if (strncmp(cmdline, "down", 4) == 0)
    {
        if (SocketType == NET_SOCKET_TCP)
        {
            Net_Download(sockfd, cmdline + 5);
        }
        else
        {
            printf("udp no support down test \n");
        }
    }
    return HI_SUCCESS;
}

HI_S32 main_client(HI_CHAR *cmdline)
{
    HI_S32 i;
    HI_S32 ret;
    HI_CHAR sendbuff[PACKET_LEN];
    HI_CHAR cmdflag[16];
    HI_S32 clientsocket;

    clientsocket = Net_Socket_Create(SocketType);
    if (clientsocket == HI_FAILURE)
    {
        printf("Create Socket Failure\n");
        return HI_FAILURE;
    }

    if (SocketType == NET_SOCKET_TCP)
    {
        for (i = 0; i < 3; i++)
        {
            ret = Net_Socket_Connect(clientsocket, serverip, ServerPort, 32);
            if (ret == HI_SUCCESS)
            {
                break;
            }
        }

        if (i == 3)
        {
            printf("------------------------------------------------------------\n");
            printf("Client Connecting on TCP ip %s port %d Failure\n", serverip, ServerPort);
            printf("------------------------------------------------------------\n");

            return HI_FAILURE;
        }
        else
        {
            printf("------------------------------------------------------------\n");
            printf("Client Connecting on TCP ip %s port %d Success\n", serverip, ServerPort);
            printf("------------------------------------------------------------\n");
        }

        Net_Socket_GetPeerName(clientsocket);
        strcpy(cmdflag, "TCP#");
    }
    else
    {
        printf("------------------------------------------------------------\n");
        printf("Client Connecting on UDP port %d Success\n", ServerPort);
        printf("------------------------------------------------------------\n");
        strcpy(cmdflag, "UDP#");
    }

    if (cmdline == HI_NULL)
    {
        for (;;)
        {
            printf("%s ", cmdflag);
            memset(sendbuff, 0, PACKET_LEN);
            fgets(sendbuff, PACKET_LEN, stdin);
            main_client_cmd(clientsocket, sendbuff);
            if (strncmp(sendbuff, "close", 5) == 0)
            {
                break;
            }
        }
    }
    else
    {
        main_client_cmd(clientsocket, cmdline);
    }

    Net_Socket_Destroy(clientsocket);

    printf("---------------------------------Client END----------------------------\n");
    return HI_SUCCESS;
}

HI_S32 main(int argc, char *argv[])
{
    HI_S32 opt;
    HI_BOOL s, c, d;

    HI_CHAR help[] = "\nsocket [options] [parameter]\n\n" \
                   "\toptions:\n" \
                   "\t -s : server \n" \
                   "\t -c [ip] : client \n" \
                   "\t -t time out\n" \
                   "\t -p [portid] : server port\n" \
                   "\t -u : udp mode\n" \
                   "\t -d : down load test mode  only for client \n" \
                   "\t -m [num] : down load test mode packet (mb)\n" \
                   "\t -l [num] : down load test mode loop num \n" \
                   "\t -f [m/k/b] : down load test mode display with mb/kb/b per sec \n" \
                   "\t c&s only select one\n";

    s = c = d = HI_FALSE;

    while ((opt = getopt(argc, argv, ":?sc:t:up:dm:l:f:")) != -1)
    {
        switch (opt)
        {
        case '?':
            printf("%s", help);
            break;
        case 's':
            s = HI_TRUE;
            break;
        case 'c':
            strncpy(serverip, optarg, 64);
            c = HI_TRUE;
            break;
        case 't':
            TimeOutSec = strtol(optarg, 0, 0);
            break;
        case 'u':
            SocketType = NET_SOCKET_UDP;
            break;
        case 'p':
            ServerPort = strtol(optarg, 0, 0);
            break;
        case 'd':
            d = HI_TRUE;
            break;
        case 'm':
            speedtest_packet_len = strtol(optarg, 0, 0) * 1024 * 1024;
            break;
        case 'l':
            speedtest_loop_num = strtol(optarg, 0, 0);
            break;
        case 'f':
            if (optarg[0] == 'm')
            {
                speedtest_units_string = 'm';
                speedtest_units = 1024 * 1024;
            }
            else if (optarg[0] == 'k')
            {
                speedtest_units_string = 'k';
                speedtest_units = 1024;
            }
            else if (optarg[0] == 'b')
            {
                speedtest_units_string = 'b';
                speedtest_units = 1;
            }

            break;
        default:
            break;
        }
    }

    if ((s == HI_TRUE) && (c == HI_TRUE))
    {
        printf("%s", help);
        return HI_FAILURE;
    }

    if (s == HI_TRUE)
    {
        main_server();
    }

    if (c == HI_TRUE)
    {
        if (d == HI_TRUE)
        {
            main_client("speed none");
        }
        else
        {
            main_client(HI_NULL);
        }
    }

    return HI_SUCCESS;
}
