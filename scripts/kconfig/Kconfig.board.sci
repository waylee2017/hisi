#+++++++++++++++++++++++++++++++++++++++++++++++++++
menu "SCI Config"

config HI_SCI_NUMBER
        int "Sci Number"
        default 1
        range 0 2
        help
          Configure the number of board sci.1 for Hi3716MV310 and Hi3110EV500,2 for Hi3716MV330.

source "scripts/kconfig/Kconfig.board.sci0"
if HI3716MV330
source "scripts/kconfig/Kconfig.board.sci1"
endif
endmenu
#+++++++++++++++++++++++++++++++++++++++++++++++++++

