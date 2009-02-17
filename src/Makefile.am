AUTOMAKE_OPTIONS = 

AM_CFLAGS = \
	$(VALA_CFLAGS) \
	$(DBUS_CFLAGS) \
	-include $(CONFIG_HEADER)

VALACFLAGS = \
	--pkg vala-1.0 \
	--pkg dbus-glib-1 \
	--library FreeSmartphone-1.0

BUILT_SOURCES = libfso_glib_la.vala.stamp

lib_LTLIBRARIES = libfso-glib.la

libfso_glib_la_VALASOURCES = \
	freesmartphone.vala \
	freesmartphone-device.vala \
	freesmartphone-gsm.vala \
	freesmartphone-time.vala \
	freesmartphone-utils.vala

libfso_glibdir = $(includedir)/fso-glib
libfso_glib_HEADERS = \
	freesmartphone.h \
	freesmartphone-device.h \
	freesmartphone-gsm.h \
	freesmartphone-time.h \
	freesmartphone-utils.h

vapidir = $(datadir)/vala/vapi
vapi_DATA = FreeSmartphone-1.0.vapi

typelibdir = $(libdir)/girepository-1.0
typelib_DATA = FreeSmartphone-1.0.typelib

libfso_glib_la_SOURCES = \
	$(libfso_glib_la_VALASOURCES:.vala=.c) \
	$(libfso_glib_la_VALASOURCES:.vala=.h)

libfso_glib_la.vala.stamp: $(libfso_glib_la_VALASOURCES)
	$(VALAC) -C ${VALACFLAGS} --basedir . $^
	touch $@

FreeSmartphone-1.0.typelib:FreeSmartphone-1.0.gir
	$(GIR_COMPILER) FreeSmartphone-1.0.gir -o FreeSmartphone-1.0.typelib

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
	*.typelib \
	libfso_glib_la.vala.stamp
