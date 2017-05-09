pkg_name=py
pkg_distname=${pkg_name}
pkg_version=1.4.33
pkg_origin=python2
pkg_license=('MIT')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="Library with cross-python path, ini-parsing, io, code, log \
facilities."
pkg_upstream_url=http://pylib.readthedocs.org/
pkg_dirname=${pkg_distname}-${pkg_version}
pkg_source=https://pypi.org/packages/source/p/py/${pkg_dirname}.tar.gz
pkg_shasum=1f9a981438f2acc20470b301a07a496375641f902320f70e31916fe3377385a9
pkg_deps=(
  python2/python
)
pkg_build_deps=(
  python2/setuptools
)
pkg_env_sep=(
  ['PYTHONPATH']=':'
)

do_build() {
  python setup.py build
}

do_install() {
  add_path_env 'PYTHONPATH' "$PYTHON_SITE_PACKAGES"
  python setup.py install \
    --prefix="$pkg_prefix" \
    --no-compile \
    --old-and-unmanageable # bypass egg install
}
