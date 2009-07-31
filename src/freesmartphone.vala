/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
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

		public abstract void enable() yields throws DBus.Error;

		public abstract void disable() yields throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract void suspend() yields throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract void resume() yields throws FreeSmartphone.ResourceError, DBus.Error;
	}

	[DBus (use_string_marshalling = true)]
	public enum UsageSystemAction {
		[DBus (value="suspend")]
		SUSPEND,
		[DBus (value="resume")]
		RESUME,
		[DBus (value="shutdown")]
		SHUTDOWN,
		[DBus (value="reboot")]
		REBOOT,
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

	[DBus (use_string_marshalling = true)]
	public enum UsageResourcePolicy {
		[DBus (value="auto")]
		AUTO,
		[DBus (value="disabled")]
		DISABLED,
		[DBus (value="enabled")]
		ENABLED,
	}

	[DBus (name = "org.freesmartphone.Preferences")]
	public interface Preferences : GLib.Object {

		public abstract string[] get_services() yields throws DBus.Error;

		public abstract ObjectPath get_service(string name) yields throws DBus.Error;

		public abstract string[] get_profiles() yields throws DBus.Error;

		public abstract string get_profile() yields throws DBus.Error;

		public abstract void set_profile(string profile) yields throws DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Network")]
	public interface Network : GLib.Object {

		public abstract void start_connection_sharing_with_interface(string interface) yields throws FreeSmartphone.Error, DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Usage")]
	public interface Usage : GLib.Object {

		public abstract void register_resource(string name, ObjectPath path) yields throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void unregister_resource(string name) yields throws DBus.Error;

		public abstract string[] list_resources() yields throws DBus.Error;

		public abstract FreeSmartphone.UsageResourcePolicy get_resource_policy(string name) yields throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void set_resource_policy(string name, FreeSmartphone.UsageResourcePolicy policy) yields throws FreeSmartphone.UsageError, DBus.Error;

		public abstract bool get_resource_state(string name) yields throws FreeSmartphone.UsageError, DBus.Error;

		public abstract string[] get_resource_users(string name) yields throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void request_resource(string name) yields throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void release_resource(string name) yields throws FreeSmartphone.UsageError, DBus.Error;

		public abstract void suspend() yields throws DBus.Error;

		public abstract void shutdown() yields throws DBus.Error;

		public abstract void reboot() yields throws DBus.Error;

		public signal void resource_available(string name, bool availability);

		public signal void resource_changed(string name, bool state, GLib.HashTable<string, GLib.Value?> attributes);

		public signal void system_action(FreeSmartphone.UsageSystemAction action);
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

	[DBus (name = "org.freesmartphone.Preferences.Service")]
	public interface PreferencesService : GLib.Object {

		public abstract string[] get_keys() yields throws DBus.Error;

		public abstract GLib.Value get_value(string key) yields throws DBus.Error;

		public abstract void set_value(string key, GLib.Value value) yields throws DBus.Error;

		public abstract bool is_profilable(string key) yields throws DBus.Error;

		public abstract string get_type_(string key) yields throws DBus.Error;

		public signal void notify(string key, GLib.Value value);
	}

	[DBus (name = "org.freesmartphone.Events")]
	public interface Events : GLib.Object {

		public abstract void add_rule(string rule) throws DBus.Error;

		public abstract void remove_rule(string name) throws DBus.Error;

		public abstract void trigger_test(string name, bool value) throws DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Resource")]
	public errordomain ResourceError {
		[DBus (name = "NotEnabled")]
		NOT_ENABLED,
	}
}
