pkg_name=six
pkg_version=1.13.0
source ../python-plan-base.sh
pkg_origin="${HAB_ORIGIN:-python}"
pkg_license=('MIT')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="Python 2 and 3 compatibility utilities"
pkg_upstream_url=https://github.com/benjaminp/six
pkg_source=https://pypi.org/packages/source/s/six/${pkg_dirname}.tar.gz
pkg_shasum=30f610279e8b2578cab6db20741130331735c781b56053c59c4076da27f06b66
pkg_deps=( $pkg_origin/python )
