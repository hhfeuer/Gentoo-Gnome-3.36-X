# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
GNOME_ORG_MODULE="sysprof"

inherit gnome.org meson systemd

DESCRIPTION="Static library for sysprof capture data generation"
HOMEPAGE="http://sysprof.com/"

LICENSE="GPL-3+ GPL-2+"
SLOT="3"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND=">=dev-libs/glib-2.61.3:2
	!=dev-util/sysprof-3.34.1-r0"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-util/gdbus-codegen
	>=sys-kernel/linux-headers-2.6.32
	virtual/pkgconfig
"

src_prepare() {
	default
	# In 3.34.1 -Dlibsysprof=false still installs various data files related with it;
	# some of these seem fixed by 3.36
	sed -i -e '/subdir.*data/d' meson.build || die
}

src_configure() {
	local emesonargs=(
		-Denable_gtk=false
		-Dlibsysprof=false
		-Dwith_sysprofd=none
		-Dsystemdunitdir=$(systemd_get_systemunitdir)
		# -Ddebugdir
		-Dhelp=false
	)
	meson_src_configure
}

src_install() {
	meson_src_install
	mkdir -p "${ED}"/usr/share/dbus-1/interfaces
	cp "${WORKDIR}"/sysprof-3.36.0/src/org.gnome.Sysprof3.Profiler.xml "${ED}"/usr/share/dbus-1/interfaces/  || die

}
