#ifndef TNI_API_HEADER_FILESYSTEMCONTROLMODULE
#define TNI_API_HEADER_FILESYSTEMCONTROLMODULE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FileSystemControlModule : public Node {
	using Node::Node;

	constexpr FileSystemControlModule(Node base) : Node{base} {}
	constexpr FileSystemControlModule(uint64_t addr) : Node{addr} {}
	constexpr FileSystemControlModule(Object obj) : FileSystemControlModule{obj.address()} {}
	FileSystemControlModule(Variant variant) : FileSystemControlModule{variant.as_object().address()} {}

	PROPERTY(RESTRICTED_FILENAMES, Variant);  // Const value type was not supported.
	inline static const String ROUTER_CONF_FILE = "/etc/routes.conf";  // NOTE: You should recompile your mod if this value changes!
	inline static const String DHCPD_CONF_FILE = "/etc/dhcpd.conf";  // NOTE: You should recompile your mod if this value changes!
	inline static const String FW_CONF_FILE = "/etc/nftables.conf";  // NOTE: You should recompile your mod if this value changes!
	inline static const String DNS_ZONE_FILE = "/etc/dns.zone";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VLAN_CONF_FILE = "/etc/vlan.tags";  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(CONFIG_FILENAMES, Variant);  // Const value type was not supported.

	PROPERTY(files, Variant);
	PROPERTY(total_used_size, int64_t);
	PROPERTY(host_controller, LogicController);

	inline Variant get_save_var_list();
	inline bool is_valid_filename(String cand);
	inline bool can_add_file(String filename, Variant file);
	inline Variant get_file(String filename);
	inline Variant get_filedescripts();
	inline void add_file(String filekey, Variant file);
	inline void remove_file(String filekey);
	inline void clear_user_files();
	inline String get_files_str();
	inline void set_files_with_configstr(String cfgs);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
};

#include "LogicController.hpp"

inline Variant FileSystemControlModule::get_save_var_list() { return operator()("get_save_var_list"); }
inline bool FileSystemControlModule::is_valid_filename(String cand) { return operator()("is_valid_filename", cand); }
inline bool FileSystemControlModule::can_add_file(String filename, Variant file) { return operator()("can_add_file", filename, file); }
inline Variant FileSystemControlModule::get_file(String filename) { return operator()("get_file", filename); }
inline Variant FileSystemControlModule::get_filedescripts() { return operator()("get_filedescripts"); }
inline void FileSystemControlModule::add_file(String filekey, Variant file) { voidcall("add_file", filekey, file); }
inline void FileSystemControlModule::remove_file(String filekey) { voidcall("remove_file", filekey); }
inline void FileSystemControlModule::clear_user_files() { voidcall("clear_user_files"); }
inline String FileSystemControlModule::get_files_str() { return operator()("get_files_str"); }
inline void FileSystemControlModule::set_files_with_configstr(String cfgs) { voidcall("set_files_with_configstr", cfgs); }
inline void FileSystemControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void FileSystemControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }

#endif
