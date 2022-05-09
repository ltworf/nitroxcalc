# nitroxcalc
# Copyright (C) 2022 Salvo "LtWorf" Tomaselli
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# author Salvo "LtWorf" Tomaselli <tiposchi@tiscali.it>

.PHONY: dist
dist:
	rm -rf /tmp/nitroxcalc/
	rm -rf /tmp/nitroxcalc-*
	mkdir /tmp/nitroxcalc/
	cp -R * /tmp/nitroxcalc/
	( \
		cd /tmp; \
		tar --exclude '*.user' -zcf nitroxcalc.tar.gz \
			nitroxcalc/src \
			nitroxcalc/LICENSE \
			nitroxcalc/README.md \
			nitroxcalc/CHANGELOG \
			nitroxcalc/CODE_OF_CONDUCT.md \
	)
	mv /tmp/nitroxcalc.tar.gz ./nitroxcalc_`head -1 CHANGELOG`.orig.tar.gz
	gpg --sign --armor --detach-sign ./nitroxcalc_`head -1 CHANGELOG`.orig.tar.gz

.PHONY: deb-pkg
deb-pkg: dist
	$(RM) -r /tmp/nitroxcalc*
	mv nitroxcalc*orig* /tmp
	cd /tmp; tar -xf nitroxcalc*orig*.gz
	cp -r debian /tmp/nitroxcalc/
	cd /tmp/nitroxcalc; dpkg-buildpackage --changes-option=-S
	mkdir -p deb-pkg
	mv /tmp/nitroxcalc*.* deb-pkg
	lintian --pedantic -E --color auto -i -I deb-pkg/*changes deb-pkg/*deb
