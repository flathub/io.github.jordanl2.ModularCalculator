#!/bin/sh

cd "$(dirname "$0/")"

PREFIX=$FLATPAK_DEST

pip3 install --no-deps --no-build-isolation --no-index --find-links . --prefix=${PREFIX} .
for r in 16x16 24x24 48x48 64x64 128x128 256x256
do
	install -Dm644 icons/$r.png $PREFIX/share/icons/hicolor/$r/apps/io.github.jordanl2.ModularCalculator.png
done
install -D ModularCalculator.desktop $PREFIX/share/applications/io.github.jordanl2.ModularCalculator.desktop
install -D io.github.jordanl2.ModularCalculator.appdata.xml $PREFIX/share/metainfo/io.github.jordanl2.ModularCalculator.metainfo.xml

cp -r config/ModularCalculator ${PREFIX}/share/ModularCalculator
