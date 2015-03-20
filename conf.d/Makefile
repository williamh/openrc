include ../mk/net.mk

DIR=	${CONFDIR}
CONF=	bootmisc fsck hostname localmount \
		${CONF-${OS}}

MK=	../mk
include ${MK}/os.mk

ifeq (${MKNET},yes)
CONF+= network staticroute
TARGETS+=	network staticroute
CLEANFILES+=	network staticroute
endif

CONF-extra=	netmount urandom tmpfiles

CONF-${OS}=	${CONF-extra}

CONF-FreeBSD+=	ipfw moused powerd rarpd savecore syscons

CONF-Linux+=	consolefont devfs dmesg hwclock keymaps killprocs modules

CONF-Minix=

CONF-NetBSD+=	moused rarpd savecore

include ${MK}/scripts.mk

network: network.in network${SFX}
	cat $^ > $@

staticroute: staticroute${SFX}
	cp $@${SFX} $@
