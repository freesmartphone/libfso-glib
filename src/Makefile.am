AUTOMAKE_OPTIONS = 

AM_CFLAGS = \
	$(VALA_CFLAGS) \
	$(DBUS_CFLAGS) \
	-include $(CONFIG_HEADER)

VALACFLAGS = \
	--pkg vala-1.0 \
	--pkg dbus-glib-1 \
	--library fso-1.0

BUILT_SOURCES = libfso_glib_la.vala.stamp

lib_LTLIBRARIES = libfso-glib.la

libfso_glib_la_VALASOURCES = \
	fso-dbus-interfaces.vala \
	fso-dbus-utils.vala

libfso_glibdir = $(includedir)/fso-glib
libfso_glib_HEADERS = fso-dbus-interfaces.h fso-dbus-utils.h

vapidir = $(datadir)/vala/vapi
vapi_DATA = fso-1.0.vapi

girdir = $(libdir)/girepository-1.0
gir_DATA = fso-1.0.gir

libfso_glib_la_SOURCES = \
	$(libfso_glib_la_VALASOURCES:.vala=.c) \
	$(libfso_glib_la_VALASOURCES:.vala=.h)

libfso_glib_la.vala.stamp: $(libfso_glib_la_VALASOURCES)
	$(VALAC) -C ${VALACFLAGS} --basedir . $^
	touch $@

libfso_glib_la_LIBADD = \
	$(VALA_LIBS) \
	$(DBUS_LIBS)

EXTRA_DIST = \
	$(libfso_glib_la_VALASOURCES)

CLEANFILES = \
	*.c \
	*.h \
	*.vapi \
	*.gir \
	libfso_glib_la.vala.stamp
