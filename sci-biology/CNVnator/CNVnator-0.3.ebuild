EAPI=5

inherit eutils toolchain-funcs

DESCRIPTION="a tool for CNV discovery and genotyping from depth of read mapping"
HOMEPAGE="http://sv.gersteinlab.org/"
SRC_URI="http://sv.gersteinlab.org/cnvnator/${PN}_v${PV}.zip"

LICENSE="CCPL"
SLOT="0"
IUSE=""
KEYWORDS="amd64"

S=${WORKDIR}/${PN}_v${PV}

DEPENDS="sci-biology/samtools
	sci-physics/root"

src_prepare() {
	epatch "${FILESDIR}/${PV}_samtools_root.patch"
}

src_compile() {
	export ROOTSYS=/usr
   	cd src
	if [ -f Makefile ] || [ -f GNUmakefile ] || [ -f makefile ]; then
		emake || die "emake failed"
	fi
}

src_install() {
	dobin src/cnvnator
}
