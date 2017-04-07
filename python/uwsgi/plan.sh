pkg_name=uwsgi
pkg_distname=${pkg_name}
pkg_version=2.0.15
pkg_origin=python
pkg_license=('GPL-2.0')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="The uWSGI server"
pkg_upstream_url=http://projects.unbit.it/uwsgi
pkg_dirname=${pkg_distname}-${pkg_version}
pkg_source=https://pypi.org/packages/source/u/uwsgi/${pkg_dirname}.tar.gz
pkg_shasum=572ef9696b97595b4f44f6198fe8c06e6f4e6351d930d22e5330b071391272ff
pkg_deps=(
  python/python
  python/setuptools
)
pkg_build_deps=(
  core/gcc
)
pkg_env_sep=(
  ['PYTHONPATH']=':'
)
pkg_bin_dirs=(bin)

do_begin() {
  add_path_env 'PYTHONPATH' 'lib/python3.6/site-packages'
}

do_build() {
  python setup.py build
}

do_check() {
  # Sadly the test suite does not work with python3
  #python setup.py test
  return 0
}

do_install() {
  python setup.py install \
    --prefix="$pkg_prefix" \
    --old-and-unmanageable # bypass egg install
}

do_strip() {
  do_default_strip

  # Remove tests and bytecode files
  find "$pkg_prefix" -depth \
    \( \
      \( -type d -a -name test -o -name tests \) \
      -o \
      \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
    \) -exec rm -rf '{}' +
}
