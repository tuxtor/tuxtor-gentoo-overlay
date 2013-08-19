# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-fonts/roboto/roboto-20111129.ebuild,v 1.2 2012/08/20 13:54:30 scarabeus Exp $

inherit font

MY_PN="font-ufsm-${PV}"

DESCRIPTION="Standard font for UFSM University (formerly Humanist 521"
HOMEPAGE="http://sucuri.cpd.ufsm.br/_outros/idvisual.php"
SRC_URI="http://sucuri.cpd.ufsm.br/_img/outros/idvisual_files/fontes.zip"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE=""

S="${WORKDIR}/${MY_PN}"
FONT_S="${S}"
FONT_SUFFIX="ttf"
