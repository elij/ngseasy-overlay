EAPI=4

MY_PV=${PV//./-}

DESCRIPTION="A Genomic Mapping and Alignment Program for mRNA and EST Sequences"
HOMEPAGE="http://research-pub.gene.com/gmap/"
SRC_URI="http://research-pub.gene.com/gmap/src/gmap-gsnap-${MY_PV}.tar.gz"

LICENSE="gmap"
SLOT="0"
IUSE="+samtools +goby"
KEYWORDS="amd64 x86"

DEPEND="samtools? ( sci-biology/samtools )
	goby? ( sci-biology/goby-cpp )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/gmap-${MY_PV}"

src_configure() {
	econf $(use_with samtools) \
		$(use_with goby goby /usr)
}

src_install() {
	einstall || die
	dodoc AUTHORS ChangeLog README
}

src_test() {
	emake check || die
}

