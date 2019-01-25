# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
EGO_PN=github.com/mattn/go-isatty

if [[ ${PV} = *9999* ]]; then
	inherit golang-vcs
else
	EGIT_COMMIT=3fb116b
	SRC_URI="https://${EGO_PN}/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
	inherit golang-vcs-snapshot
fi
inherit golang-build

DESCRIPTION="isatty for Go."
HOMEPAGE="https://github.com/mattn/go-isatty"
LICENSE="MIT"
SLOT="0"
IUSE=""

DOCS=(
	"src/${EGO_PN}/README.md"
	"src/${EGO_PN}/LICENSE"
)

src_install() {
	golang-build_src_install
	einstalldocs
}
