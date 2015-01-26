EAPI=5
SRC_URI="http://genome.sph.umich.edu/w/images/5/5e/BamUtilLibStatGen.${PV}.tar.gz"
SLOT="0"
KEYWORDS="amd64 x86"

S="${WORKDIR}/${PN}_${PV}"
src_compile() {
	cd ${PN} && make
}


src_install() {
	dobin ${PN}/bin/bam
}

