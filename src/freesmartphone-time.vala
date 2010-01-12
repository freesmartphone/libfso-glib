/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	namespace Time {

		[DBus (name = "org.freesmartphone.Time.Alarm")]
		public interface Alarm : GLib.Object {

			public abstract async void clear_alarms(string busname) throws DBus.Error;

			public abstract async FreeSmartphone.Time.WakeupAlarm[] list_alarms() throws DBus.Error;

			public abstract async void remove_alarm(string busname, int timestamp) throws DBus.Error;

			public abstract async void add_alarm(string busname, int timestamp) throws FreeSmartphone.Error, DBus.Error;
		}

		public struct WakeupAlarm {
			public string busname;
			public int timestamp;

			public WakeupAlarm (string busname, int timestamp ) {
				this.busname = busname;
				this.timestamp = timestamp;
			}
		}
	}
}
