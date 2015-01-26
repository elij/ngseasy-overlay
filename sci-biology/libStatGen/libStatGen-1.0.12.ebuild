EAPI=5

inherit git-r3

EGIT_REPO_URI="https://github.com/statgen/libStatGen.git"
EGIT_COMMIT="v${PV}" 
SLOT="0"
KEYWORDS="x86 amd64" 

src_install() {
	dolib.a *.a
	
}
