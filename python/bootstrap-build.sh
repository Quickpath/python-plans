#!/bin/bash -xe
export HAB_ORIGIN="${HAB_ORIGIN:-python}"
DO_UPLOAD="${DO_UPLOAD:-true}"
DO_BUILD="${DO_BUILD:-true}"
PYTHON_PLANS="python appdirs setuptools pyparsing six packaging wheel pip"

if [ "${DO_BUILD}" == "true" ]; then
  for dir in $PYTHON_PLANS; do
    cd $dir
    build
    cd ..
  done
fi

if [ "${DO_UPLOAD}" == "true" ]; then
  for dir in $PYTHON_PLANS; do
    cd $dir
    source results/last_build.env
    hab pkg upload results/$pkg_artifact --channel stable
    cd ..
  done
fi
