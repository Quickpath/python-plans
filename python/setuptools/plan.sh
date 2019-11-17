pkg_name=setuptools
pkg_version=41.6.0
source ../python-plan-base.sh
pkg_origin="${HAB_ORIGIN:-python}"
pkg_license=('MIT')
pkg_maintainer="George Marshall <george@georgemarshall.name>"
pkg_description="Easily download, build, install, upgrade, and uninstall \
Python packages"
pkg_upstream_url=https://github.com/pypa/setuptools
pkg_source=https://pypi.org/packages/source/s/setuptools/${pkg_dirname}.zip
pkg_shasum=6afa61b391dcd16cb8890ec9f66cc4015a8a31a6e1c2b4e0c464514be1a3d722
pkg_deps=(
  $pkg_origin/python
#  $pkg_origin/appdirs
#  $pkg_origin/packaging
#  $pkg_origin/six
)
pkg_bin_dirs=(bin)
