#!/bin/sh

SOURCE="${HOME}/git/coreland/postgres-ada/"

fatal()
{
  echo "fatal: $1" 1>&2
  exit 1
}

info()
{
  echo "info: $1" 1>&2
}

#
# Make license.
#

cat "${SOURCE}/LICENSE" > src/m_license.ud.tmp &&
  mv src/m_license.ud.tmp src/m_license.ud || fatal "could not create m_license.ud"
