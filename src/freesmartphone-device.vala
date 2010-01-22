/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	namespace Device {

		[DBus (name = "org.freesmartphone.Device.Audio")]
		public errordomain AudioError {
			[DBus (name = "UnknownFormat")]
			UNKNOWN_FORMAT,
			[DBus (name = "PlayerError")]
			PLAYER_ERROR,
			[DBus (name = "NotPlaying")]
			NOT_PLAYING,
			[DBus (name = "AlreadyPlaying")]
			ALREADY_PLAYING,
			[DBus (name = "ScenarioInvalid")]
			SCENARIO_INVALID,
			[DBus (name = "ScenarioStackUnderflow")]
			SCENARIO_STACK_UNDERFLOW,
			[DBus (name = "DeviceFailed")]
			DEVICE_FAILED,
		}

		[DBus (name = "org.freesmartphone.Device.Input")]
		public interface Input : GLib.Object {

			public abstract async string get_id() throws DBus.Error;

			public abstract async string get_capabilities() throws DBus.Error;

			public signal void event(string name, FreeSmartphone.Device.InputState action, int seconds);
		}

		//Proxy class for interface Input
		public class InputProxy: GLib.Object, Input {
		
			private Input input;
			
			public InputProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				input = con.get_object (bus_name,path) as Input;
			}

			public async string get_id() throws DBus.Error { 
				return yield input.get_id();
			}

			public async string get_capabilities() throws DBus.Error { 
				return yield input.get_capabilities();
			}
		}
		[DBus (use_string_marshalling = true)]
		public enum PowerStatus {
			[DBus (value="charging")]
			CHARGING,
			[DBus (value="discharging")]
			DISCHARGING,
			[DBus (value="full")]
			FULL,
			[DBus (value="empty")]
			EMPTY,
			[DBus (value="critical")]
			CRITICAL,
			[DBus (value="critical")]
			REMOVED,
			[DBus (value="unknown")]
			UNKNOWN,
			[DBus (value="online")]
			ONLINE,
			[DBus (value="offline")]
			OFFLINE,
			[DBus (value="ac")]
			AC,
		}

		[DBus (use_string_marshalling = true)]
		public enum SoundState {
			[DBus (value="playing")]
			PLAYING,
			[DBus (value="stopped")]
			STOPPED,
		}

		[DBus (use_string_marshalling = true)]
		public enum IdleState {
			[DBus (value="busy")]
			BUSY,
			[DBus (value="idle")]
			IDLE,
			[DBus (value="idle_dim")]
			IDLE_DIM,
			[DBus (value="idle_prelock")]
			IDLE_PRELOCK,
			[DBus (value="lock")]
			LOCK,
			[DBus (value="suspend")]
			SUSPEND,
			[DBus (value="awake")]
			AWAKE,
		}

		[DBus (name = "org.freesmartphone.Device.LED")]
		public interface LED : GLib.Object {

			public abstract async void set_brightness(int brightness) throws DBus.Error;

			public abstract async void set_blinking(int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void blink_seconds(int seconds, int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void set_networking(string interface, string mode) throws FreeSmartphone.Error, DBus.Error;
		}

		//Proxy class for interface LED
		public class LEDProxy: GLib.Object, LED {
		
			private LED l_e_d;
			
			public LEDProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				l_e_d = con.get_object (bus_name,path) as LED;
			}

			public async void set_brightness(int brightness) throws DBus.Error { 
				yield l_e_d.set_brightness(brightness);
			}

			public async void set_blinking(int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error { 
				yield l_e_d.set_blinking(on_duration, off_duration);
			}

			public async void blink_seconds(int seconds, int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error { 
				yield l_e_d.blink_seconds(seconds, on_duration, off_duration);
			}

			public async void set_networking(string interface, string mode) throws FreeSmartphone.Error, DBus.Error { 
				yield l_e_d.set_networking(interface, mode);
			}
		}
		[DBus (name = "org.freesmartphone.Device.Orientation")]
		public interface Orientation : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error;

			public abstract async string get_orientation() throws DBus.Error;

			public signal void orientation_changed(string orientation);
		}

		//Proxy class for interface Orientation
		public class OrientationProxy: GLib.Object, Orientation {
		
			private Orientation orientation;
			
			public OrientationProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				orientation = con.get_object (bus_name,path) as Orientation;
			}

			public async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error { 
				return yield orientation.get_info();
			}

			public async string get_orientation() throws DBus.Error { 
				return yield orientation.get_orientation();
			}
		}
		[DBus (name = "org.freesmartphone.Device.Vibrator")]
		public interface Vibrator : GLib.Object {

			public abstract async void vibrate_pattern(int seconds, int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void vibrate(int seconds) throws FreeSmartphone.Error, DBus.Error;
		}

		//Proxy class for interface Vibrator
		public class VibratorProxy: GLib.Object, Vibrator {
		
			private Vibrator vibrator;
			
			public VibratorProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				vibrator = con.get_object (bus_name,path) as Vibrator;
			}

			public async void vibrate_pattern(int seconds, int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error { 
				yield vibrator.vibrate_pattern(seconds, on_duration, off_duration);
			}

			public async void vibrate(int seconds) throws FreeSmartphone.Error, DBus.Error { 
				yield vibrator.vibrate(seconds);
			}
		}
		[DBus (name = "org.freesmartphone.Device.PowerControl")]
		public interface PowerControl : GLib.Object {

			public abstract async bool get_power() throws DBus.Error;

			public abstract async void set_power(bool on) throws DBus.Error;

			public signal void power(bool on);
		}

		//Proxy class for interface PowerControl
		public class PowerControlProxy: GLib.Object, PowerControl {
		
			private PowerControl power_control;
			
			public PowerControlProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				power_control = con.get_object (bus_name,path) as PowerControl;
			}

			public async bool get_power() throws DBus.Error { 
				return yield power_control.get_power();
			}

			public async void set_power(bool on) throws DBus.Error { 
				yield power_control.set_power(on);
			}
		}
		[DBus (use_string_marshalling = true)]
		public enum InputState {
			[DBus (value="pressed")]
			PRESSED,
			[DBus (value="held")]
			HELD,
			[DBus (value="released")]
			RELEASED,
		}

		[DBus (name = "org.freesmartphone.Device.PowerSupply")]
		public interface PowerSupply : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error;

			public abstract async int get_capacity() throws DBus.Error;

			public abstract async FreeSmartphone.Device.PowerStatus get_power_status() throws DBus.Error;

			public signal void power_status(FreeSmartphone.Device.PowerStatus status);

			public signal void capacity(int energy);
		}

		//Proxy class for interface PowerSupply
		public class PowerSupplyProxy: GLib.Object, PowerSupply {
		
			private PowerSupply power_supply;
			
			public PowerSupplyProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				power_supply = con.get_object (bus_name,path) as PowerSupply;
			}

			public async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error { 
				return yield power_supply.get_info();
			}

			public async int get_capacity() throws DBus.Error { 
				return yield power_supply.get_capacity();
			}

			public async FreeSmartphone.Device.PowerStatus get_power_status() throws DBus.Error { 
				return yield power_supply.get_power_status();
			}
		}
		[DBus (name = "org.freesmartphone.Device.Info")]
		public interface Info : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_cpu_info() throws DBus.Error;
		}

		//Proxy class for interface Info
		public class InfoProxy: GLib.Object, Info {
		
			private Info info;
			
			public InfoProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				info = con.get_object (bus_name,path) as Info;
			}

			public async GLib.HashTable<string, GLib.Value?> get_cpu_info() throws DBus.Error { 
				return yield info.get_cpu_info();
			}
		}
		[DBus (name = "org.freesmartphone.Device.Display")]
		public interface Display : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error;

			public abstract async int get_brightness() throws DBus.Error;

			public abstract async void set_brightness(int brightness) throws DBus.Error;

			public abstract async bool get_backlight_power() throws DBus.Error;

			public abstract async void set_backlight_power(bool power) throws DBus.Error;
		}

		//Proxy class for interface Display
		public class DisplayProxy: GLib.Object, Display {
		
			private Display display;
			
			public DisplayProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				display = con.get_object (bus_name,path) as Display;
			}

			public async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error { 
				return yield display.get_info();
			}

			public async int get_brightness() throws DBus.Error { 
				return yield display.get_brightness();
			}

			public async void set_brightness(int brightness) throws DBus.Error { 
				yield display.set_brightness(brightness);
			}

			public async bool get_backlight_power() throws DBus.Error { 
				return yield display.get_backlight_power();
			}

			public async void set_backlight_power(bool power) throws DBus.Error { 
				yield display.set_backlight_power(power);
			}
		}
		[DBus (name = "org.freesmartphone.Device.RealtimeClock")]
		public interface RealtimeClock : GLib.Object {

			public abstract async int get_current_time() throws FreeSmartphone.Error, DBus.Error;

			public abstract async void set_current_time(int time) throws FreeSmartphone.Error, DBus.Error;

			public abstract async int get_wakeup_time() throws FreeSmartphone.Error, DBus.Error;

			public abstract async void set_wakeup_time(int time) throws FreeSmartphone.Error, DBus.Error;

			public signal void wakeup_time_changed(int time);

			public signal void alarm(int time);
		}

		//Proxy class for interface RealtimeClock
		public class RealtimeClockProxy: GLib.Object, RealtimeClock {
		
			private RealtimeClock realtime_clock;
			
			public RealtimeClockProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				realtime_clock = con.get_object (bus_name,path) as RealtimeClock;
			}

			public async int get_current_time() throws FreeSmartphone.Error, DBus.Error { 
				return yield realtime_clock.get_current_time();
			}

			public async void set_current_time(int time) throws FreeSmartphone.Error, DBus.Error { 
				yield realtime_clock.set_current_time(time);
			}

			public async int get_wakeup_time() throws FreeSmartphone.Error, DBus.Error { 
				return yield realtime_clock.get_wakeup_time();
			}

			public async void set_wakeup_time(int time) throws FreeSmartphone.Error, DBus.Error { 
				yield realtime_clock.set_wakeup_time(time);
			}
		}
		[DBus (name = "org.freesmartphone.Device.Audio")]
		public interface Audio : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error;

			public abstract async string[] get_available_scenarios() throws DBus.Error;

			public abstract async void play_sound(string name, int loop, int length) throws FreeSmartphone.Device.AudioError, FreeSmartphone.Error, DBus.Error;

			public abstract async void stop_sound(string name) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void stop_all_sounds() throws DBus.Error;

			public signal void sound_status(string id, FreeSmartphone.Device.SoundState status, GLib.HashTable<string, GLib.Value?> properties);

			public abstract async string get_scenario() throws DBus.Error;

			public abstract async void set_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void push_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error;

			public abstract async string pull_scenario() throws FreeSmartphone.Device.AudioError, DBus.Error;

			public abstract async void save_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error;

			public signal void scenario(string scenario, string reason);
		}

		//Proxy class for interface Audio
		public class AudioProxy: GLib.Object, Audio {
		
			private Audio audio;
			
			public AudioProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				audio = con.get_object (bus_name,path) as Audio;
			}

			public async GLib.HashTable<string, GLib.Value?> get_info() throws DBus.Error { 
				return yield audio.get_info();
			}

			public async string[] get_available_scenarios() throws DBus.Error { 
				return yield audio.get_available_scenarios();
			}

			public async void play_sound(string name, int loop, int length) throws FreeSmartphone.Device.AudioError, FreeSmartphone.Error, DBus.Error { 
				yield audio.play_sound(name, loop, length);
			}

			public async void stop_sound(string name) throws FreeSmartphone.Error, DBus.Error { 
				yield audio.stop_sound(name);
			}

			public async void stop_all_sounds() throws DBus.Error { 
				yield audio.stop_all_sounds();
			}

			public async string get_scenario() throws DBus.Error { 
				return yield audio.get_scenario();
			}

			public async void set_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error { 
				yield audio.set_scenario(scenario);
			}

			public async void push_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error { 
				yield audio.push_scenario(scenario);
			}

			public async string pull_scenario() throws FreeSmartphone.Device.AudioError, DBus.Error { 
				return yield audio.pull_scenario();
			}

			public async void save_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error { 
				yield audio.save_scenario(scenario);
			}
		}
		[DBus (name = "org.freesmartphone.Device.IdleNotifier")]
		public interface IdleNotifier : GLib.Object {

			public abstract async FreeSmartphone.Device.IdleState get_state() throws DBus.Error;

			public abstract async GLib.HashTable<string, int> get_timeouts() throws DBus.Error;

			public abstract async void set_timeout(FreeSmartphone.Device.IdleState status, int timeout) throws DBus.Error;

			public abstract async void set_state(FreeSmartphone.Device.IdleState status) throws DBus.Error;

			public signal void state(FreeSmartphone.Device.IdleState status);
		}

		//Proxy class for interface IdleNotifier
		public class IdleNotifierProxy: GLib.Object, IdleNotifier {
		
			private IdleNotifier idle_notifier;
			
			public IdleNotifierProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				idle_notifier = con.get_object (bus_name,path) as IdleNotifier;
			}

			public async FreeSmartphone.Device.IdleState get_state() throws DBus.Error { 
				return yield idle_notifier.get_state();
			}

			public async GLib.HashTable<string, int> get_timeouts() throws DBus.Error { 
				return yield idle_notifier.get_timeouts();
			}

			public async void set_timeout(FreeSmartphone.Device.IdleState status, int timeout) throws DBus.Error { 
				yield idle_notifier.set_timeout(status, timeout);
			}

			public async void set_state(FreeSmartphone.Device.IdleState status) throws DBus.Error { 
				yield idle_notifier.set_state(status);
			}
		}	}
}
