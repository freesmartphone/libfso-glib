/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	namespace GSM {

		[DBus (name = "org.freesmartphone.GSM.PDP")]
		public interface PDP : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_network_status() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void network_status(GLib.HashTable<string, GLib.Value?> status);

			public abstract async void set_credentials(string apn, string username, string password) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void get_credentials(out string apn, out string username, out string password) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void activate_context() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void deactivate_context() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void get_context_status(out string status, out GLib.HashTable<string, GLib.Value?> properties) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void context_status(string status, GLib.HashTable<string, GLib.Value?> properties);

			public abstract async void internal_status_update(string status, GLib.HashTable<string, GLib.Value?> properties) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;
		}

		[DBus (name = "org.freesmartphone.GSM.HZ")]
		public interface HZ : GLib.Object {

			public abstract async string[] get_known_home_zones() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async string get_home_zone_status() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void home_zone_status(string name);
		}

		[DBus (name = "org.freesmartphone.GSM")]
		public errordomain Error {
			[DBus (name = "DeviceNotPresent")]
			DEVICE_NOT_PRESENT,
			[DBus (name = "DeviceTimeout")]
			DEVICE_TIMEOUT,
			[DBus (name = "DeviceFailed")]
			DEVICE_FAILED,
			[DBus (name = "AuthorizationRequired")]
			AUTHORIZATION_REQUIRED,
			[DBus (name = "SimNotPresent")]
			SIM_NOT_PRESENT,
			[DBus (name = "SimAuthFailed")]
			SIM_AUTH_FAILED,
			[DBus (name = "SimBlocked")]
			SIM_BLOCKED,
			[DBus (name = "SimNotFound")]
			SIM_NOT_FOUND,
			[DBus (name = "SimMemoryFull")]
			SIM_MEMORY_FULL,
			[DBus (name = "SimInvalidIndex")]
			SIM_INVALID_INDEX,
			[DBus (name = "CallNotFound")]
			CALL_NOT_FOUND,
			[DBus (name = "MuxChannelTaken")]
			MUX_CHANNEL_TAKEN,
			[DBus (name = "MuxNoChannel")]
			MUX_NO_CHANNEL,
			[DBus (name = "MuxNoSession")]
			MUX_NO_SESSION,
			[DBus (name = "MuxSessionAlreadyOpen")]
			MUX_SESSION_ALREADY_OPEN,
			[DBus (name = "MuxSessionOpenError")]
			MUX_SESSION_OPEN_ERROR,
			[DBus (name = "NetworkNotPresent")]
			NETWORK_NOT_PRESENT,
			[DBus (name = "NetworkUnauthorized")]
			NETWORK_UNAUTHORIZED,
			[DBus (name = "NetworkNotSupported")]
			NETWORK_NOT_SUPPORTED,
			[DBus (name = "NetworkNotFound")]
			NETWORK_NOT_FOUND,
			[DBus (name = "ContextNotFound")]
			CONTEXT_NOT_FOUND,
		}

		[DBus (name = "org.freesmartphone.GSM.Debug")]
		public interface Debug : GLib.Object {

			public abstract async string debug_at_command(string command, string channel) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void debug_inject_at_response(string response, string channel) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;
		}

		[DBus (use_string_marshalling = true)]
		public enum CallStatus {
			[DBus (value="INCOMING")]
			INCOMING,
			[DBus (value="OUTGOING")]
			OUTGOING,
			[DBus (value="ACTIVE")]
			ACTIVE,
			[DBus (value="HELD")]
			HELD,
			[DBus (value="RELEASE")]
			RELEASE,
		}

		[DBus (name = "org.freesmartphone.GSM.Monitor")]
		public interface Monitor : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_serving_cell_information() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async MonitorNeighbourCell[] get_neighbour_cell_information() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;
		}

		public struct MonitorNeighbourCell {
			public GLib.HashTable<string, GLib.Value?> attr1;
		}

		[DBus (use_string_marshalling = true)]
		public enum SIMAuthStatus {
			[DBus (value="UNKNOWN")]
			UNKNOWN,
			[DBus (value="READY")]
			READY,
			[DBus (value="SIM PIN")]
			PIN_REQUIRED,
			[DBus (value="SIM PUK")]
			PUK_REQUIRED,
			[DBus (value="SIM PIN2")]
			PIN2_REQUIRED,
			[DBus (value="SIM PUK2")]
			PUK2_REQUIRED,
		}

		[DBus (name = "org.freesmartphone.GSM.MUX")]
		public interface MUX : GLib.Object {

			public abstract async void open_session(bool advanced, int framesize, string portname, int portspeed) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void close_session() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void alloc_channel(string origin, int channel, out string path, out int allocated_channel) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void release_channel(string origin) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_status(int channel, string status) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void status(string status);
		}

		[DBus (name = "org.freesmartphone.GSM.Device")]
		public interface Device : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_info() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async bool get_antenna_power() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_antenna_power(bool antenna_power) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void get_functionality(out string level, out bool autoregister, out string pin) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_functionality(string level, bool autoregister, string pin) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_features() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async int get_speaker_volume() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_speaker_volume(int volume) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async bool get_microphone_muted() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_microphone_muted(bool muted) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void get_power_status(out string status, out int level) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void keypad_event(string name, bool pressed);

			public abstract async bool get_sim_buffers_sms() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_sim_buffers_sms(bool sim_buffers_sms) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;
		}

		public struct SIMMessage {
			public int index;
			public string status;
			public string number;
			public string contents;
			public GLib.HashTable<string, GLib.Value?> properties;

			public SIMMessage (int index, string status, string number, string contents, GLib.HashTable<string, GLib.Value?> properties ) {
				this.index = index;
				this.status = status;
				this.number = number;
				this.contents = contents;
				this.properties = properties;
			}
		}

		[DBus (name = "org.freesmartphone.GSM.Network")]
		public interface Network : GLib.Object {

			public abstract async void register_() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void unregister() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_status() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void status(GLib.HashTable<string, GLib.Value?> status);

			public abstract async int get_signal_strength() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void signal_strength(int signal_strength);

			public abstract async NetworkProvider[] list_providers() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void register_with_provider(string operator_code) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void get_network_country_code(out string dial_code, out string country_name) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_call_forwarding(string reason) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void enable_call_forwarding(string reason, string class_, string number, int timeout) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void disable_call_forwarding(string reason, string class_) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_calling_identification(string visible) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async string get_calling_identification() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void send_ussd_request(string request) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void incoming_ussd(string mode, string message_);

			public signal void cipher_status(string gsm, string gprs);
		}

		public struct SIMHomezone {
			public int x;
			public int y;
			public int radius;

			public SIMHomezone (int x, int y, int radius ) {
				this.x = x;
				this.y = y;
				this.radius = radius;
			}
		}

		[DBus (name = "org.freesmartphone.GSM.SMS")]
		public interface SMS : GLib.Object {

			public abstract async uint get_size_for_text_message(string contents) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void send_text_message(string recipient_number, string contents, bool want_report, out int transaction_index, out string timestamp) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void send_message(string recipient_number, string contents, GLib.HashTable<string, GLib.Value?> properties, out int transaction_index, out string timestamp) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void ack_message(string contents, GLib.HashTable<string, GLib.Value?> properties) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void nack_message(string contents, GLib.HashTable<string, GLib.Value?> properties) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void incoming_message(string sender_number, string contents, GLib.HashTable<string, GLib.Value?> properties);

			public signal void incoming_message_receipt(string sender_number, string contents, GLib.HashTable<string, GLib.Value?> properties);
		}

		[DBus (name = "org.freesmartphone.GSM.Call")]
		public interface Call : GLib.Object {

			public abstract async void emergency(string number) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void call_status(int id, FreeSmartphone.GSM.CallStatus status, GLib.HashTable<string, GLib.Value?> properties);

			public abstract async void activate(int id) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void activate_conference(int id) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void release(int id) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void hold_active() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void join() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void transfer(string number) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void release_held() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void release_all() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async int initiate(string number, string type) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async CallDetail[] list_calls() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void send_dtmf(string tones) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;
		}

		[DBus (name = "org.freesmartphone.GSM.CB")]
		public interface CB : GLib.Object {

			public abstract async string get_cell_broadcast_subscriptions() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_cell_broadcast_subscriptions(string channels) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void incoming_cell_broadcast(int serial, int channel, int encoding, int page, string data);
		}

		public struct SIMEntry {
			public int index;
			public string name;
			public string number;

			public SIMEntry (int index, string name, string number ) {
				this.index = index;
				this.name = name;
				this.number = number;
			}
		}

		public struct CallDetail {
			public int id;
			public FreeSmartphone.GSM.CallStatus status;
			public GLib.HashTable<string, GLib.Value?> properties;

			public CallDetail (int id, FreeSmartphone.GSM.CallStatus status, GLib.HashTable<string, GLib.Value?> properties ) {
				this.id = id;
				this.status = status;
				this.properties = properties;
			}
		}

		public struct NetworkProvider {
			public string status;
			public string shortname;
			public string longname;
			public string mccmnc;
			public string act;

			public NetworkProvider (string status, string shortname, string longname, string mccmnc, string act ) {
				this.status = status;
				this.shortname = shortname;
				this.longname = longname;
				this.mccmnc = mccmnc;
				this.act = act;
			}
		}

		[DBus (name = "org.freesmartphone.GSM.SIM")]
		public interface SIM : GLib.Object {

			public abstract async FreeSmartphone.GSM.SIMAuthStatus get_auth_status() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void auth_status(FreeSmartphone.GSM.SIMAuthStatus status);

			public abstract async void send_auth_code(string pin) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void unlock(string puk, string new_pin) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void change_auth_code(string old_pin, string new_pin) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_auth_code_required(bool check, string pin) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async bool get_auth_code_required() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async bool get_sim_ready() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void ready_status(bool status);

			public abstract async GLib.HashTable<string, GLib.Value?> get_sim_info() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async string send_generic_sim_command(string command) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async string send_restricted_sim_command(int command, int fileid, int p1, int p2, int p3, string data) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async SIMHomezone[] get_home_zones() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async string get_issuer() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async GLib.HashTable<string, string> get_provider_list() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async string[] list_phonebooks() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_phonebook_info(string category) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async SIMEntry[] retrieve_phonebook(string category) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void delete_entry(string category, int index) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void store_entry(string category, int index, string name, string number) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void retrieve_entry(string category, int index, out string name, out string number) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_messagebook_info() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async SIMMessage[] retrieve_messagebook(string category) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async string get_service_center_number() throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void set_service_center_number(string number) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public signal void incoming_stored_message(int index);

			public abstract async void delete_message(int index) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async int store_message(string recipient_number, string contents, GLib.HashTable<string, GLib.Value?> properties) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void send_stored_message(int index, out int transaction_index, out string timestamp) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;

			public abstract async void retrieve_message(int index, out string status, out string sender_number, out string contents, out GLib.HashTable<string, GLib.Value?> properties) throws FreeSmartphone.GSM.Error, FreeSmartphone.Error, DBus.Error;
		}
	}
}
