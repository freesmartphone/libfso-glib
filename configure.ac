AC_INIT([libfso-glib], [2011.01.09.1], [smartphones-standards@linuxtogo.org], [libfso-glib])
AC_CONFIG_SRCDIR([src/Makefile.am])
AC_CONFIG_HEADERS(config.h)
AM_INIT_AUTOMAKE([dist-bzip2])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_PROG_CC
AM_PROG_CC_C_O
AC_DISABLE_STATIC
AC_PROG_LIBTOOL

VALA_REQUIRED=0.9.7
AC_PATH_PROG(VALAC, valac, valac)
AC_SUBST(VALAC)
m4_ifdef([AM_PROG_VALAC], [AM_PROG_VALAC([$VALA_REQUIRED])])

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

AC_SUBST(CFLAGS)
AC_SUBST(CPPFLAGS)
AC_SUBST(LDFLAGS)

VDBT_REQUIRED=0.1.3
GLIB_REQUIRED=2.12.0
DBUS_REQUIRED=0.70
SPECS_REQUIRED=$PACKAGE_VERSION

##############################################################################
# binding tools
PKG_CHECK_MODULES(VALA_DBUS_BINDING_TOOL,
	vala-dbus-binding-tool-1.0 >= $VDBT_REQUIRED)
PKG_CHECK_MODULES(SPECS,
	fso-specs >= $SPECS_REQUIRED)
# specs directory
FSO_SPECS_DIR="`$PKG_CONFIG --variable=specsdir fso-specs`"
AC_SUBST(FSO_SPECS_DIR)

##############################################################################
# gdbus?
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

AC_CONFIG_FILES([
	Makefile
	src/Makefile
	fso-glib-1.0.pc
])
AC_OUTPUT
#
# Info
#
echo
echo
echo
echo "------------------------------------------------------------------------"
echo "$PACKAGE_NAME $PACKAGE_VERSION-$GITV"
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

