# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit R-packages

DESCRIPTION='Calls CNV from exome sequence data'
SRC_URI="http://cran.r-project.org/bin/macosx/contrib/3.1/ExomeDepth_${PV}.tgz"
LICENSE='GPL-3'
KEYWORDS="x86 amd64"

DEPEND="sci-BIOC/Rsamtools
	>=sci-CRAN/VGAM-0.8.4
	>=sci-BIOC/GenomicRanges-1.8.10
	>=dev-lang/R-3.0.1
	sci-CRAN/aod
"
RDEPEND="${DEPEND-}"

