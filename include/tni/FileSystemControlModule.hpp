#ifndef TNI_API_HEADER_FILESYSTEMCONTROLMODULE
#define TNI_API_HEADER_FILESYSTEMCONTROLMODULE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "LogicControlModule.hpp"

struct FileSystemControlModule : public LogicControlModule {
	using LogicControlModule::LogicControlModule;

	constexpr FileSystemControlModule(LogicControlModule base) : LogicControlModule{base} {}
	constexpr FileSystemControlModule(uint64_t addr) : LogicControlModule{addr} {}
	constexpr FileSystemControlModule(Object obj) : FileSystemControlModule{obj.address()} {}
	FileSystemControlModule(Variant variant) : FileSystemControlModule{variant.as_object().address()} {}

	PROPERTY(RESTRICTED_FILENAMES, Variant);  // Const value type was not supported.
	inline static const String ROUTER_CONF_FILE = "/etc/routes.conf";  // NOTE: You should recompile your mod if this value changes!
	inline static const String DHCPD_CONF_FILE = "/etc/dhcpd.conf";  // NOTE: You should recompile your mod if this value changes!
	inline static const String FW_CONF_FILE = "/etc/nftables.conf";  // NOTE: You should recompile your mod if this value changes!
	inline static const String DNS_ZONE_FILE = "/etc/dns.zone";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VLAN_CONF_FILE = "/etc/vlan.tags";  // NOTE: You should recompile your mod if this value changes!
	inline static const String MBOX_CONF_FILE = "/etc/mangling.conf";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SAN_CONF_FILE = "/etc/iscsid.conf";  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(CONFIG_FILENAMES, Variant);  // Const value type was not supported.
	inline static const String LUN_PREFIX = "/lun/";  // NOTE: You should recompile your mod if this value changes!
	inline static const String PROGRAM_STATE_PREFIX = "s:";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VOLUME_PREFIX = "v:";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(files, Variant);
	PROPERTY(total_used_size, int64_t);
	PROPERTY(host_controller, LogicController);

	inline Variant get_save_var_list();
	inline String lun_key(String volume_name);
	inline String free_lun_key();
	inline bool is_volume_body(Variant body);
	inline bool is_volume_row(Variant row);
	inline String volume_token(Variant body);
	inline String make_volume_body(String token, String payload);
	inline String volume_payload(Variant body);
	inline bool is_valid_filename(String cand);
	inline bool can_add_file(String filename, Variant file);
	inline Variant get_file(String filename, bool with_state);
	inline Variant get_filedescripts();
	inline void add_file(String filekey, Variant file, bool force_install);
	inline void remove_file(String filekey);
	inline void clear_user_files();
	inline String get_files_str();
	inline void set_files_with_configstr(String cfgs);
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
};

#include "LogicController.hpp"

inline Variant FileSystemControlModule::get_save_var_list() { return this->operator()("get_save_var_list"); }
inline String FileSystemControlModule::lun_key(String volume_name) { return this->operator()("lun_key", volume_name); }
inline String FileSystemControlModule::free_lun_key() { return this->operator()("free_lun_key"); }
inline bool FileSystemControlModule::is_volume_body(Variant body) { return this->operator()("is_volume_body", body); }
inline bool FileSystemControlModule::is_volume_row(Variant row) { return this->operator()("is_volume_row", row); }
inline String FileSystemControlModule::volume_token(Variant body) { return this->operator()("volume_token", body); }
inline String FileSystemControlModule::make_volume_body(String token, String payload) { return this->operator()("make_volume_body", token, payload); }
inline String FileSystemControlModule::volume_payload(Variant body) { return this->operator()("volume_payload", body); }
inline bool FileSystemControlModule::is_valid_filename(String cand) { return this->operator()("is_valid_filename", cand); }
inline bool FileSystemControlModule::can_add_file(String filename, Variant file) { return this->operator()("can_add_file", filename, file); }
inline Variant FileSystemControlModule::get_file(String filename, bool with_state) { return this->operator()("get_file", filename, with_state); }
inline Variant FileSystemControlModule::get_filedescripts() { return this->operator()("get_filedescripts"); }
inline void FileSystemControlModule::add_file(String filekey, Variant file, bool force_install) { this->voidcall("add_file", filekey, file, force_install); }
inline void FileSystemControlModule::remove_file(String filekey) { this->voidcall("remove_file", filekey); }
inline void FileSystemControlModule::clear_user_files() { this->voidcall("clear_user_files"); }
inline String FileSystemControlModule::get_files_str() { return this->operator()("get_files_str"); }
inline void FileSystemControlModule::set_files_with_configstr(String cfgs) { this->voidcall("set_files_with_configstr", cfgs); }
inline void FileSystemControlModule::handle_save(Variant save_obj) { this->voidcall("handle_save", save_obj); }
inline void FileSystemControlModule::handle_load(Variant save_obj) { this->voidcall("handle_load", save_obj); }

#endif
