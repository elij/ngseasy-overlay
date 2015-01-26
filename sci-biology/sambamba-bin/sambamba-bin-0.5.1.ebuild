EAPI=5
SRC_URI="https://github.com/lomereiter/${PN}/releases/download/v${PV}/sambamba_v${PV}_linux.tar.bz2"
SLOT="0"
KEYWORDS="amd64 x86"

S=${WORKDIR}

src_install() {
	newbin sambamba_v${PV} sambamba
}
