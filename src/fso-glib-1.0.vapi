/* fso-glib-1.0.vapi generated by valac, do not modify. */

[CCode (cprefix = "FreeSmartphone", lower_case_cprefix = "free_smartphone_")]
namespace FreeSmartphone {
	[CCode (cprefix = "FreeSmartphoneDevice", lower_case_cprefix = "free_smartphone_device_")]
	namespace Device {
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.Audio")]
		public interface Audio : GLib.Object {
			public abstract async string[] get_available_scenarios () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_info () throws DBus.Error;
			public abstract string get_scenario () throws DBus.Error;
			public abstract async void play_sound (string name, int loop, int length) throws FreeSmartphone.Device.AudioError, DBus.Error;
			public abstract string pull_scenario () throws FreeSmartphone.Device.AudioError, DBus.Error;
			public abstract void push_scenario (string scenario) throws FreeSmartphone.Device.AudioError, DBus.Error;
			public abstract void set_scenario (string scenario) throws DBus.Error;
			public abstract async void stop_all_sounds () throws DBus.Error;
			public abstract async void stop_sound (string name) throws DBus.Error;
			public signal void scenario (string scenario, string reason);
			public signal void sound_status (string id, FreeSmartphone.Device.SoundState status, GLib.HashTable<string,GLib.Value?> properties);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.Display")]
		public interface Display : GLib.Object {
			public abstract async bool get_backlight_power () throws DBus.Error;
			public abstract async int get_brightness () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_info () throws DBus.Error;
			public abstract async void set_backlight_power (bool power) throws DBus.Error;
			public abstract async void set_brightness (int brightness) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.IdleNotifier")]
		public interface IdleNotifier : GLib.Object {
			public abstract async FreeSmartphone.Device.IdleState get_state () throws DBus.Error;
			public abstract async GLib.HashTable<string,int> get_timeouts () throws DBus.Error;
			public abstract async void set_state (FreeSmartphone.Device.IdleState status) throws DBus.Error;
			public abstract async void set_timeout (FreeSmartphone.Device.IdleState status, int timeout) throws DBus.Error;
			public signal void state (FreeSmartphone.Device.IdleState status);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.Info")]
		public interface Info : GLib.Object {
			public abstract async GLib.HashTable<string,GLib.Value?> get_cpu_info () throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.Input")]
		public interface Input : GLib.Object {
			public abstract async string get_capabilities () throws DBus.Error;
			public abstract async string get_id () throws DBus.Error;
			public signal void event (string name, FreeSmartphone.Device.InputState action, int seconds);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.LED")]
		public interface LED : GLib.Object {
			public abstract async void blink_seconds (int seconds, int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error;
			public abstract async void set_blinking (int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error;
			public abstract async void set_brightness (int brightness) throws DBus.Error;
			public abstract async void set_networking (string @interface, string mode) throws FreeSmartphone.Error, DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.Orientation")]
		public interface Orientation : GLib.Object {
			public abstract async GLib.HashTable<string,GLib.Value?> get_info () throws DBus.Error;
			public abstract async string get_orientation () throws DBus.Error;
			public signal void orientation_changed (string orientation);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.PowerControl")]
		public interface PowerControl : GLib.Object {
			public abstract async bool get_power () throws DBus.Error;
			public abstract async void set_power (bool on) throws DBus.Error;
			public signal void power (bool on);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.PowerSupply")]
		public interface PowerSupply : GLib.Object {
			public abstract int get_capacity () throws DBus.Error;
			public abstract GLib.HashTable<string,GLib.Value?> get_info () throws DBus.Error;
			public abstract FreeSmartphone.Device.PowerStatus get_power_status () throws DBus.Error;
			public signal void capacity (int energy);
			public signal void power_status (FreeSmartphone.Device.PowerStatus status);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.RealtimeClock")]
		public interface RealtimeClock : GLib.Object {
			public abstract async int get_current_time () throws FreeSmartphone.Error, DBus.Error;
			public abstract async int get_wakeup_time () throws FreeSmartphone.Error, DBus.Error;
			public abstract async void set_current_time (int time) throws FreeSmartphone.Error, DBus.Error;
			public abstract async void set_wakeup_time (int time) throws FreeSmartphone.Error, DBus.Error;
			public signal void alarm (int time);
			public signal void wakeup_time_changed (int time);
		}
		[CCode (cprefix = "FREE_SMARTPHONE_DEVICE_IDLE_STATE_", cheader_filename = "freesmartphone.h")]
		[DBus (use_string_marshalling = true)]
		public enum IdleState {
			BUSY,
			IDLE,
			IDLE_DIM,
			IDLE_PRELOCK,
			LOCK,
			SUSPEND,
			AWAKE
		}
		[CCode (cprefix = "FREE_SMARTPHONE_DEVICE_INPUT_STATE_", cheader_filename = "freesmartphone.h")]
		[DBus (use_string_marshalling = true)]
		public enum InputState {
			PRESSED,
			HELD,
			RELEASED
		}
		[CCode (cprefix = "FREE_SMARTPHONE_DEVICE_POWER_STATUS_", cheader_filename = "freesmartphone.h")]
		[DBus (use_string_marshalling = true)]
		public enum PowerStatus {
			CHARGING,
			DISCHARGING,
			FULL,
			EMPTY,
			CRITICAL,
			REMOVED,
			UNKNOWN,
			ONLINE,
			OFFLINE,
			AC
		}
		[CCode (cprefix = "FREE_SMARTPHONE_DEVICE_SOUND_STATE_", cheader_filename = "freesmartphone.h")]
		[DBus (use_string_marshalling = true)]
		public enum SoundState {
			PLAYING,
			STOPPED
		}
		[CCode (cprefix = "FREE_SMARTPHONE_DEVICE_AUDIO_ERROR_", cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Device.Audio")]
		public errordomain AudioError {
			UNKNOWN_FORMAT,
			PLAYER_ERROR,
			NOT_PLAYING,
			ALREADY_PLAYING,
			SCENARIO_INVALID,
			SCENARIO_STACK_UNDERFLOW,
			DEVICE_FAILED,
		}
	}
	[CCode (cprefix = "FreeSmartphoneGSM", lower_case_cprefix = "free_smartphone_gsm_")]
	namespace GSM {
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.CB")]
		public interface CB : GLib.Object {
			public abstract async string get_cell_broadcast_subscriptions () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_cell_broadcast_subscriptions (string channels) throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void incoming_cell_broadcast (int serial, int channel, int encoding, int page, string data);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.Call")]
		public interface Call : GLib.Object {
			public abstract async void activate (int id) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void activate_conference (int id) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void emergency (string number) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void hold_active () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async int initiate (string number, string type) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void join () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async FreeSmartphone.GSM.CallDetail[] list_calls () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void release (int id) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void release_all () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void release_held () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void send_dtmf (string tones) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void transfer (string number) throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void call_status (int id, FreeSmartphone.GSM.CallStatus status, GLib.HashTable<string,GLib.Value?> properties);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.Device")]
		public interface Device : GLib.Object {
			public abstract async bool get_antenna_power () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_features () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_info () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async bool get_microphone_muted () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async bool get_sim_buffers_sms () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async int get_speaker_volume () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_antenna_power (bool antenna_power) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_microphone_muted (bool muted) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_sim_buffers_sms (bool sim_buffers_sms) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_speaker_volume (int volume) throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void keypad_event (string name, bool pressed);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.HZ")]
		public interface HZ : GLib.Object {
			public abstract async string get_home_zone_status () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string[] get_known_home_zones () throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void home_zone_status (string name);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.MUX")]
		public interface MUX : GLib.Object {
			public abstract async void alloc_channel (string origin, int channel, out string path, out int allocated_channel) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void close_session () throws DBus.Error;
			public abstract async void open_session (bool advanced, int framesize, string portname, int portspeed) throws DBus.Error;
			public abstract async void release_channel (string origin) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_status (int channel, string status) throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void status (string status);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.Monitor")]
		public interface Monitor : GLib.Object {
			public abstract async FreeSmartphone.GSM.MonitorNeighbourCell[] get_neighbour_cell_information () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_serving_cell_information () throws FreeSmartphone.GSM.Error, DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.Network")]
		public interface Network : GLib.Object {
			public abstract async void disable_call_forwarding (string reason, string class_) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void enable_call_forwarding (string reason, string class_, string number, int timeout) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_call_forwarding (string reason) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string get_calling_identification () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void get_network_country_code (out string dial_code, out string country_name) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async int get_signal_strength () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_status () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async FreeSmartphone.GSM.NetworkProvider[] list_providers () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void register_ () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void register_with_provider (string operator_code) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void send_ussd_request (string request) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_calling_identification (string visible) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void unregister () throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void cipher_status (string gsm, string gprs);
			public signal void incoming_ussd (string mode, string message_);
			public signal void signal_strength (int signal_strength);
			public signal void status (GLib.HashTable<string,GLib.Value?> status);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.PDP")]
		public interface PDP : GLib.Object {
			public abstract async int activate_context (string apn, string username, string password) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void deactivate_context (int index) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string get_context_status (int index) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string get_current_gprs_class () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_network_status () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string[] list_gprs_classes () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_current_gprs_class (string device_class) throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void context_status (int id, string status, GLib.HashTable<string,GLib.Value?> properties);
			public signal void network_status (GLib.HashTable<string,GLib.Value?> status);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.SIM")]
		public interface SIM : GLib.Object {
			public abstract async void change_auth_code (string old_pin, string new_pin) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void delete_entry (string category, int index) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void delete_message (int index) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async bool get_auth_code_required () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async FreeSmartphone.GSM.SIMAuthStatus get_auth_status () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async FreeSmartphone.GSM.SIMHomezone[] get_home_zones () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string get_issuer () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_messagebook_info () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_phonebook_info (string category) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,string> get_provider_list () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string get_service_center_number () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_sim_info () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async bool get_sim_ready () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string[] list_phonebooks () throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void retrieve_entry (string category, int index, out string name, out string number) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void retrieve_message (int index, out string status, out string sender_number, out string contents, out GLib.HashTable<string,GLib.Value?> properties) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async FreeSmartphone.GSM.SIMMessage[] retrieve_messagebook (string category) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async FreeSmartphone.GSM.SIMEntry[] retrieve_phonebook (string category) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void send_auth_code (string pin) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string send_generic_sim_command (string command) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async string send_restricted_sim_command (int command, int fileid, int p1, int p2, int p3, string data) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void send_stored_message (int index, out int transaction_index, out string timestamp) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_auth_code_required (bool check, string pin) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void set_service_center_number (string number) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void store_entry (string category, int index, string name, string number) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async int store_message (string recipient_number, string contents, GLib.HashTable<string,GLib.Value?> properties) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void unlock (string puk, string new_pin) throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void auth_status (FreeSmartphone.GSM.SIMAuthStatus status);
			public signal void incoming_stored_message (int index);
			public signal void ready_status (bool status);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM.SMS")]
		public interface SMS : GLib.Object {
			public abstract async void ack_message (string contents, GLib.HashTable<string,GLib.Value?> properties) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void nack_message (string contents, GLib.HashTable<string,GLib.Value?> properties) throws FreeSmartphone.GSM.Error, DBus.Error;
			public abstract async void send_message (string recipient_number, string contents, GLib.HashTable<string,GLib.Value?> properties, out int transaction_index, out string timestamp) throws FreeSmartphone.GSM.Error, DBus.Error;
			public signal void incoming_message (string sender_number, string contents, GLib.HashTable<string,GLib.Value?> properties);
			public signal void incoming_message_receipt (string sender_number, string contents, GLib.HashTable<string,GLib.Value?> properties);
		}
		[CCode (type_id = "FREE_SMARTPHONE_GSM_TYPE_CALL_DETAIL", cheader_filename = "freesmartphone.h")]
		public struct CallDetail {
			public int id;
			public FreeSmartphone.GSM.CallStatus status;
			public GLib.HashTable<string,GLib.Value?> properties;
		}
		[CCode (type_id = "FREE_SMARTPHONE_GSM_TYPE_MONITOR_NEIGHBOUR_CELL", cheader_filename = "freesmartphone.h")]
		public struct MonitorNeighbourCell {
			public GLib.HashTable<string,GLib.Value?> attr1;
		}
		[CCode (type_id = "FREE_SMARTPHONE_GSM_TYPE_NETWORK_PROVIDER", cheader_filename = "freesmartphone.h")]
		public struct NetworkProvider {
			public string attr1;
			public string attr2;
			public string attr3;
			public string attr4;
			public string attr5;
		}
		[CCode (type_id = "FREE_SMARTPHONE_GSM_TYPE_SIM_ENTRY", cheader_filename = "freesmartphone.h")]
		public struct SIMEntry {
			public int attr1;
			public string attr2;
			public string attr3;
		}
		[CCode (type_id = "FREE_SMARTPHONE_GSM_TYPE_SIM_HOMEZONE", cheader_filename = "freesmartphone.h")]
		public struct SIMHomezone {
			public string attr1;
			public int attr2;
			public int attr3;
			public int attr4;
		}
		[CCode (type_id = "FREE_SMARTPHONE_GSM_TYPE_SIM_MESSAGE", cheader_filename = "freesmartphone.h")]
		public struct SIMMessage {
			public int attr1;
			public string attr2;
			public string attr3;
			public string attr4;
			public GLib.HashTable<string,GLib.Value?> attr5;
		}
		[CCode (cprefix = "FREE_SMARTPHONE_GSM_CALL_STATUS_", cheader_filename = "freesmartphone.h")]
		[DBus (use_string_marshalling = true)]
		public enum CallStatus {
			INCOMING,
			OUTGOING,
			ACTIVE,
			HELD,
			RELEASE
		}
		[CCode (cprefix = "FREE_SMARTPHONE_GSM_SIM_AUTH_STATUS_", cheader_filename = "freesmartphone.h")]
		[DBus (use_string_marshalling = true)]
		public enum SIMAuthStatus {
			READY,
			PIN_REQUIRED,
			PUK_REQUIRED,
			PIN2_REQUIRED,
			PUK2_REQUIRED
		}
		[CCode (cprefix = "FREE_SMARTPHONE_GSM_ERROR_", cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.GSM")]
		public errordomain Error {
			DEVICE_NOT_PRESENT,
			DEVICE_TIMEOUT,
			DEVICE_FAILED,
			SIM_NOT_PRESENT,
			SIM_AUTH_FAILED,
			SIM_BLOCKED,
			SIM_NOT_FOUND,
			SIM_MEMORY_FULL,
			SIM_INVALID_INDEX,
			CALL_NOT_FOUND,
			MUX_CHANNEL_TAKEN,
			MUX_NO_CHANNEL,
			MUX_NO_SESSION,
			MUX_SESSION_ALREADY_OPEN,
			MUX_SESSION_OPEN_ERROR,
			NETWORK_NOT_PRESENT,
			NETWORK_UNAUTHORIZED,
			NETWORK_NOT_SUPPORTED,
			NETWORK_NOT_FOUND,
			CONTEXT_NOT_FOUND,
		}
	}
	[CCode (cprefix = "FreeSmartphonePIM", lower_case_cprefix = "free_smartphone_pim_")]
	namespace PIM {
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Call")]
		public interface Call : GLib.Object {
			public abstract async void @delete () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_content () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_multiple_fields (string field_list) throws DBus.Error;
			public abstract string[] get_used_backends () throws DBus.Error;
			public abstract async void update (GLib.HashTable<string,GLib.Value?> call_data) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.CallQuery")]
		public interface CallQuery : GLib.Object {
			public abstract async void dispose_ () throws DBus.Error;
			public abstract async string get_call_path () throws DBus.Error;
			public abstract GLib.HashTable<string,GLib.Value?>[] get_multiple_results (int count) throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_result () throws DBus.Error;
			public abstract async int get_result_count () throws DBus.Error;
			public abstract async void rewind () throws DBus.Error;
			public abstract async void skip (int count) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Calls")]
		public interface Calls : GLib.Object {
			public abstract async string add (GLib.HashTable<string,GLib.Value?> call_data) throws DBus.Error;
			public abstract async string get_single_call_single_field (GLib.HashTable<string,GLib.Value?> query, string field) throws DBus.Error;
			public abstract async string query (GLib.HashTable<string,GLib.Value?> query) throws DBus.Error;
			public signal void new_call (string call_path);
			public signal void new_missed_calls (int amount);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Contact")]
		public interface Contact : GLib.Object {
			public abstract async void @delete () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_content () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_multiple_fields (string field_list) throws DBus.Error;
			public abstract string[] get_used_backends () throws DBus.Error;
			public abstract async void update (GLib.HashTable<string,GLib.Value?> contact_data) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.ContactQuery")]
		public interface ContactQuery : GLib.Object {
			public abstract async void dispose_ () throws DBus.Error;
			public abstract async string get_contact_path () throws DBus.Error;
			public abstract GLib.HashTable<string,GLib.Value?>[] get_multiple_results (int count) throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_result () throws DBus.Error;
			public abstract async int get_result_count () throws DBus.Error;
			public abstract async void rewind () throws DBus.Error;
			public abstract async void skip (int count) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Contacts")]
		public interface Contacts : GLib.Object {
			public abstract async string add (GLib.HashTable<string,GLib.Value?> contact_data) throws DBus.Error;
			public abstract async string get_single_contact_single_field (GLib.HashTable<string,GLib.Value?> query, string field) throws DBus.Error;
			public abstract async string query (GLib.HashTable<string,GLib.Value?> query) throws DBus.Error;
			public signal void new_contact (string contact_path);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Message")]
		public interface Message : GLib.Object {
			public abstract async void @delete () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_content () throws DBus.Error;
			public abstract async void get_multiple_fields (string field_list) throws DBus.Error;
			public abstract async void move_to_folder (string folder_name) throws DBus.Error;
			public abstract async void update (GLib.HashTable<string,GLib.Value?> message_data) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.MessageFolder")]
		public interface MessageFolder : GLib.Object {
			public abstract async int get_message_count () throws DBus.Error;
			public abstract async string[] get_message_paths (int first, int count) throws DBus.Error;
			public signal void message_moved (string message_path, string new_folder);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.MessageQuery")]
		public interface MessageQuery : GLib.Object {
			public abstract async void dispose_ () throws DBus.Error;
			public abstract async string get_message_path () throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?>[] get_multiple_results (int count) throws DBus.Error;
			public abstract async GLib.HashTable<string,GLib.Value?> get_result () throws DBus.Error;
			public abstract async int get_result_count () throws DBus.Error;
			public abstract async void rewind () throws DBus.Error;
			public abstract async void skip (int count) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Messages")]
		public interface Messages : GLib.Object {
			public abstract async string add (GLib.HashTable<string,GLib.Value?> message_data) throws DBus.Error;
			public abstract async string[] get_folder_names () throws DBus.Error;
			public abstract async string get_folder_path_from_name (string folder_name) throws DBus.Error;
			public abstract async string get_single_message_single_field (GLib.HashTable<string,GLib.Value?> query, string field) throws DBus.Error;
			public abstract async string query (GLib.HashTable<string,GLib.Value?> query) throws DBus.Error;
			public signal void incoming_message (string message_path);
			public signal void new_message (string message_path);
			public signal void unread_messages (int amount);
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Source")]
		public interface Source : GLib.Object {
			public abstract void disable () throws DBus.Error;
			public abstract void enable () throws DBus.Error;
			public abstract bool get_enabled () throws DBus.Error;
			public abstract async string get_name () throws DBus.Error;
			public abstract string[] get_properties () throws DBus.Error;
			public abstract async string get_status () throws DBus.Error;
			public abstract async string[] get_supported_p_i_m_domains () throws DBus.Error;
			public abstract void set_as_default (string domain) throws DBus.Error;
		}
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.PIM.Sources")]
		public interface Sources : GLib.Object {
			public abstract string get_default_backend (string domain) throws DBus.Error;
			public abstract string[] get_domains () throws DBus.Error;
			public abstract async int get_entry_count () throws DBus.Error;
			public abstract async void init_all_entries () throws DBus.Error;
		}
	}
	[CCode (cprefix = "FreeSmartphoneTime", lower_case_cprefix = "free_smartphone_time_")]
	namespace Time {
		[CCode (cheader_filename = "freesmartphone.h")]
		[DBus (name = "org.freesmartphone.Time.Alarm")]
		public interface Alarm : GLib.Object {
			public abstract async void clear_alarm (string busname) throws DBus.Error;
			public abstract async void set_alarm (string busname, int timestamp) throws FreeSmartphone.Error, DBus.Error;
		}
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Events")]
	public interface Events : GLib.Object {
		public abstract void add_rule (string rule) throws DBus.Error;
		public abstract void remove_rule (string name) throws DBus.Error;
		public abstract void trigger_test (string name, bool value) throws DBus.Error;
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.MusicPlayer")]
	public interface MusicPlayer : GLib.Object {
		public abstract void delete_playlist (DBus.ObjectPath list) throws DBus.Error;
		public abstract DBus.ObjectPath get_current_playlist () throws DBus.Error;
		public abstract GLib.HashTable<string,GLib.Value?> get_info_for_file (string file) throws DBus.Error;
		public abstract string get_playing () throws DBus.Error;
		public abstract GLib.HashTable<string,GLib.Value?> get_playing_info () throws DBus.Error;
		public abstract string[] get_playlist () throws DBus.Error;
		public abstract int get_volume () throws DBus.Error;
		public abstract void jump (int position) throws DBus.Error;
		public abstract DBus.ObjectPath new_playlist (string name) throws DBus.Error;
		public abstract void next () throws DBus.Error;
		public abstract void pause () throws DBus.Error;
		public abstract void play () throws DBus.Error;
		public abstract void previous () throws DBus.Error;
		public abstract void seek_backward (int step) throws DBus.Error;
		public abstract void seek_forward (int step) throws DBus.Error;
		public abstract void set_current_playlist (DBus.ObjectPath list) throws DBus.Error;
		public abstract void set_playing (string file) throws DBus.Error;
		public abstract void set_volume (int volume) throws DBus.Error;
		public abstract void stop () throws DBus.Error;
		public signal void playing_changed (string file);
		public signal void playlist_added (DBus.ObjectPath path);
		public signal void playlist_removed (DBus.ObjectPath path);
		public signal void progress (int progress);
		public signal void state (FreeSmartphone.MusicPlayerState state);
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.MusicPlayer.Playlist")]
	public interface MusicPlayerPlaylist : GLib.Object {
		public abstract int add (string file) throws DBus.Error;
		public abstract void change_name (string new_name) throws DBus.Error;
		public abstract string get_at_position (int position) throws DBus.Error;
		public abstract string[] get_files () throws DBus.Error;
		public abstract FreeSmartphone.MusicPlayerPlaylistMode get_mode () throws DBus.Error;
		public abstract string get_name () throws DBus.Error;
		public abstract void insert (int position, string file) throws DBus.Error;
		public abstract void insert_dir (int position, string file, bool recursive) throws DBus.Error;
		public abstract void load_from_file (string file) throws DBus.Error;
		public abstract void remove (int position) throws DBus.Error;
		public abstract void set_mode (FreeSmartphone.MusicPlayerPlaylistMode mode) throws DBus.Error;
		public signal void deleted ();
		public signal void file_added (int position, string file);
		public signal void file_removed (int postion);
		public signal void mode_changed (FreeSmartphone.MusicPlayerPlaylistMode mode);
		public signal void name (string name);
		public signal void playing (string file);
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Network")]
	public interface Network : GLib.Object {
		public abstract async void start_connection_sharing_with_interface (string @interface) throws FreeSmartphone.Error, DBus.Error;
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Phone")]
	public interface Phone : GLib.Object {
		public abstract DBus.ObjectPath create_call (string number, string protocol, bool force) throws DBus.Error;
		public abstract string[] init_protocols () throws DBus.Error;
		public signal void incoming (DBus.ObjectPath call);
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Phone.Call")]
	public interface PhoneCall : GLib.Object {
		public abstract string activate () throws DBus.Error;
		public abstract string get_peer () throws DBus.Error;
		public abstract string get_status () throws DBus.Error;
		public abstract string initiate () throws DBus.Error;
		public abstract string release () throws DBus.Error;
		public abstract void remove () throws DBus.Error;
		public signal void activated ();
		public signal void incoming ();
		public signal void outgoing ();
		public signal void released ();
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Preferences")]
	public interface Preferences : GLib.Object {
		public abstract async string get_profile () throws DBus.Error;
		public abstract async string[] get_profiles () throws DBus.Error;
		public abstract async DBus.ObjectPath get_service (string name) throws DBus.Error;
		public abstract async string[] get_services () throws DBus.Error;
		public abstract async void set_profile (string profile) throws DBus.Error;
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Preferences.Service")]
	public interface PreferencesService : GLib.Object {
		public abstract async string[] get_keys () throws DBus.Error;
		public abstract async string get_type_ (string key) throws DBus.Error;
		public abstract async GLib.Value get_value (string key) throws DBus.Error;
		public abstract async bool is_profilable (string key) throws DBus.Error;
		public abstract async void set_value (string key, GLib.Value value) throws DBus.Error;
		public signal void notify (string key, GLib.Value value);
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Resource")]
	public interface Resource : GLib.Object {
		public abstract async void disable () throws FreeSmartphone.ResourceError, DBus.Error;
		public abstract async void enable () throws DBus.Error;
		public abstract async void resume () throws FreeSmartphone.ResourceError, DBus.Error;
		public abstract async void suspend () throws FreeSmartphone.ResourceError, DBus.Error;
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Usage")]
	public interface Usage : GLib.Object {
		public abstract async FreeSmartphone.UsageResourcePolicy get_resource_policy (string name) throws FreeSmartphone.UsageError, DBus.Error;
		public abstract async bool get_resource_state (string name) throws FreeSmartphone.UsageError, DBus.Error;
		public abstract async string[] get_resource_users (string name) throws FreeSmartphone.UsageError, DBus.Error;
		public abstract async string[] list_resources () throws DBus.Error;
		public abstract async void reboot () throws DBus.Error;
		public abstract async void register_resource (string name, DBus.ObjectPath path) throws FreeSmartphone.UsageError, DBus.Error;
		public abstract async void release_resource (string name) throws FreeSmartphone.UsageError, DBus.Error;
		public abstract async void request_resource (string name) throws FreeSmartphone.UsageError, DBus.Error;
		public abstract async void set_resource_policy (string name, FreeSmartphone.UsageResourcePolicy policy) throws FreeSmartphone.UsageError, DBus.Error;
		public abstract async void shutdown () throws DBus.Error;
		public abstract async void suspend () throws DBus.Error;
		public abstract async void unregister_resource (string name) throws DBus.Error;
		public signal void resource_available (string name, bool availability);
		public signal void resource_changed (string name, bool state, GLib.HashTable<string,GLib.Value?> attributes);
		public signal void system_action (FreeSmartphone.UsageSystemAction action);
	}
	[CCode (cprefix = "FREE_SMARTPHONE_MUSIC_PLAYER_PLAYLIST_MODE_", cheader_filename = "freesmartphone.h")]
	[DBus (use_string_marshalling = true)]
	public enum MusicPlayerPlaylistMode {
		NORMAL,
		RANDOM,
		ENDLESS
	}
	[CCode (cprefix = "FREE_SMARTPHONE_MUSIC_PLAYER_STATE_", cheader_filename = "freesmartphone.h")]
	[DBus (use_string_marshalling = true)]
	public enum MusicPlayerState {
		STOPPED,
		PLAYING,
		PAUSED,
		BUFFERING
	}
	[CCode (cprefix = "FREE_SMARTPHONE_USAGE_RESOURCE_POLICY_", cheader_filename = "freesmartphone.h")]
	[DBus (use_string_marshalling = true)]
	public enum UsageResourcePolicy {
		AUTO,
		DISABLED,
		ENABLED
	}
	[CCode (cprefix = "FREE_SMARTPHONE_USAGE_SYSTEM_ACTION_", cheader_filename = "freesmartphone.h")]
	[DBus (use_string_marshalling = true)]
	public enum UsageSystemAction {
		SUSPEND,
		RESUME,
		SHUTDOWN,
		REBOOT
	}
	[CCode (cprefix = "FREE_SMARTPHONE_ERROR_", cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone")]
	public errordomain Error {
		INVALID_PARAMETER,
		INTERNAL_ERROR,
		SYSTEM_ERROR,
		UNSUPPORTED,
	}
	[CCode (cprefix = "FREE_SMARTPHONE_RESOURCE_ERROR_", cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Resource")]
	public errordomain ResourceError {
		NOT_ENABLED,
	}
	[CCode (cprefix = "FREE_SMARTPHONE_USAGE_ERROR_", cheader_filename = "freesmartphone.h")]
	[DBus (name = "org.freesmartphone.Usage")]
	public errordomain UsageError {
		POLICY_UNKNOWN,
		POLICY_DISABLED,
		RESOURCE_UNKNOWN,
		RESOURCE_EXISTS,
		RESOURCE_IN_USE,
		USER_EXISTS,
		USER_UNKNOWN,
	}
	[CCode (cheader_filename = "freesmartphone.h")]
	public static GLib.Object get_proxy (DBus.Connection connection, string bus_name, string object_path, string interface_name, GLib.Type type);
}
