EAPI=5

inherit git-r3

DESCRIPTION="a general probabilistic framework for structural variant discovery"
HOMEPAGE="https://github.com/arq5x/lumpy-sv"


EGIT_REPO_URI="https://github.com/arq5x/lumpy-sv.git"
EGIT_COMMIT="${PV}"
SLOT="0"
KEYWORDS="x86 amd64"

DEPEND="sci-biology/bamtools"

src_prepare() {
	epatch "${FILESDIR}/${PV}_os_bamtools.patch"
}

src_install() {
        dobin bin/*
}
