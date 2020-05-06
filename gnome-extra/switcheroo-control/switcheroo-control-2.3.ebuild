# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="D-Bus service to check the availability of dual-GPU"
HOMEPAGE="https://gitlab.freedesktop.org/hadess/switcheroo-control"
SRC_URI="https://gitlab.freedesktop.org/hadess/switcheroo-control/uploads/2b4b7d579e35c212c083c9897248fecf/switcheroo-control-2.3.tar.xz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~arm64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"

RDEPEND="
	>=dev-libs/glib-2.56:2
	>=dev-libs/libgudev-232
	sys-apps/systemd
"
DEPEND="${RDEPEND}"
BDEPEND="
	>=sys-devel/gettext-0.19.8
	virtual/pkgconfig
"

src_configure() {
	local emesonargs=(
		-Dsystemdsystemunitdir=''
		-Dhwdbdir=''
		-Dgtk_doc=false
	)
	meson_src_configure
}

pkg_postinst() {
	elog "To enable multi-gpu detection under Gnome please use:"
	elog "	systemctl enable switcheroo-control.service"
}
