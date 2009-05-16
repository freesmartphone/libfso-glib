/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/bin/vala-dbus-binding-tool --api-path=../../fso-specs.git/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	[DBus (name = "org.freesmartphone")]
	public errordomain Error {
		[DBus (name = "InvalidParameter")]
		INVALID_PARAMETER,
		[DBus (name = "InternalError")]
		INTERNAL_ERROR,
		[DBus (name = "SystemError")]
		SYSTEM_ERROR,
		[DBus (name = "Unsupported")]
		UNSUPPORTED,
	}

	[DBus (name = "org.freesmartphone.Phone")]
	public interface Phone : GLib.Object {

		public abstract string[] init_protocols() throws DBus.Error;

		public abstract ObjectPath create_call(string number, string protocol, bool force) throws DBus.Error;

		public signal void incoming(ObjectPath call);
	}

	[DBus (name = "org.freesmartphone.Resource")]
	public interface Resource : GLib.Object {

		public abstract void enable() throws DBus.Error;

		public abstract void disable() throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract void suspend() throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract void resume() throws FreeSmartphone.ResourceError, DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Phone.Call")]
	public interface PhoneCall : GLib.Object {

		public abstract string get_peer() throws DBus.Error;

		public abstract string initiate() throws DBus.Error;

		public abstract string activate() throws DBus.Error;

		public abstract string release() throws DBus.Error;

		public abstract string get_status() throws DBus.Error;

		public abstract void remove() throws DBus.Error;

		public signal void incoming();

		public signal void outgoing();

		public signal void released();

		public signal void activated();
	}

	[DBus (name = "org.freesmartphone.Preferences")]
	public interface Preferences : GLib.Object {

		public abstract string[] get_services() throws DBus.Error;

		public abstract ObjectPath get_service(string name) throws DBus.Error;

		public abstract string[] get_profiles() throws DBus.Error;

		public abstract string get_profile() throws DBus.Error;

		public abstract void set_profile(string profile) throws DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Usage")]
	public errordomain UsageError {
		[DBus (name = "PolicyUnknown")]
		POLICY_UNKNOWN,
		[DBus (name = "PolicyDisabled")]
		POLICY_DISABLED,
		[DBus (name = "ResourceUnknown")]
		RESOURCE_UNKNOWN,
		[DBus (name = "ResourceExists")]
		RESOURCE_EXISTS,
		[DBus (name = "ResourceInUse")]
		RESOURCE_IN_USE,
		[DBus (name = "UserExists")]
		USER_EXISTS,
		[DBus (name = "UserUnknown")]
		USER_UNKNOWN,
	}

	[DBus (use_string_marshalling = true)]
	public enum ResourceName {
		[DBus (value="GSM")]
		GSM,
		[DBus (value="GPS")]
		GPS,
		[DBus (value="WiFi")]
		WIFI,
		[DBus (value="Bluetooth")]
		BLUETOOTH,
		[DBus (value="Display")]
		DISPLAY,
		[DBus (value="CPU")]
		CPU,
	}

	[DBus (name = "org.freesmartphone.Usage")]
	public interface Usage : GLib.Object {

		public abstract FreeSmartphone.ResourceName[] list_resources() throws DBus.Error;

		public abstract string get_resource_policy(FreeSmartphone.ResourceName name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void set_resource_policy(FreeSmartphone.ResourceName name, string policy) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract bool get_resource_state(FreeSmartphone.ResourceName name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract string[] get_resource_users(FreeSmartphone.ResourceName name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void request_resource(FreeSmartphone.ResourceName name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void release_resource(FreeSmartphone.ResourceName name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void suspend() throws DBus.Error;

		public abstract void shutdown() throws DBus.Error;

		public abstract void reboot() throws DBus.Error;

		public signal void resource_available(FreeSmartphone.ResourceName name, bool availability);

		public signal void resource_changed(FreeSmartphone.ResourceName name, bool state, GLib.HashTable<string, GLib.Value?> attributes);

		public signal void system_action(string action);
	}

	[DBus (name = "org.freesmartphone.Network")]
	public interface Network : GLib.Object {

		public abstract void start_connection_sharing_with_interface(string interface) throws FreeSmartphone.Error, DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Events")]
	public interface Events : GLib.Object {

		public abstract void add_rule(string rule) throws DBus.Error;

		public abstract void remove_rule(string name) throws DBus.Error;

		public abstract void trigger_test(string name, bool value) throws DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Preferences.Service")]
	public interface PreferencesService : GLib.Object {

		public abstract string[] get_keys() throws DBus.Error;

		public abstract GLib.Value get_value(string key) throws DBus.Error;

		public abstract void set_value(string key, GLib.Value value) throws DBus.Error;

		public abstract bool is_profilable(string key) throws DBus.Error;

		public abstract string get_type_(string key) throws DBus.Error;

		public signal void notify(string key, GLib.Value value);
	}

	[DBus (name = "org.freesmartphone.Resource")]
	public errordomain ResourceError {
		[DBus (name = "NotEnabled")]
		NOT_ENABLED,
	}
}
