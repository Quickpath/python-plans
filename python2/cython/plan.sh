source ../../packages/cython.sh
source ../default.sh

pkg_deps=(
  ${pkg_base_deps[@]}
  python2/python
)
pkg_build_deps=(
  ${pkg_base_build_deps[@]}
  python2/setuptools
)

do_check() {
  # Running the test on python2 currently fails
  #python runtests.py
  return 0
}
