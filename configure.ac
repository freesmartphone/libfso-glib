m4_define([fso_glib_released], [0])
m4_define([fso_glib_version], [2012.07.27.1])

# If library source has changed since last release, increment revision
# If public symbols have been added, removed or changed since last release,
#  increment current and set revision to 0
# If public symbols have been added since last release, increment age
# If public symbols have been removed since last release, set age to 0
m4_define([fso_glib_lt_current], [2])
m4_define([fso_glib_lt_revision], [0])
m4_define([fso_glib_lt_age], [0])

AC_INIT([libfso-glib], fso_glib_version, [smartphones-standards@linuxtogo.org], [libfso-glib])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
AC_PREREQ([2.65])
AC_CONFIG_SRCDIR([Makefile.am])
AC_CONFIG_HEADERS(config.h)
AM_INIT_AUTOMAKE([dist-bzip2 no-dist-gzip])
AM_MAINTAINER_MODE([enable])

AC_PROG_CC
AM_PROG_CC_C_O
AC_PROG_CC_C99
AC_GNU_SOURCE
AC_DISABLE_STATIC
AC_PROG_LIBTOOL
PKG_PROG_PKG_CONFIG([0.21])

AC_SUBST(CFLAGS)
AC_SUBST(CPPFLAGS)
AC_SUBST(LDFLAGS)

LT_CURRENT=fso_glib_lt_current
LT_REVISION=fso_glib_lt_revision
LT_AGE=fso_glib_lt_age
AC_SUBST([LT_CURRENT])
AC_SUBST([LT_REVISION])
AC_SUBST([LT_AGE])

#########################################################################################
# Vala building options -- allows tarball builds without installing vala
#########################################################################################

VALA_REQUIRED=0.14.2

AC_ARG_ENABLE([vala], AS_HELP_STRING([--enable-vala],[Enable building from Vala sources]),
              [enable_vala=$enableval], [enable_vala=no])

# Force Vala for non-release builds
m4_if(fso_glib_released, [1], [],
      [
        enable_vala=yes
        echo "Vala compiler required for non-release builds; requiring Vala..."
      ])

if test "x$enable_vala" = "xyes" ; then
    AM_PROG_VALAC([$VALA_REQUIRED])
    if test "x$VALAC" = "x" ; then
        AC_MSG_ERROR([Vala requested but valac is not installed])
    fi
fi

AM_CONDITIONAL([HAVE_VALA], [test "x$enable_vala" = "xyes"])

#########################################################################################
# Check for typelib support and gir-compiler
#########################################################################################

AC_ARG_ENABLE(typelib,
	[AS_HELP_STRING([--enable-typelib],
		[Enable typelib generation (default=no)])],
	[ ],
	[enable_typelib=no])
AM_CONDITIONAL([TYPELIB], [test x$enable_typelib != xno])

AS_IF([test "x$enable_typelib" != xno],
	[AC_PATH_PROG(GIR_COMPILER, g-ir-compiler, :)
	 AC_SUBST(GIR_COMPILER)
	 AS_IF([test "$GIR_COMPILER" = :],
		[AC_MSG_ERROR([g-ir-compiler not found])])])

#########################################################################################
# Check for various dependencies
#########################################################################################

VDBT_REQUIRED=0.4.0
GLIB_REQUIRED=2.12.0
DBUS_REQUIRED=0.70
SPECS_REQUIRED=$PACKAGE_VERSION

PKG_CHECK_MODULES(VALA_DBUS_BINDING_TOOL,
	vala-dbus-binding-tool-1.0 >= $VDBT_REQUIRED)

PKG_CHECK_MODULES(SPECS,
	fso-specs >= $SPECS_REQUIRED)
FSO_SPECS_DIR="`$PKG_CONFIG --variable=specsdir fso-specs`"
AC_SUBST(FSO_SPECS_DIR)

AC_ARG_ENABLE(gdbus,
  AS_HELP_STRING([--enable-gdbus],[Build code for gdbus as found in glib >= 2.26 (default=yes)]),
  [gdbus=$enableval],
  [gdbus="yes"])

if test x$gdbus = x"yes"; then
	GLIB_REQUIRED=2.26.0
	PKG_CHECK_MODULES(DEPS,
	glib-2.0 >= $GLIB_REQUIRED
	gobject-2.0 >= $GLIB_REQUIRED
	gio-2.0 >= $GLIB_REQUIRED
	gthread-2.0 >= $GLIB_REQUIRED)
else
	PKG_CHECK_MODULES(DEPS,
	glib-2.0 >= $GLIB_REQUIRED
	gobject-2.0 >= $GLIB_REQUIRED
	gio-2.0 >= $GLIB_REQUIRED
	gthread-2.0 >= $GLIB_REQUIRED
	dbus-glib-1 >= $DBUS_REQUIRED
	dbus-1 >= $DBUS_REQUIRED)
fi
AM_CONDITIONAL( [WANT_GDBUS], [test x"$gdbus" = x"yes"])

AC_SUBST(DEPS_CFLAGS)
AC_SUBST(DEPS_LIBS)

#########################################################################################
# check for debugging
#########################################################################################

AC_ARG_ENABLE(debug,
  [  --enable-debug            Enable debug build (default=disabled)],
  [debug=$enableval],
  [debug="no"])
AM_CONDITIONAL( [WANT_DEBUG], [test x"$debug" = x"yes"])

#########################################################################################
# output
#########################################################################################

AC_CONFIG_FILES([
	Makefile
	src/Makefile
	fso-glib-1.0.pc
])
AC_OUTPUT

#########################################################################################
# info
#########################################################################################

echo
echo "------------------------------------------------------------------------"
echo "$PACKAGE_NAME $PACKAGE_VERSION"
echo "------------------------------------------------------------------------"
echo
echo "Configuration Options:"
echo
echo "  gdbus ...............................: $gdbus"
echo
echo "  debug build..........................: $debug"
echo
echo "  prefix...............................: $prefix"
echo
echo "------------------------------------------------------------------------"
echo
echo "Now type 'make' to compile and 'make install' to install this package."

