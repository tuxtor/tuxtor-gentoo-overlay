# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="A nice and purple theme for fbsplash."
HOMEPAGE="http://leviath4n.wordpress.com/2010/07/09/powered-by-gentoo-bootsplash-fbsplash/"
SRC_URI="http://tuxtor.shekalug.org/gentoo/powered_by_gentoo_v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=media-gfx/splashutils-1.1.9.5[png]"
RDEPEND="${DEPEND}"
RESTRICT="binchecks strip nomirror"

S="${WORKDIR}"

src_install() {
	dodir /etc/splash/powered-by-gentoo-${PV}
	cd "${WORKDIR}/powered_by_gentoo"
	insinto /etc/splash/powered-by-gentoo-${PV}
	doins -r * || die
}
