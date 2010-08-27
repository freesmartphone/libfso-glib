AC_INIT([libfso-glib], [2010.08.27.1], [smartphones-standards@linuxtogo.org], [libfso-glib])
AC_CONFIG_SRCDIR([src/Makefile.am])
AC_CONFIG_HEADERS(config.h)
AM_INIT_AUTOMAKE([dist-bzip2])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_PROG_CC
AM_PROG_CC_C_O
AC_DISABLE_STATIC
AC_PROG_LIBTOOL

AC_PATH_PROG(VALAC, valac, valac)
AC_SUBST(VALAC)

AC_ARG_ENABLE(typelib,
	[AS_HELP_STRING([--enable-typelib],
		[enable typelib generation (default is no)])],
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

VALA_REQUIRED=0.7.9
VDBT_REQUIRED=0.1.3
GLIB_REQUIRED=2.12.0
DBUS_REQUIRED=0.70
SPECS_REQUIRED=$PACKAGE_VERSION

# binding tools
PKG_CHECK_MODULES(VALA,
	vala-1.0 >= $VALA_REQUIRED)
PKG_CHECK_MODULES(VALA_DBUS_BINDING_TOOL,
	vala-dbus-binding-tool-1.0 >= $VDBT_REQUIRED)
PKG_CHECK_MODULES(SPECS,
	fso-specs >= $SPECS_REQUIRED)
# specs directory
FSO_SPECS_DIR="`$PKG_CONFIG --variable=specsdir fso-specs`"
AC_SUBST(FSO_SPECS_DIR)

# build time specs
PKG_CHECK_MODULES(DEPS,
	glib-2.0 >= $GLIB_REQUIRED
	gobject-2.0 >= $GLIB_REQUIRED
	gio-2.0 >= $GLIB_REQUIRED
	gthread-2.0 >= $GLIB_REQUIRED
	dbus-glib-1 >= $DBUS_REQUIRED
	dbus-1 >= $DBUS_REQUIRED)
AC_SUBST(DEPS_CFLAGS)
AC_SUBST(DEPS_LIBS)

AC_CONFIG_FILES([
	Makefile
	src/Makefile
	fso-glib-1.0.pc
])
AC_OUTPUT
