pkg_name=packaging
pkg_version=19.2
source ../python-plan-base.sh
pkg_origin="${HAB_ORIGIN:-python}"
pkg_license=('Apache-2.0' 'BSD-2-Clause')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="Core utilities for Python packages"
pkg_upstream_url=https://github.com/pypa/packaging
pkg_source=https://pypi.org/packages/source/p/packaging/${pkg_dirname}.tar.gz
pkg_shasum=28b924174df7a2fa32c1953825ff29c61e2f5e082343165438812f00d3a7fc47
pkg_deps=(
  $pkg_origin/python
  $pkg_origin/pyparsing
  $pkg_origin/six
)
