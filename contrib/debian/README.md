
Debian
====================
This directory contains files used to package rhyptond/rhypton-qt
for Debian-based Linux systems. If you compile rhyptond/rhypton-qt yourself, there are some useful files here.

## rhypton: URI support ##


rhypton-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install rhypton-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your rhypton-qt binary to `/usr/bin`
and the `../../share/pixmaps/rhypton128.png` to `/usr/share/pixmaps`

rhypton-qt.protocol (KDE)

