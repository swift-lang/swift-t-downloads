#!/bin/zsh
set -eu

# MD5SUMS SH
# Report md5sums of most recent packages for Spack

# cd to directory containing this script:
cd ${0:h}
/bin/pwd

for PKG in exmcutils adlbx turbine stc
do
  # Sort by name and obtain the last name (highest version number)
  FILENAME=( $PKG-*.tar.gz(on[-1]) )
  md5sum $FILENAME
done
