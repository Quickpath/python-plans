pkg_name=wheel
pkg_version=0.33.6
source ../python-plan-base.sh
pkg_origin="${HAB_ORIGIN:-python}"
pkg_license=('MIT')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="A built-package format for Python."
pkg_upstream_url=https://bitbucket.org/pypa/wheel/
pkg_source=https://pypi.org/packages/source/w/wheel/${pkg_dirname}.tar.gz
pkg_shasum=10c9da68765315ed98850f8e048347c3eb06dd81822dc2ab1d4fde9dc9702646
pkg_deps=(
  $pkg_origin/python
  $pkg_origin/setuptools
)
pkg_bin_dirs=(bin)
