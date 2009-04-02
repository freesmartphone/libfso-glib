#! /bin/sh

# Automake requires that ChangeLog exist.
# stolen from mickey
touch ChangeLog

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

ORIGDIR=`pwd`
cd $srcdir

autoreconf -v --install || exit 1
cd $ORIGDIR || exit $?

$srcdir/configure "$@"
