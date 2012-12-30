# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="detox safely removes spaces and strange characters from filenames"
HOMEPAGE="http://detox.sourceforce.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/popt"
RDEPEND="${DEPEND}
	sys-devel/flex
	sys-devel/bison"

src_configure() {
	econf --with-popt
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README CHANGES
}
