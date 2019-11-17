pkg_name=pip
pkg_version=19.3.1
source ../python-plan-base.sh
pkg_origin="${HAB_ORIGIN:-python}"
pkg_license=('MIT')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="The PyPA recommended tool for installing Python packages."
pkg_upstream_url=https://pip.pypa.io/
pkg_source=https://pypi.org/packages/source/p/pip/${pkg_dirname}.tar.gz
pkg_shasum=21207d76c1031e517668898a6b46a9fb1501c7a4710ef5dfd6a40ad9e6757ea7
pkg_deps=(
  $pkg_origin/python
  $pkg_origin/setuptools
  $pkg_origin/wheel
)
pkg_bin_dirs=(bin)
