# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

EGIT_REPO_URI="https://github.com/codito/gnome-shell-pomodoro.git"

inherit git-2

DESCRIPTION="Helper for the Pomodoro Technique (http://http://www.pomodorotechnique.com/) extending GNOME Shell"
HOMEPAGE="https://github.com/codito/gnome-shell-pomodoro"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

COMMON_DEPEND="
	>=dev-libs/glib-2.26
	>=gnome-base/gnome-desktop-3:3
	app-admin/eselect-gnome-shell-extensions"
RDEPEND="${COMMON_DEPEND}
	gnome-base/gnome-desktop:3[introspection]
	gnome-base/gnome-shell
	media-libs/clutter:1.0[introspection]
	x11-libs/gtk+:3[introspection]
	x11-libs/pango[introspection]"
DEPEND="${COMMON_DEPEND}
	sys-devel/gettext
	>=dev-util/pkgconfig-0.22
	>=dev-util/intltool-0.26
	gnome-base/gnome-common"

src_configure() {
	:
}

src_compile() {
	:
}

src_install()	{
	insinto /usr/share/gnome-shell/extensions
	doins -r pomodoro@arun.codito.in || die

	insinto /etc/xdg/gnome-shell-pomodoro/
	doins gnome_shell_pomodoro.json

	dodoc README.md
}

pkg_postinst() {
	einfo "Updating list of installed extensions"
	eselect gnome-shell-extensions update || die
	elog
	elog "Installed extensions installed are initially disabled by default."
	elog "To change the system default and enable some extensions, you can use"
	elog "# eselect gnome-shell-extensions"
	elog "Alternatively, you can use the org.gnome.shell disabled-extensions"
	elog "gsettings key to change the disabled extension list per-user."
	elog
}

