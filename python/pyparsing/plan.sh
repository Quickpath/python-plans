pkg_name=pyparsing
pkg_version=2.4.5
source ../python-plan-base.sh
pkg_origin="${HAB_ORIGIN:-python}"
pkg_license=('MIT')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="A Python Parsing Module"
pkg_upstream_url=https://pyparsing.wikispaces.com/
pkg_source=https://pypi.org/packages/source/p/pyparsing/${pkg_dirname}.tar.gz
pkg_shasum=4ca62001be367f01bd3e92ecbb79070272a9d4964dce6a48a82ff0b8bc7e683a
pkg_deps=( $pkg_origin/python $pkg_origin/setuptools )
