EAPI=5

inherit java-pkg-2 eutils git-r3

DESCRIPTION="GATK Official Release Repository: contains the core MIT-licensed GATK framework, plus "protected" tools restricted to non-commercial use only"
HOMEPAGE="http://www.broadinstitute.org/gatk/"

EGIT_REPO_URI="https://github.com/broadgsa/gatk-protected/"
EGIT_COMMIT="${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="dev-java/maven-bin
	=virtual/jdk-1.7.0"
RDEPEND="${DEPEND}"

src_compile() {
	mvn verify
}

src_install(){
	java-pkg_newjar target/GenomeAnalysisTK.jar GenomeAnalysisTK.jar
	java-pkg_newjar target/Queue.jar Queue.jar
}
