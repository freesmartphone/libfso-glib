using GLib;
using DBus;

namespace FreeSmartphone {
	public static GLib.Object get_proxy(DBus.Connection connection, string bus_name, string object_path, string interface_name, Type type) {
		return connection.get_object_from_type(bus_name, object_path, interface_name, type);
	}
}
