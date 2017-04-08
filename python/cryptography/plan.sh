pkg_name=cryptography
pkg_distname=${pkg_name}
pkg_version=1.8.1
pkg_origin=python
pkg_license=('Apache-2.0' 'BSD-3-Clause' 'Python-2.0')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="Cryptography is a package which provides cryptographic \
recipes and primitives to Python developers."
pkg_upstream_url=https://cryptography.io/
pkg_dirname=${pkg_distname}-${pkg_version}
pkg_source=https://pypi.org/packages/source/c/cryptography/${pkg_dirname}.tar.gz
pkg_shasum=323524312bb467565ebca7e50c8ae5e9674e544951d28a2904a50012a8828190
pkg_deps=(
  core/gcc-libs
  core/openssl
  python/python
  python/asn1crypto
  python/cffi
  python/idna
  python/packaging
  python/six
)
pkg_build_deps=(
  core/gcc
  python/setuptools
)
pkg_env_sep=(
  ['PYTHONPATH']=':'
)

do_begin() {
  add_path_env 'PYTHONPATH' 'lib/python3.6/site-packages'
}

do_build() {
  python setup.py build
}

do_check() {
  python setup.py test
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
