EAPI=5

inherit git-r3

DESCRIPTION="Structural variant discovery by integrated paired-end and split-read analysis "
HOMEPAGE="https://github.com/tobiasrausch/delly"

EGIT_REPO_URI="https://github.com/tobiasrausch/delly.git"
EGIT_COMMIT="v${PV}" 

LICENSE="GPL"
SLOT="0"
IUSE=""
KEYWORDS="amd64"

DEPENDS="sci-biology/bamtools
	dev-libs/boost
	sci-libs/htslib"

src_prepare() {
	epatch "${FILESDIR}/build_patch.patch"
}

src_install() {
	dobin src/delly
        dobin src/stats
        dobin src/iover
        dobin src/cov
        dobin src/extract
        dobin src/delly
}
