#!/bin/sh

install -d -m 755 $DESTDIR/usr/bin/
install -d -m 755 $DESTDIR/usr/share/pixmaps
install -m 755 src/install-upgrade-kernel-ext-usb $DESTDIR/usr/bin/ 
install -m 755 src/make_initrd_update_grub_ext_usb $DESTDIR/usr/bin/ 
install -m 644 src/install-upgrade-kernel-ext-usb.png $DESTDIR/usr/share/pixmaps/

for i in `ls po/*.mo|sed "s|po/\(.*\).mo|\1|"`; do
	install -d -m 755 $DESTDIR/usr/share/locale/${i}/LC_MESSAGES
	install -m 644 po/${i}.mo \
	$DESTDIR/usr/share/locale/${i}/LC_MESSAGES/install-upgrade-kernel-ext-usb.mo
done
