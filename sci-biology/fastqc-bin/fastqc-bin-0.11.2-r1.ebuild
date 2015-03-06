EAPI=5

inherit java-pkg-2 eutils

DESCRIPTION="Perl-based wrapper around java apps to quality control FASTA/FASTQ sequence files"
HOMEPAGE="http://www.bioinformatics.babraham.ac.uk/projects/fastqc/"
SRC_URI="http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v"${PV}".zip"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""
IUSE=""


DEPEND="sci-biology/picard
        >=virtual/jre-1.5"
RDEPEND="${DEPEND}"

S="${WORKDIR}"/FastQC

src_prepare(){
	epatch "${FILESDIR}/0_adjust_paths.patch"
}

src_compile(){
	jar cvf FastQC.jar net/ org/ uk/
}

src_install(){
	java-pkg_dojar FastQC.jar
	java-pkg_dojar jbzip2-0.9.jar
        dobin fastqc
        dodoc README.txt RELEASE_NOTES.txt

        # TODO: need to compile java in uk/ac/babraham/FastQC/
        # and decide whether jbzip2-0.9.jar is a standard java lib or not
        # ignore the sam-1.32.jar, that is likely library already in sci-biology/picard
}


