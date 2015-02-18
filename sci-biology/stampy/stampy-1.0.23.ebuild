EAPI=5

PYTHON_COMPAT=( python{2_6,2_7} )

inherit python-r1

DESCRIPTION="Stampy is a package for the mapping of short reads from illumina sequencing machines onto a reference genome"
HOMEPAGE="http://www.well.ox.ac.uk/project-stampy"
SRC_URI="http://www.well.ox.ac.uk/~gerton/software/Stampy/stampy-1.0.23r2059.tgz"

SLOT="0"
IUSE=""
KEYWORDS="amd64"

src_prepare() {
        sed \
                -e "s/-Wl//g" \
                -i makefile || die
}

src_install() {
        python_foreach_impl python_domodule maptools.so
        python_foreach_impl python_domodule plugins
        python_foreach_impl python_domodule ext
        python_moduleinto Stampy
        python_foreach_impl python_domodule Stampy/*.pyc
	python_foreach_impl python_optimize
        python_foreach_impl python_doscript ${PN}.py
}


