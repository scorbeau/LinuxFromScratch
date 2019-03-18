#!/bin/bash
#
# Cross compiler and Linux generation scripts
# (c)2014-2018 Jean-François DEL NERO
#
# Common setup
#

#
# System base + Cross compiler
#

# "Local" build tools/libs 
SRC_PACKAGE_BUILD_GPERF="http://ftp.gnu.org/pub/gnu/gperf/gperf-3.0.4.tar.gz"
SRC_PACKAGE_BUILD_LIBFFI="https://www.mirrorservice.org/sites/sourceware.org/pub/libffi/libffi-3.2.tar.gz"
SRC_PACKAGE_BUILD_XMLEXPAT="https://downloads.sourceforge.net/project/expat/expat/2.2.5/expat-2.2.5.tar.bz2"
SRC_PACKAGE_BUILD_LIBXML2="http://xmlsoft.org/sources/libxml2-2.9.7.tar.gz"

SRC_PACKAGE_BINUTILS="http://ftp.gnu.org/gnu/binutils/binutils-2.28.tar.gz"

SRC_PACKAGE_GCC="http://ftp.gnu.org/gnu/gcc/gcc-6.4.0/gcc-6.4.0.tar.gz"
SRC_PACKAGE_GCC_MPFR="http://ftp.gnu.org/gnu/mpfr/mpfr-3.1.2.tar.xz"
SRC_PACKAGE_GCC_GMP="https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz"
SRC_PACKAGE_GCC_MPC="http://ftp.gnu.org/gnu/mpc/mpc-1.0.3.tar.gz"
SRC_PACKAGE_GCC_ISL="ftp://gcc.gnu.org/pub/gcc/infrastructure/isl-0.15.tar.bz2"
SRC_PACKAGE_GCC_CLOOG="ftp://gcc.gnu.org/pub/gcc/infrastructure/cloog-0.18.1.tar.gz"

SRC_PACKAGE_GLIBC="http://ftp.gnu.org/gnu/glibc/glibc-2.25.tar.xz"

SRC_PACKAGE_BUSYBOX="http://busybox.net/downloads/busybox-1.27.2.tar.bz2"
SRC_PACKAGE_UTILLINUX="https://www.kernel.org/pub/linux/utils/util-linux/v2.31/util-linux-2.31.tar.gz"

SRC_PACKAGE_LIBELF="https://fossies.org/linux/misc/old/libelf-0.8.13.tar.gz"

SRC_PACKAGE_LIBFFI="https://www.mirrorservice.org/sites/sourceware.org/pub/libffi/libffi-3.2.tar.gz"
SRC_PACKAGE_LIBXML2="http://xmlsoft.org/sources/libxml2-2.9.7.tar.gz"
SRC_PACKAGE_XMLEXPAT="https://downloads.sourceforge.net/project/expat/expat/2.2.5/expat-2.2.5.tar.bz2"
SRC_PACKAGE_ZLIB="http://zlib.net/zlib-1.2.11.tar.gz"
SRC_PACKAGE_LIBEVENT="https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz"

