#include <xtensa/coreasm.h>
#include <xtensa/cacheasm.h>
#include <xtensa/cacheattrasm.h>
#include <xtensa/xtensa-xer.h>
#include <xtensa/config/specreg.h>
#include <xtensa/config/system.h>	/* for XSHAL_USE_ABSOLUTE_LITERALS only */

/*
* extern unsigned map_region (unsigned vpn, unsigned ppn);
*
* Maps the selected virtual 512MB segment to the specified physical
* 512MB segment. (Lower 29 bits of both parameters are ignored.)
* VPN in current segment case is not handled
*
* Entry:
* a2 VPN/TLB entry to set
* a3 PPN to target
* Exit:
* None
*/
.text
.global map_region
.type map_region,@function
.align 4
map_region:
entry sp, 64
# if XCHAL_HAVE_XLT_CACHEATTR
movi a5, 0xE0000000 // tlb mask, upper 3 bits
movi a6, trans // PC where ITLB is set
mov a10, a3
and a4, a3, a5 // upper 3 bits of PPN area
and a7, a2, a5 // upper 3 bits of VPN area
and a6, a6, a5 // upper 3 bits of local PC area
beq a7, a6, overlap // branch if current PC's region
// Note that in the WITLB section, we don't do any load/stores.
// May not be an issue, but it's important in the DTLB case.
ritlb1 a5, a7 // get current PPN+AM of segment for I
rdtlb1 a6, a7 // get current PPN+AM of segment for D
extui a5, a5, 0, 4 // keep only AM for I
extui a6, a6, 0, 4 // keep only AM for D
add a2, a4, a5 // combine new PPN with orig AM for I
add a3, a4, a6 // combine new PPN with orig AM for D
trans: witlb a2, a7 // write new tlb mapping for I
wdtlb a3, a7 // write new tlb mapping for D
isync
dsync
j end
overlap:
// Handle if VPN is current segment
break 1,0
end:
# endif
ritlb1 a5, a7 // get current PPN+AM of segment for I
rdtlb1 a6, a7 // get current PPN+AM of segment for D
retw
