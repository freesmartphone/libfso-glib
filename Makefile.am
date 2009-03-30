AUTOMAKE_OPTIONS = subdir-objects

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = libfso-glib.pc

SUBDIRS = \
	po \
	src

dist-hook: gen-ChangeLog

gen_start_date = 2009-03-12
.PHONY: gen-ChangeLog
gen-ChangeLog:
	if test -d .git; then								\
	  $(top_srcdir)/gitlog-to-changelog					\
	    --since=$(gen_start_date) > $(distdir)/cl-t;	\
	  rm -f $(distdir)/ChangeLog;						\
	  mv $(distdir)/cl-t $(distdir)/ChangeLog;			\
	fi

EXTRA_DIST = \
	intltool-extract.in \
	intltool-update.in \
	intltool-merge.in \
	gitlog-to-changelog

DISTCLEANFILES = \
	intltool-extract \
	intltool-update \
	intltool-merge \
	po/.intltool-merge-cache

