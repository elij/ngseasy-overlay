# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit R-packages

DESCRIPTION='Calls CNV from exome sequence data'
SRC_URI="http://cran.r-project.org/src/contrib/Archive/ExomeDepth/ExomeDepth_${PV}.tar.gz"
LICENSE='GPL-3'
KEYWORDS="x86 amd64"

DEPEND="sci-BIOC/Rsamtools
	>=sci-CRAN/VGAM-0.8.4
	>=sci-BIOC/GenomicRanges-1.8.10
	>=dev-lang/R-2.15.0
	sci-CRAN/aod
"
RDEPEND="${DEPEND-}"
