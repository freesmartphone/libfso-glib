include $(top_srcdir)/Makefile.decl
AUTOMAKE_OPTIONS =
NULL =

AM_CFLAGS = \
	-include $(CONFIG_HEADER) \
	$(NULL)
AM_VALAFLAGS =

DBUSBINDINGTOOLFLAGS = \
	--api-path=$(FSO_SPECS_DIR) \
	--directory=$(top_builddir)/src --strip-namespace=org \
	--rename-namespace=freedesktop:FreeDesktop \
	--rename-namespace=freesmartphone:FreeSmartphone \
	$(NULL)

if WANT_GDBUS
DBUSBINDINGTOOLFLAGS += --gdbus
else
AM_VALAFLAGS += --pkg dbus-glib-1
endif

if WANT_DEBUG
AM_VALAFLAGS += -g -D DEBUG
AM_CFLAGS += -ggdb -O0
endif

lib_LTLIBRARIES = libfso-glib.la
libfso_glib_la_SOURCES = \
	freesmartphone.vala \
	freesmartphone-context.vala \
	freesmartphone-data.vala \
	freesmartphone-device.vala \
	freesmartphone-gsm.vala \
	freesmartphone-time.vala \
	freesmartphone-pim.vala \
	freesmartphone-audio.vala \
	$(NULL)
libfso_glib_la_VALAFLAGS = \
	--basedir $(top_srcdir) \
	--pkg gio-2.0 \
	--header freesmartphone.h \
	--library fso-glib-1.0 \
	$(NULL)
libfso_glib_la_CFLAGS = \
	$(DEPS_CFLAGS) \
	$(NULL)
libfso_glib_la_LIBADD = \
	$(DEPS_LIBS)
libfso_glib_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	-version-info "$(LT_CURRENT)":"$(LT_REVISION)":"$(LT_AGE)" \
	$(NULL)

$(libfso_glib_la_SOURCES):
	vala-dbus-binding-tool $(DBUSBINDINGTOOLFLAGS)

libfso_glibdir = $(includedir)/fso-glib
libfso_glib_HEADERS = \
	freesmartphone.h \
	$(NULL)

vapidir = $(datadir)/vala/vapi
vapi_DATA = \
	fso-glib-1.0.vapi \
	fso-glib-1.0.deps \
	$(NULL)

if TYPELIB
girdir = $(datadir)/gir-1.0
gir_DATA = FreeSmartphone-1.0.gir
typelibdir = $(libdir)/girepository-1.0
typelib_DATA = FreeSmartphone-1.0.typelib
AM_VALAFLAGS += --gir FreeSmartphone-1.0.gir

FreeSmartphone-1.0.typelib:FreeSmartphone-1.0.gir
	$(GIR_COMPILER) --includedir /usr/share/gir-1.0/ FreeSmartphone-1.0.gir -o FreeSmartphone-1.0.typelib
endif

EXTRA_DIST += \
	fso-glib-1.0.deps \
	fso-glib-1.0.vapi \
	$(NULL)

CLEANFILES =
DISTCLEANFILES = \
	Makefile.in \
	$(NULL)
