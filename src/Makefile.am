AUTOMAKE_OPTIONS = 

AM_CFLAGS = \
	$(GLIB_CFLAGS) \
	$(DBUS_CFLAGS) \
	-include $(CONFIG_HEADER)

VALACFLAGS = \
	--pkg gio-2.0 \
	--pkg dbus-glib-1 \
	--header freesmartphone.h \
	--library fso-glib-1.0 \
	--gir FreeSmartphone-1.0.gir

BUILT_SOURCES = libfso_glib_la.vala.stamp

lib_LTLIBRARIES = libfso-glib.la

libfso_glib_la_VALASOURCES = \
	freesmartphone.vala \
	freesmartphone-device.vala \
	freesmartphone-gsm.vala \
	freesmartphone-time.vala \
	freesmartphone-pim.vala \
	freesmartphone-utils.vala

libfso_glibdir = $(includedir)/fso-glib
libfso_glib_HEADERS = \
	freesmartphone.h

vapidir = $(datadir)/vala/vapi
vapi_DATA = fso-glib-1.0.vapi \
	    fso-glib-1.0.deps

girdir = $(datadir)/gir-1.0
gir_DATA = FreeSmartphone-1.0.gir

libfso_glib_la_SOURCES = \
	$(libfso_glib_la_VALASOURCES:.vala=.c)

libfso_glib_la.vala.stamp: gen-bindings $(libfso_glib_la_VALASOURCES)
	$(VALAC) -C ${VALACFLAGS} --basedir . $(libfso_glib_la_VALASOURCES)
	touch $@

if GENERATE_BINDINGS
gen-bindings:
	$(DBUSBINDINGTOOL) --api-path=$(SPECS_PATH) --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone
else
gen-bindings:
	
endif

if TYPELIB
typelibdir = $(libdir)/girepository-1.0
typelib_DATA = FreeSmartphone-1.0.typelib

FreeSmartphone-1.0.typelib:FreeSmartphone-1.0.gir
	$(GIR_COMPILER) --includedir /usr/share/gir-1.0/ FreeSmartphone-1.0.gir -o FreeSmartphone-1.0.typelib
endif

libfso_glib_la_LIBADD = \
	$(GLIB_LIBS) \
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

DISTCLEANFILES = \
		 Makefile.in 

