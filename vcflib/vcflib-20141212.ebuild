EAPI=5

inherit git-r3

EGIT_REPO_URI="https://github.com/ekg/vcflib.git" 
EGIT_COMMIT="b1dfd7a73140f9b12cb8fd2a554d70188ff05cca"
SLOT="0"
KEYWORDS="x86 amd64" 

src_install() {
	dobin bin/*
	
}
