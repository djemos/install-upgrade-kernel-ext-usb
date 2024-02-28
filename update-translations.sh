#!/bin/sh

intltool-extract --type="gettext/ini" install-upgrade-kernel-ext-usb.desktop.in
xgettext --from-code=utf-8 -L shell -o po/install-upgrade-kernel-ext-usb.pot src/install-upgrade-kernel-ext-usb
xgettext --from-code=utf-8 -j -L C -kN_ -o po/install-upgrade-kernel-ext-usb.pot install-upgrade-kernel-ext-usb.desktop.in.h

rm install-upgrade-kernel-ext-usb.desktop.in.h

cd po
for i in `ls *.po`; do
	msgmerge -U $i install-upgrade-kernel-ext-usb.pot
done
rm -f ./*~

