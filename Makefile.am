AUTOMAKE_OPTIONS = subdir-objects

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = libfso-glib.pc

SUBDIRS = \
	po \
	src

EXTRA_DIST = \
	intltool-extract.in \
	intltool-update.in \
	intltool-merge.in

DISTCLEANFILES = \
	intltool-extract \
	intltool-update \
	intltool-merge \
	po/.intltool-merge-cache