#
# Debug support
#
CUR_PART=${DEBUG_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_GDB="https://ftp.gnu.org/gnu/gdb/gdb-8.1.tar.gz"
SRC_PACKAGE_STRACE="https://downloads.sourceforge.net/project/strace/strace/4.20/strace-4.20.tar.xz"
#SRC_PACKAGE_LTRACE="https://fossies.org/linux/misc/ltrace-0.7.3.tar.gz"
SRC_PACKAGE_VALGRIND="ftp://sourceware.org/pub/valgrind/valgrind-3.13.0.tar.bz2"

fi

#
# Network support
#

CUR_PART=${NETWORK_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_LIBMNL="http://netfilter.org/projects/libmnl/files/libmnl-1.0.4.tar.bz2"
SRC_PACKAGE_LIBNFTNL="https://www.netfilter.org/projects/libnftnl/files/libnftnl-1.0.9.tar.bz2"
SRC_PACKAGE_IPTABLES="https://www.netfilter.org/projects/iptables/files/iptables-1.6.1.tar.bz2"
SRC_PACKAGE_DHCPSERVER="ftp://ftp.isc.org/isc/dhcp/4.4.1/dhcp-4.4.1.tar.gz"
SRC_PACKAGE_DHCPSERVER_PATCH_001="http://wiki.beyondlogic.org/patches/dhcp-4.3.0b1.bind_arm-linux-gnueabi.patch"
SRC_PACKAGE_DHCPSERVER_PATCH_002="http://wiki.beyondlogic.org/patches/bind-9.9.5rc1.gen_crosscompile.patch"

fi

#
# Wireless support
#
CUR_PART=${WIRELESS_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_WIRELESSTOOLS="http://www.labs.hpe.com/personal/Jean_Tourrilhes/Linux/wireless_tools.29.tar.gz"
SRC_PACKAGE_LIBNL3="https://www.infradead.org/~tgr/libnl/files/libnl-3.2.25.tar.gz"
SRC_PACKAGE_LIBNL1="http://www.infradead.org/~tgr/libnl/files/libnl-1.1.4.tar.gz"
SRC_PACKAGE_IW="https://www.kernel.org/pub/software/network/iw/iw-4.14.tar.gz"
SRC_PACKAGE_WPASUPPLICANT="http://w1.fi/releases/wpa_supplicant-2.6.tar.gz"
SRC_PACKAGE_HOSTAPD="http://w1.fi/releases/hostapd-2.6.tar.gz"
SRC_PACKAGE_RFKILL="https://www.kernel.org/pub/software/network/rfkill/rfkill-0.5.tar.gz"

fi

#
# Services
#

SRC_PACKAGE_OPENSSL="ftp://ftp.openssl.org/source/openssl-1.0.2r.tar.gz"
SRC_PACKAGE_OPENSSH="http://ftp.fr.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-7.3p1.tar.gz"
SRC_PACKAGE_NTP="http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-4.2.8p10.tar.gz"
SRC_PACKAGE_VSFTPD="https://security.appspot.com/downloads/vsftpd-3.0.3.tar.gz"
SRC_PACKAGE_LIGHTTPD="https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.49.tar.gz"
#SRC_PACKAGE_CVS=cvs-1.11.23.tar.gz
SRC_PACKAGE_PXESERVER="https://github.com/jfdelnero/pxe-server/releases/download/PXE_1_4_2/pxe-1.4.2.tar.gz"
SRC_PACKAGE_TFTPD="https://kernel.org/pub/software/network/tftp/tftp-hpa/tftp-hpa-5.2.tar.gz"
SRC_PACKAGE_UMTPRD="https://github.com/viveris/uMTP-Responder/archive/umtprd-0.8.6.tar.gz"

SRC_PACKAGE_LIBGMP="https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz"
SRC_PACKAGE_MAILUTILS="ftp://ftp.gnu.org/gnu/mailutils/mailutils-3.5.tar.xz"
SRC_PACKAGE_NETTLE="https://ftp.gnu.org/gnu/nettle/nettle-3.4.1.tar.gz"
SRC_PACKAGE_GNUTLS="https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/gnutls-3.6.6.tar.xz"
SRC_PACKAGE_MSMTP="https://marlam.de/msmtp/releases/msmtp-1.8.2.tar.xz"

#
# Graphic Stack
#
CUR_PART=${GFX_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_LIBPNG="ftp://ftp-osl.osuosl.org/pub/libpng/src/libpng16/libpng-1.6.34.tar.xz"
#SRC_PACKAGE_LIBPCIACCESS="https://www.x.org/archive/individual/lib/libpciaccess-0.14.tar.gz"
SRC_PACKAGE_LIBDRM="https://dri.freedesktop.org/libdrm/libdrm-2.4.92.tar.gz"
SRC_PACKAGE_MESA="https://mesa.freedesktop.org/archive/mesa-18.1.1.tar.xz"
SRC_PACKAGE_GLEW="https://downloads.sourceforge.net/project/glew/glew/2.1.0/glew-2.1.0.tgz"
SRC_PACKAGE_GLU="ftp://ftp.freedesktop.org/pub/mesa/glu/glu-9.0.0.tar.gz"
#SRC_PACKAGE_GLUT=glut.tar.gz

SRC_PACKAGE_FREETYPE="https://downloads.sourceforge.net/project/freetype/freetype2/2.8.1/freetype-2.8.1.tar.bz2"
SRC_PACKAGE_FONTCONFIG="https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.12.4.tar.bz2"
SRC_PACKAGE_DIRECTFB="https://github.com/Distrotech/DirectFB/archive/DIRECTFB_1_7_7.tar.gz"
SRC_PACKAGE_SDL="https://www.libsdl.org/release/SDL2-2.0.8.tar.gz"
SRC_PACKAGE_SDL_TTF="https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14.tar.gz"
SRC_PACKAGE_SDL_NET="https://www.libsdl.org/projects/SDL_net/release/SDL2_net-2.0.1.tar.gz"

# Default Mesa 3D setting : software raster only.
export MESA_DRI_DRV="swrast"
export MESA_GALLIUM_DRV="swrast"
export DRM_SUPPORT=""

fi

#
# Audio Stack
#
CUR_PART=${AUDIO_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_ALSALIB="ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.1.6.tar.bz2"
SRC_PACKAGE_ALSAUTILS="ftp://ftp.alsa-project.org/pub/utils/alsa-utils-1.1.6.tar.bz2"
SRC_PACKAGE_SDLMIXER="https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.2.tar.gz"
fi

#
# Wayland
#

CUR_PART=${WAYLAND_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_MTDEV="http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.gz"
SRC_PACKAGE_LIBEVDEV="https://www.freedesktop.org/software/libevdev/libevdev-1.5.6.tar.xz"

SRC_PACKAGE_ATTR="https://download-mirror.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz"
SRC_PACKAGE_LIBCAP="https://ftp.osuosl.org/pub/blfs/conglomeration/libcap/libcap-2.25.tar.xz"
SRC_PACKAGE_UTILLINUX="http://ftp.free.fr/mirrors/ftp.kernel.org/linux/utils/util-linux/v2.31/util-linux-2.31.tar.xz"
SRC_PACKAGE_SYSTEMD="https://www.freedesktop.org/software/systemd/systemd-221.tar.xz"

SRC_PACKAGE_EUDEV="https://dev.gentoo.org/~blueness/eudev/eudev-3.2.5.tar.gz"
SRC_PACKAGE_LIBINPUT="https://www.freedesktop.org/software/libinput/libinput-1.8.4.tar.xz"
SRC_PACKAGE_LIBXKBCOMMON="https://xkbcommon.org/download/libxkbcommon-0.8.0.tar.xz"
SRC_PACKAGE_PIXMAN="https://cairographics.org/releases/pixman-0.34.0.tar.gz"
SRC_PACKAGE_CAIRO="https://www.cairographics.org/releases/cairo-1.14.12.tar.xz"
SRC_PACKAGE_LIBPAM="http://www.linux-pam.org/library/Linux-PAM-1.3.0.tar.gz"
SRC_PACKAGE_DBUS="https://dbus.freedesktop.org/releases/dbus/dbus-1.13.4.tar.gz"

SRC_PACKAGE_WAYLAND="https://wayland.freedesktop.org/releases/wayland-1.15.0.tar.xz"
SRC_PACKAGE_WAYLANDPROTOCOLS="https://wayland.freedesktop.org/releases/wayland-protocols-1.14.tar.xz"
SRC_PACKAGE_WAYLANDWESTON="https://wayland.freedesktop.org/releases/weston-4.0.0.tar.xz"

fi

#
# Misc
#

CUR_PART=${HDD_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_SDPARM="https://fossies.org/linux/misc/sdparm-1.10.tgz"
SRC_PACKAGE_HDIDLE="http://sources.openelec.tv/mirror/hd-idle/hd-idle-1.04.tgz"

fi

#SRC_PACKAGE_PYTHON="https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz"
SRC_PACKAGE_PERL="https://www.cpan.org/src/5.0/perl-5.28.0.tar.gz"
SRC_PACKAGE_PERLCROSS="https://github.com/arsv/perl-cross/releases/download/1.2/perl-cross-1.2.tar.gz"
#SRC_PACKAGE_LIBUSB=libusb-1.0.21.tar.bz2
#SRC_PACKAGE_LIBUSBGADGET=libusb-gadget.tar.gz

SRC_PACKAGE_LIBNCURSES="https://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz"
SRC_PACKAGE_NANOEDITOR="https://www.nano-editor.org/dist/v2.9/nano-2.9.8.tar.gz"
SRC_PACKAGE_LIBAIO="http://releases.pagure.org/libaio/libaio-0.3.111.tar.gz"

SRC_PACKAGE_LIBCURL="https://curl.haxx.se/download/curl-7.63.0.tar.gz"

SRC_PACKAGE_E2FSPROGS="https://mirrors.edge.kernel.org/pub/linux/kernel/people/tytso/e2fsprogs/v1.44.5/e2fsprogs-1.44.5.tar.gz"

#
# Target build system
#

CUR_PART=${TARGET_BUILD_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

# Target binutils/gcc
SRC_PACKAGE_TARGET_BINUTILS=${SRC_PACKAGE_BINUTILS}

SRC_PACKAGE_TARGET_GCC=${SRC_PACKAGE_GCC}
SRC_PACKAGE_TARGET_GCC_MPFR=${SRC_PACKAGE_GCC_MPFR}
SRC_PACKAGE_TARGET_GCC_GMP=${SRC_PACKAGE_GCC_GMP}
SRC_PACKAGE_TARGET_GCC_MPC=${SRC_PACKAGE_GCC_MPC}
SRC_PACKAGE_TARGET_GCC_ISL=${SRC_PACKAGE_GCC_ISL}
SRC_PACKAGE_TARGET_GCC_CLOOG=${SRC_PACKAGE_GCC_CLOOG}

SRC_PACKAGE_TARGET_MAKE="http://ftp.gnu.org/gnu/make/make-4.2.1.tar.gz"

fi

#
# Games
#
CUR_PART=${GAMES_SUPPORT:-"UNDEF"}
if [ "$CUR_PART" != "UNDEF" ]
then

SRC_PACKAGE_MAME="https://github.com/mamedev/mame/archive/mame0198.tar.gz"
#SRC_PACKAGE_QUAKE3="quake3-master.tar.gz"
SRC_PACKAGE_DOOM="https://www.chocolate-doom.org/downloads/3.0.0/chocolate-doom-3.0.0.tar.gz"
SRC_PACKAGE_ROTT="https://icculus.org/rott/releases/rott-1.1.2.tar.gz"

fi

#SRC_PACKAGE_PCIUTILS="https://github.com/pciutils/pciutils/archive/v3.6.0.tar.gz"
#SRC_PACKAGE_FLASHROM="https://download.flashrom.org/releases/flashrom-1.0.tar.bz2"
