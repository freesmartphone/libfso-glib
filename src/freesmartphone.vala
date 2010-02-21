/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	[DBus (name = "org.freesmartphone.MusicPlayer.Playlist")]
	public errordomain MusicPlayerPlaylistError {
		[DBus (name = "FileNotFound")]
		FILE_NOT_FOUND,
		[DBus (name = "OutOfRange")]
		OUT_OF_RANGE,
		[DBus (name = "FiletypeNotSupported")]
		FILETYPE_NOT_SUPPORTED,
		[DBus (name = "Empty")]
		EMPTY,
		[DBus (name = "NoFileSelected")]
		NO_FILE_SELECTED,
		[DBus (name = "OutOfFiles")]
		OUT_OF_FILES,
	}

	[DBus (use_string_marshalling = true)]
	public enum MusicPlayerPlaylistMode {
		[DBus (value="normal")]
		NORMAL,
		[DBus (value="random")]
		RANDOM,
		[DBus (value="endless")]
		ENDLESS,
	}

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

	[DBus (use_string_marshalling = true)]
	public enum MusicPlayerStreamError {
		[DBus (value="failed")]
		FAILED,
		[DBus (value="state_changed")]
		STATE_CHANGED,
		[DBus (value="negotiation")]
		NEGOTIATION,
		[DBus (value="event")]
		EVENT,
		[DBus (value="seek")]
		SEEK,
		[DBus (value="tag")]
		TAG,
		[DBus (value="missing_plugin")]
		MISSING_PLUGIN,
		[DBus (value="disabled")]
		DISABLED,
		[DBus (value="settings")]
		SETTING,
		[DBus (value="encode")]
		ENCODE,
		[DBus (value="decrypt")]
		DECRYPT,
		[DBus (value="nokey")]
		NOKEY,
		[DBus (value="wrong_type")]
		WRONG_TYPE,
		[DBus (value="codec_not_found")]
		CODEC_NOT_FOUND,
	}

	[DBus (name = "org.freesmartphone.MusicPlayer")]
	public interface MusicPlayer : GLib.Object {

		public abstract async void delete_playlist(ObjectPath list) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async ObjectPath get_current_playlist() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async GLib.HashTable<string, GLib.Value?> get_info_for_file(string file) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async string get_playing() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async GLib.HashTable<string, GLib.Value?> get_playing_info() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async string[] get_playlists() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async int get_volume() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void jump(int position) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async ObjectPath new_playlist(string name) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void next() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void pause() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void play() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void pop_pause() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void previous() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void push_pause() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void seek_backward(int step) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void seek_forward(int step) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void set_current_playlist(ObjectPath list) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void set_playing(string file) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void set_volume(int volume) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void stop() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public signal void playing_changed(string file);

		public signal void playlist_added(ObjectPath path);

		public signal void playlist_removed(ObjectPath path);

		public signal void progress(int progress);

		public signal void state(FreeSmartphone.MusicPlayerState state);

		public signal void error(FreeSmartphone.MusicPlayerStreamError the_error, string info);
	}

	//Proxy class for interface MusicPlayer
	public class MusicPlayerProxy: GLib.Object, MusicPlayer {
	
		private MusicPlayer music_player;
		
		public MusicPlayerProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			music_player = con.get_object (bus_name,path) as MusicPlayer;
		}

		public async void delete_playlist(ObjectPath list) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.delete_playlist(list);
		}

		public async ObjectPath get_current_playlist() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			return yield music_player.get_current_playlist();
		}

		public async GLib.HashTable<string, GLib.Value?> get_info_for_file(string file) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			return yield music_player.get_info_for_file(file);
		}

		public async string get_playing() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			return yield music_player.get_playing();
		}

		public async GLib.HashTable<string, GLib.Value?> get_playing_info() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			return yield music_player.get_playing_info();
		}

		public async string[] get_playlists() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			return yield music_player.get_playlists();
		}

		public async int get_volume() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			return yield music_player.get_volume();
		}

		public async void jump(int position) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.jump(position);
		}

		public async ObjectPath new_playlist(string name) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			return yield music_player.new_playlist(name);
		}

		public async void next() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.next();
		}

		public async void pause() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.pause();
		}

		public async void play() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.play();
		}

		public async void pop_pause() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.pop_pause();
		}

		public async void previous() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.previous();
		}

		public async void push_pause() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.push_pause();
		}

		public async void seek_backward(int step) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.seek_backward(step);
		}

		public async void seek_forward(int step) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.seek_forward(step);
		}

		public async void set_current_playlist(ObjectPath list) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.set_current_playlist(list);
		}

		public async void set_playing(string file) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.set_playing(file);
		}

		public async void set_volume(int volume) throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.set_volume(volume);
		}

		public async void stop() throws FreeSmartphone.MusicPlayerError, DBus.Error { 
			yield music_player.stop();
		}
	}
	[DBus (name = "org.freesmartphone.Notification")]
	public interface Notification : GLib.Object {

		public abstract async void alarm() throws DBus.Error;
	}

	//Proxy class for interface Notification
	public class NotificationProxy: GLib.Object, Notification {
	
		private Notification notification;
		
		public NotificationProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			notification = con.get_object (bus_name,path) as Notification;
		}

		public async void alarm() throws DBus.Error { 
			yield notification.alarm();
		}
	}
	[DBus (use_string_marshalling = true)]
	public enum MusicPlayerState {
		[DBus (value="stopped")]
		STOPPED,
		[DBus (value="playing")]
		PLAYING,
		[DBus (value="pause")]
		PAUSED,
		[DBus (value="buffering")]
		BUFFERING,
	}

	[DBus (name = "org.freesmartphone.Phone")]
	public interface Phone : GLib.Object {

		public abstract async string[] init_protocols() throws DBus.Error;

		public abstract async ObjectPath create_call(string number, string protocol, bool force) throws DBus.Error;

		public signal void incoming(ObjectPath call);
	}

	//Proxy class for interface Phone
	public class PhoneProxy: GLib.Object, Phone {
	
		private Phone phone;
		
		public PhoneProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			phone = con.get_object (bus_name,path) as Phone;
		}

		public async string[] init_protocols() throws DBus.Error { 
			return yield phone.init_protocols();
		}

		public async ObjectPath create_call(string number, string protocol, bool force) throws DBus.Error { 
			return yield phone.create_call(number, protocol, force);
		}
	}
	[DBus (name = "org.freesmartphone.Resource")]
	public interface Resource : GLib.Object {

		public abstract async void enable() throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract async void disable() throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract async void suspend() throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract async void resume() throws FreeSmartphone.ResourceError, DBus.Error;
	}

	//Proxy class for interface Resource
	public class ResourceProxy: GLib.Object, Resource {
	
		private Resource resource;
		
		public ResourceProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			resource = con.get_object (bus_name,path) as Resource;
		}

		public async void enable() throws FreeSmartphone.ResourceError, DBus.Error { 
			yield resource.enable();
		}

		public async void disable() throws FreeSmartphone.ResourceError, DBus.Error { 
			yield resource.disable();
		}

		public async void suspend() throws FreeSmartphone.ResourceError, DBus.Error { 
			yield resource.suspend();
		}

		public async void resume() throws FreeSmartphone.ResourceError, DBus.Error { 
			yield resource.resume();
		}
	}
	[DBus (use_string_marshalling = true)]
	public enum UsageSystemAction {
		[DBus (value="alive")]
		ALIVE,
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

		public abstract async string get_peer() throws DBus.Error;

		public abstract async string initiate() throws DBus.Error;

		public abstract async string activate() throws DBus.Error;

		public abstract async string release() throws DBus.Error;

		public abstract async string get_status() throws DBus.Error;

		public abstract async void remove() throws DBus.Error;

		public signal void incoming();

		public signal void outgoing();

		public signal void released();

		public signal void activated();
	}

	//Proxy class for interface PhoneCall
	public class PhoneCallProxy: GLib.Object, PhoneCall {
	
		private PhoneCall phone_call;
		
		public PhoneCallProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			phone_call = con.get_object (bus_name,path) as PhoneCall;
		}

		public async string get_peer() throws DBus.Error { 
			return yield phone_call.get_peer();
		}

		public async string initiate() throws DBus.Error { 
			return yield phone_call.initiate();
		}

		public async string activate() throws DBus.Error { 
			return yield phone_call.activate();
		}

		public async string release() throws DBus.Error { 
			return yield phone_call.release();
		}

		public async string get_status() throws DBus.Error { 
			return yield phone_call.get_status();
		}

		public async void remove() throws DBus.Error { 
			yield phone_call.remove();
		}
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

		public abstract async string[] get_services() throws DBus.Error;

		public abstract async ObjectPath get_service(string name) throws DBus.Error;

		public abstract async string[] get_profiles() throws DBus.Error;

		public abstract async string get_profile() throws DBus.Error;

		public abstract async void set_profile(string profile) throws DBus.Error;

		public signal void notify(string profile);
	}

	//Proxy class for interface Preferences
	public class PreferencesProxy: GLib.Object, Preferences {
	
		private Preferences preferences;
		
		public PreferencesProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			preferences = con.get_object (bus_name,path) as Preferences;
		}

		public async string[] get_services() throws DBus.Error { 
			return yield preferences.get_services();
		}

		public async ObjectPath get_service(string name) throws DBus.Error { 
			return yield preferences.get_service(name);
		}

		public async string[] get_profiles() throws DBus.Error { 
			return yield preferences.get_profiles();
		}

		public async string get_profile() throws DBus.Error { 
			return yield preferences.get_profile();
		}

		public async void set_profile(string profile) throws DBus.Error { 
			yield preferences.set_profile(profile);
		}
	}
	[DBus (name = "org.freesmartphone.MusicPlayer")]
	public errordomain MusicPlayerError {
		[DBus (name = "NoFileSelected")]
		NO_FILE_SELECTED,
		[DBus (name = "NoPlaylistSelected")]
		NO_PLAYLIST_SELECTED,
		[DBus (name = "UnknownPlaylist")]
		UNKNOWN_PLAYLIST,
		[DBus (name = "PlaylistOutOfFiles")]
		PLAYLIST_OUT_OF_FILES,
		[DBus (name = "FileNotFound")]
		FILE_NOT_FOUND,
		[DBus (name = "FiletypeNotSupported")]
		FILETYPE_NOT_SUPPORTED,
		[DBus (name = "ProtocolNotSupported")]
		PROTOCOL_NOT_SUPPORTED,
	}

	[DBus (name = "org.freesmartphone.Network")]
	public interface Network : GLib.Object {

		public abstract async void start_connection_sharing_with_interface(string interface) throws FreeSmartphone.Error, DBus.Error;

		public abstract async void stop_connection_sharing_with_interface(string interface) throws FreeSmartphone.Error, DBus.Error;

		public abstract async void offer_default_route(string technology, string interface, string ipv4address, string ipv4mask, string ipv4gateway, string dns1, string dns2) throws FreeSmartphone.Error, DBus.Error;
	}

	//Proxy class for interface Network
	public class NetworkProxy: GLib.Object, Network {
	
		private Network network;
		
		public NetworkProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			network = con.get_object (bus_name,path) as Network;
		}

		public async void start_connection_sharing_with_interface(string interface) throws FreeSmartphone.Error, DBus.Error { 
			yield network.start_connection_sharing_with_interface(interface);
		}

		public async void stop_connection_sharing_with_interface(string interface) throws FreeSmartphone.Error, DBus.Error { 
			yield network.stop_connection_sharing_with_interface(interface);
		}

		public async void offer_default_route(string technology, string interface, string ipv4address, string ipv4mask, string ipv4gateway, string dns1, string dns2) throws FreeSmartphone.Error, DBus.Error { 
			yield network.offer_default_route(technology, interface, ipv4address, ipv4mask, ipv4gateway, dns1, dns2);
		}
	}
	[DBus (name = "org.freesmartphone.Usage")]
	public interface Usage : GLib.Object {

		public abstract async void register_resource(string name, ObjectPath path) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async void unregister_resource(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async string[] list_resources() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async FreeSmartphone.UsageResourcePolicy get_resource_policy(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async void set_resource_policy(string name, FreeSmartphone.UsageResourcePolicy policy) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async bool get_resource_state(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async string[] get_resource_users(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async void request_resource(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async void release_resource(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async void suspend() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async void shutdown() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public abstract async void reboot() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error;

		public signal void resource_available(string name, bool availability);

		public signal void resource_changed(string name, bool state, GLib.HashTable<string, GLib.Value?> attributes);

		public signal void system_action(FreeSmartphone.UsageSystemAction action);
	}

	//Proxy class for interface Usage
	public class UsageProxy: GLib.Object, Usage {
	
		private Usage usage;
		
		public UsageProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			usage = con.get_object (bus_name,path) as Usage;
		}

		public async void register_resource(string name, ObjectPath path) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.register_resource(name, path);
		}

		public async void unregister_resource(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.unregister_resource(name);
		}

		public async string[] list_resources() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			return yield usage.list_resources();
		}

		public async FreeSmartphone.UsageResourcePolicy get_resource_policy(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			return yield usage.get_resource_policy(name);
		}

		public async void set_resource_policy(string name, FreeSmartphone.UsageResourcePolicy policy) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.set_resource_policy(name, policy);
		}

		public async bool get_resource_state(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			return yield usage.get_resource_state(name);
		}

		public async string[] get_resource_users(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			return yield usage.get_resource_users(name);
		}

		public async void request_resource(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.request_resource(name);
		}

		public async void release_resource(string name) throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.release_resource(name);
		}

		public async void suspend() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.suspend();
		}

		public async void shutdown() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.shutdown();
		}

		public async void reboot() throws FreeSmartphone.UsageError, FreeSmartphone.Error, DBus.Error { 
			yield usage.reboot();
		}
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
	}

	//Proxy class for interface PreferencesService
	public class PreferencesServiceProxy: GLib.Object, PreferencesService {
	
		private PreferencesService preferences_service;
		
		public PreferencesServiceProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			preferences_service = con.get_object (bus_name,path) as PreferencesService;
		}
	}
	[DBus (name = "org.freesmartphone.Events")]
	public interface Events : GLib.Object {

		public abstract async void add_rule(string rule) throws DBus.Error;

		public abstract async void remove_rule(string name) throws DBus.Error;

		public abstract async void trigger_test(string name, bool value) throws DBus.Error;
	}

	//Proxy class for interface Events
	public class EventsProxy: GLib.Object, Events {
	
		private Events events;
		
		public EventsProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			events = con.get_object (bus_name,path) as Events;
		}

		public async void add_rule(string rule) throws DBus.Error { 
			yield events.add_rule(rule);
		}

		public async void remove_rule(string name) throws DBus.Error { 
			yield events.remove_rule(name);
		}

		public async void trigger_test(string name, bool value) throws DBus.Error { 
			yield events.trigger_test(name, value);
		}
	}
	[DBus (name = "org.freesmartphone.MusicPlayer.Playlist")]
	public interface MusicPlayerPlaylist : GLib.Object {

		public abstract async int add(string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void change_name(string new_name) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async string get_at_position(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async string[] get_files() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async FreeSmartphone.MusicPlayerPlaylistMode get_mode() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async string get_name() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void insert(int position, string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void insert_dir(int position, string file, bool recursive) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void jump_to(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void load_from_uri(string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void remove(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void set_mode(FreeSmartphone.MusicPlayerPlaylistMode mode) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public signal void deleted();

		public signal void file_added(int position, string file);

		public signal void file_removed(int postion);

		public signal void mode_changed(FreeSmartphone.MusicPlayerPlaylistMode mode);

		public signal void name(string name);

		public signal void playing(string file);
	}

	//Proxy class for interface MusicPlayerPlaylist
	public class MusicPlayerPlaylistProxy: GLib.Object, MusicPlayerPlaylist {
	
		private MusicPlayerPlaylist music_player_playlist;
		
		public MusicPlayerPlaylistProxy (DBus.Connection con, string bus_name, ObjectPath path) {
			music_player_playlist = con.get_object (bus_name,path) as MusicPlayerPlaylist;
		}

		public async int add(string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			return yield music_player_playlist.add(file);
		}

		public async void change_name(string new_name) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			yield music_player_playlist.change_name(new_name);
		}

		public async string get_at_position(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			return yield music_player_playlist.get_at_position(position);
		}

		public async string[] get_files() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			return yield music_player_playlist.get_files();
		}

		public async FreeSmartphone.MusicPlayerPlaylistMode get_mode() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			return yield music_player_playlist.get_mode();
		}

		public async string get_name() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			return yield music_player_playlist.get_name();
		}

		public async void insert(int position, string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			yield music_player_playlist.insert(position, file);
		}

		public async void insert_dir(int position, string file, bool recursive) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			yield music_player_playlist.insert_dir(position, file, recursive);
		}

		public async void jump_to(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			yield music_player_playlist.jump_to(position);
		}

		public async void load_from_uri(string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			yield music_player_playlist.load_from_uri(file);
		}

		public async void remove(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			yield music_player_playlist.remove(position);
		}

		public async void set_mode(FreeSmartphone.MusicPlayerPlaylistMode mode) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error { 
			yield music_player_playlist.set_mode(mode);
		}
	}
	[DBus (name = "org.freesmartphone.Resource")]
	public errordomain ResourceError {
		[DBus (name = "NotEnabled")]
		NOT_ENABLED,
		[DBus (name = "UnableToEnable")]
		UNABLE_TO_ENABLE,
	}
}
