#!/usr/bin/env bash
HERE=$(cd `dirname $BASH_SOURCE`; pwd)
HSRC="${HERE}/src"
for bin in `cat ${HSRC}/heasoft_binaries.txt`; do
  ln -s ${HSRC}/_headocker.sh ${HERE}/$bin
done
