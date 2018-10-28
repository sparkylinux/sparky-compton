#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-compton
	rm -f /usr/lib/sparkycenter/look/sparky-compton.desktop
	rm -f /usr/share/applications/sparky-compton.desktop
	rm -f /usr/share/menu/sparky-compton
	rm -rf /usr/share/sparky/sparky-compton
	rm -f /opt/sparky/compton.conf
else
	cp bin/* /usr/bin/
	if [ ! -d /usr/lib/sparkycenter/look ]; then
		mkdir -p /usr/lib/sparkycenter/look
	fi
	cp lib/* /usr/lib/sparkycenter/look/
	cp share/sparky-compton.desktop /usr/share/applications/
	cp share/sparky-compton /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-compton ]; then
		mkdir -p /usr/share/sparky/sparky-compton
	fi
	cp lang/* /usr/share/sparky/sparky-compton/
	if [ ! -d /opt/sparky ]; then
		mkdir -p /opt/sparky
	fi
	cp opt/* /opt/sparky/ 
fi
