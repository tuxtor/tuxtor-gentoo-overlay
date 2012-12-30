# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Exuberant ctags generates tags files for quick source navigation"
HOMEPAGE="http://ctags.sourceforge.net"
SRC_URI="mirror://sourceforge/ctags/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_configure(){
	econf --with-posix-regex
}

src_install(){
	emake DESTDIR="${D}" install

	dodoc FAQ NEWS README
	dohtml EXTENDING.html ctags.html
}
