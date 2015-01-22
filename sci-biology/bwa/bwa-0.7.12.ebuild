EAPI=5

inherit flag-o-matic toolchain-funcs

DESCRIPTION="Burrows-Wheeler Alignment Tool, a fast short genomic sequence aligner"
HOMEPAGE="http://bio-bwa.sourceforge.net/"
SRC_URI="mirror://sourceforge/bio-bwa/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="amd64 x86 ~x64-macos"

src_prepare() {
	sed -e "s/\$(CC) \$(CFLAGS)/\$(CC) \$(LDFLAGS) \$(CFLAGS)/" \
		-i "${S}"/Makefile || die #336348
	append-flags -pthread
}

src_compile() {
	emake -e CC="$(tc-getCC)" || die
}

src_install() {
	dobin bwa || die
	doman bwa.1 || die
	exeinto /usr/share/${PN}
	doexe xa2multi.pl || die
	doexe qualfa2fq.pl || die
	dodoc ChangeLog NEWS || die
}

