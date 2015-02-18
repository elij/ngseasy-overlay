EAPI=5

inherit git-r3

DESCRIPTION="Toolkit for processing sequences in FASTA/Q formats"
HOMEPAGE="https://github.com/lh3/seqtk"

EGIT_REPO_URI="https://github.com/lh3/seqtk.git"
EGIT_COMMIT="${PV}" 

LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS="amd64"

src_install() {
	dobin ${PN}
}
