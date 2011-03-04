AUTOMAKE_OPTIONS =

AM_CFLAGS = \
	$(DEPS_CFLAGS) \
	-include $(CONFIG_HEADER)

VALACFLAGS = \
	--pkg gio-2.0 \
	--header freesmartphone.h \
	--library fso-glib-1.0

DBUSBINDINGTOOLFLAGS = \
	--api-path=$(FSO_SPECS_DIR) \
	--directory=./ --strip-namespace=org \
	--rename-namespace=freedesktop:FreeDesktop \
	--rename-namespace=freesmartphone:FreeSmartphone

if WANT_GDBUS
DBUSBINDINGTOOLFLAGS += --gdbus
else
VALACFLAGS += --pkg dbus-glib-1
endif

BUILT_SOURCES = libfso_glib_la.vala.stamp

lib_LTLIBRARIES = libfso-glib.la

libfso_glib_la_VALASOURCES = \
	freesmartphone.vala \
	freesmartphone-context.vala \
	freesmartphone-data.vala \
	freesmartphone-device.vala \
	freesmartphone-gsm.vala \
	freesmartphone-time.vala \
	freesmartphone-pim.vala \
	freesmartphone-audio.vala \
	\
	sflphone-sflphone.vala

libfso_glibdir = $(includedir)/fso-glib
libfso_glib_HEADERS = \
	freesmartphone.h

vapidir = $(datadir)/vala/vapi
vapi_DATA = \
	fso-glib-1.0.vapi \
	fso-glib-1.0.deps

libfso_glib_la_SOURCES = \
	$(libfso_glib_la_VALASOURCES:.vala=.c)

libfso_glib_la.vala.stamp: gen-bindings $(libfso_glib_la_VALASOURCES)
	$(VALAC) -C ${VALACFLAGS} --basedir . $(libfso_glib_la_VALASOURCES)
	touch $@

gen-bindings:
	vala-dbus-binding-tool $(DBUSBINDINGTOOLFLAGS)

if TYPELIB
girdir = $(datadir)/gir-1.0
gir_DATA = FreeSmartphone-1.0.gir
typelibdir = $(libdir)/girepository-1.0
typelib_DATA = FreeSmartphone-1.0.typelib
VALACFLAGS += --gir FreeSmartphone-1.0.gir

FreeSmartphone-1.0.typelib:FreeSmartphone-1.0.gir
	$(GIR_COMPILER) --includedir /usr/share/gir-1.0/ FreeSmartphone-1.0.gir -o FreeSmartphone-1.0.typelib
endif

libfso_glib_la_LIBADD = \
	$(DEPS_LIBS)

EXTRA_DIST = \
	$(libfso_glib_la_VALASOURCES) \
	libfso_glib_la.vala.stamp

CLEANFILES = \
	*.c \
	*.h \
	*.vapi \
	*.gir \
	*.typelib \
	libfso_glib_la.vala.stamp

DISTCLEANFILES = \
	Makefile.in
