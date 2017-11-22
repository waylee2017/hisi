#!/bin/sh
###############################################################################
# global variables 
DEVICE_LIST="9271 3070 5370 8178 8176 002b 8179 0179 7601"
DEVICE=""
INTERFACE=""
HWIF=""
###############################################################################
set_device_param ()
{
	HWIF=$2
	
	case $1 in
	9271)
		INTERFACE=wlan0
		DEVICE="ar9271"
		;;
	3070)
		INTERFACE=ra0
		DEVICE="rt3070"
		;;
	5370)
		INTERFACE=ra0
		DEVICE="rt5370"
		;;
	8178)
		INTERFACE=wlan0
		DEVICE="rtl8188cu"
		;;
	8176)
		INTERFACE=wlan0
		DEVICE="rtl8188cu"
		;;
	002b)
		INTERFACE=wlan0
		DEVICE="ar9285"
		;;
	8179)
		INTERFACE=wlan0
		DEVICE="rtl8188eu"
		;;
	0179)
		INTERFACE=wlan0
		DEVICE="rtl8188eu"
		;;
	7601)
		INTERFACE=wlan0
		DEVICE="mt7601u"
		;;
	*)
		echo "this device not supported."
		;;
	esac
}
###############################################################################
dev_find ()
{
	local obj=""
	local msg_pci=""
	local msg_usb=""
	local result=""
	local device_id=""
	local hw_interface=""

	if [ $1 = "-w" ];then
		sleep 1s
	fi
	
	msg_usb=`lsusb`
	if [ -z "$msg_usb" ]
	then 
		msg_usb="0"
	fi

	if [ -e /sys/bus/pci/devices ]
	then
		msg_pci=`lspci`
		msg_pci=${msg_pci:34:29}
	fi

	if [ -z "$msg_usb" -a -z "$msg_pci" ]
	then
		echo "no device found."
		return
	fi

	for obj in ${DEVICE_LIST}
	do 
		result=$(echo $msg_pci | grep "$obj")
		if [ ! -z "$result" ];then
			device_id=$obj
			hw_interface="pcie"
			break
		fi
		
		result=$(echo $msg_usb | grep "$obj")
		if [ ! -z "$result" ];then
			device_id=$obj
			hw_interface="usb"
			break
		fi
	done

	if [ -z "$device_id" ];then
		echo "Device not supported"
		exit 1
	fi
	
	for obj in ${DEVICE_LIST}
	do
		if [ "$device_id" = $obj ];then
			set_device_param $device_id $hw_interface
		fi
	done
}

###############################################################################
kill_proc ()
{
	pid=`ps | grep $1 | grep -v grep | awk '{print $1}'`

	if [ "$pid" = "" ]; then
		echo process not exist
	else
		kill $pid
	fi
}

shutdown_ap ()
{
	kill_proc hostapd
	#kill_proc udhcpd
	
	ifconfig $INTERFACE down
	wifi_drv_unload.${HWIF}_${DEVICE}ap
}

shutdown_sta ()
{
	kill_proc wpa_supplicant
	#kill_proc udhcpc
	
	ifconfig $INTERFACE down
	wifi_drv_unload.${HWIF}_${DEVICE}sta
}

enter_suspend_state ()
{
	local mode=""
	local msg_iw=""
	
	test -d /var/run/wifi || mkdir -p /var/run/wifi
			
	msg_iw=`iwconfig $INTERFACE`
	mode=$(echo $msg_iw | sed 's/.* Mode://' | awk '{print $1}')
	if [ -z "$mode" ];then
		mode="OFF"
		echo "Mode=$mode" > /var/run/wifi/status
	fi
	
	case $mode in
	Master)
		shutdown_ap
	;;
	Auto)
		shutdown_sta
	;;
	Managed)
		shutdown_sta
	;;
	*)
		echo "WiFi suspend: Power off or unsupported mode"
	;;
	esac
	echo "Mode=$mode" > /var/run/wifi/status
}

enter_wakeup_state ()
{
	local mode=""
	local essid=""
	local encrypt=""
	local psswd=""
	local line=""
	local type=""
	
	if [ -f "/var/run/wifi/status" ];then
		while read line
		do
			type=$(echo $line | sed 's/=.*//')
			case $type in
			Mode)
				mode=$(echo $line | sed 's/.*Mode=//')
			;;			
			Essid)
				essid=$(echo $line | sed 's/.*Essid=//')
			;;		
			Encrypt)
				encrypt=$(echo $line | sed 's/.*Encrypt=//')
			;;			
			Password)
				psswd=$(echo $line | sed 's/.*Password=//')
			;;
			*)
				echo "WiFi status: Invalid line"
			;;
			esac
		done < /var/run/wifi/status
	else
		return
	fi

	case $mode in
	Master)
		wifi_drv_load.${HWIF}_${DEVICE}ap
		if [ $DEVICE != "rt3070" -a $DEVICE != "rt5370" -a $DEVICE != "mt7601u" ];then
			hostapd -B /etc/hostapd/hostapd.cfg
		fi
		ifconfig $INTERFACE up
		#busybox udhcpd -fS /etc/udhcpdap.conf &
	;;
	Auto)
		wifi_drv_load.${HWIF}_${DEVICE}sta
		ifconfig $INTERFACE up
	;;
	Managed)
		wifi_drv_load.${HWIF}_${DEVICE}sta
		ifconfig $INTERFACE up
		#sta_connect.sh $INTERFACE "$essid" $encrypt "$psswd" &
		#udhcpc -i $INTERFACE &
	;;
	*)
		echo "WiFi wakeup: Power off or unsupported mode"
	;;
	esac
}

if [ $# != 1 ];then
	exit 1
else
	dev_find $1
	
	if [ $1 = "-s" ];then
		enter_suspend_state
	fi
	if [ $1 = "-w" ];then
		enter_wakeup_state
	fi
fi
exit 0
