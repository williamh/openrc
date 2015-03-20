# Copyright (c) 2014 Ralph Sennhauser <sera@gentoo.org>
# Released under the 2-clause BSD license.

PKG_PREFIX?=    /usr/pkg
SFX=            .Minix.in

# dynamic loader is in /usr
MKSTATICLIBS=	yes
PROGLDFLAGS=	-static

MKNET=no
