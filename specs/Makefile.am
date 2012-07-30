files = \
	org.freesmartphone.Audio.Manager.xml \
	org.freesmartphone.Context.Client.xml \
	org.freesmartphone.Context.Manager.xml \
	org.freesmartphone.Data.World.xml \
	org.freesmartphone.Device.AmbientLight.xml \
	org.freesmartphone.Device.Audio.xml \
	org.freesmartphone.Device.Display.xml \
	org.freesmartphone.Device.IdleNotifier.xml \
	org.freesmartphone.Device.Info.xml \
	org.freesmartphone.Device.Input.xml \
	org.freesmartphone.Device.LED.xml \
	org.freesmartphone.Device.Orientation.xml \
	org.freesmartphone.Device.PowerControl.xml \
	org.freesmartphone.Device.PowerSupply.xml \
	org.freesmartphone.Device.Proximity.xml \
	org.freesmartphone.Device.RealtimeClock.xml \
	org.freesmartphone.Device.Vibrator.xml \
	org.freesmartphone.Error.xml \
	org.freesmartphone.Events.xml \
	org.freesmartphone.GSM.CallForwarding.xml \
	org.freesmartphone.GSM.Call.xml \
	org.freesmartphone.GSM.CB.xml \
	org.freesmartphone.GSM.Debug.xml \
	org.freesmartphone.GSM.Device.xml \
	org.freesmartphone.GSM.Error.xml \
	org.freesmartphone.GSM.HZ.xml \
	org.freesmartphone.GSM.Monitor.xml \
	org.freesmartphone.GSM.MUX.xml \
	org.freesmartphone.GSM.Network.xml \
	org.freesmartphone.GSM.PDP.xml \
	org.freesmartphone.GSM.SIM.xml \
	org.freesmartphone.GSM.SMS.xml \
	org.freesmartphone.GSM.VoiceMail.xml \
	org.freesmartphone.Info.xml \
	org.freesmartphone.Network.xml \
	org.freesmartphone.Notification.xml \
	org.freesmartphone.Phone.Call.xml \
	org.freesmartphone.Phone.xml \
	org.freesmartphone.PIM.CallQuery.xml \
	org.freesmartphone.PIM.Calls.xml \
	org.freesmartphone.PIM.Call.xml \
	org.freesmartphone.PIM.ContactQuery.xml \
	org.freesmartphone.PIM.Contacts.xml \
	org.freesmartphone.PIM.Contact.xml \
	org.freesmartphone.PIM.DateQuery.xml \
	org.freesmartphone.PIM.Dates.xml \
	org.freesmartphone.PIM.Date.xml \
	org.freesmartphone.PIM.Fields.xml \
	org.freesmartphone.PIM.MessageQuery.xml \
	org.freesmartphone.PIM.Messages.xml \
	org.freesmartphone.PIM.Message.xml \
	org.freesmartphone.PIM.NoteQuery.xml \
	org.freesmartphone.PIM.Notes.xml \
	org.freesmartphone.PIM.Note.xml \
	org.freesmartphone.PIM.TaskQuery.xml \
	org.freesmartphone.PIM.Tasks.xml \
	org.freesmartphone.PIM.Task.xml \
	org.freesmartphone.PIM.Types.xml \
	org.freesmartphone.Preferences.Service.xml \
	org.freesmartphone.Preferences.xml \
	org.freesmartphone.Resource.xml \
	org.freesmartphone.Time.Alarm.xml \
	org.freesmartphone.Usage.xml

XMLLINT_FLAGS =
XMLLINT = xmllint $(XMLLINT_FLAGS)

XSLT_FLAGS = -o $@ $(top_srcdir)/tools/spec-strip-docs.xsl $<
XSLT = xsltproc $(XSLT_FLAGS)

docbook_xml_files = $(addprefix docbook-, $(files))
pydoc_html_files = $(files:.xml=.html)

all: pydocs xml

xml: $(files)

pydocs: $(pydoc_html_files)

$(pydoc_html_files): %.html: %.xml.in
	@echo calling pydoc on $@
	$(top_srcdir)/tools/makedoc.py $(top_srcdir)/doc $< >/dev/null

$(files): %.xml: %.xml.in
	@echo calling xsltproc spec-strip-docs on $@ ...
	@xsltproc -o $(top_srcdir)/specs/$@ $(top_srcdir)/tools/spec-strip-docs.xsl $<

install: xml
	@echo nothing to install here

check:
	@echo checking integrity...
	@xmllint *.xml.in >/dev/null && echo "OK" || echo "FAIL"

clean:
	@rm -f $(files) *~
	for i in $(pydoc_html_files); do rm -f $(top_srcdir)/doc/$$i; done
	for i in $(files); do rm -f $(top_srcdir)/specs/$$i; done
	@rm -rf xhtml *.html

maintainer-clean: clean
	:

install-data-local:
	$(MAKE)
	$(INSTALL) -d $(DESTDIR)/$(datadir)/freesmartphone/xml
	for i in $(top_srcdir)/specs/*.xml; do $(INSTALL) -m 0644 $$i $(DESTDIR)/$(datadir)/freesmartphone/$$i; done

MAINTAINERCLEANFILES = \
  aclocal.m4 compile config.guess config.sub \
  configure depcomp install-sh ltmain.sh     \
  Makefile.in missing config.h.in            \
  mkinstalldirs
