#ifndef TNI_API_HEADER_SAVECONTROLLER
#define TNI_API_HEADER_SAVECONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SaveController : public Node {
	using Node::Node;

	constexpr SaveController(Node base) : Node{base} {}
	constexpr SaveController(uint64_t addr) : Node{addr} {}
	constexpr SaveController(Object obj) : SaveController{obj.address()} {}
	SaveController(Variant variant) : SaveController{variant.as_object().address()} {}

	inline static const String EXPORT_SAVE_CALLBACK_FUNCNAME = "_on_save_export";  // NOTE: You should recompile your mod if this value changes!
	inline static const String IMPORT_SAVE_CALLBACK_FUNCNAME = "_on_save_import";  // NOTE: You should recompile your mod if this value changes!
	inline static const String EXPORT_SAVE_NODE_DEFAULT_FUNCNAME = "_on_default_save_export";  // NOTE: You should recompile your mod if this value changes!
	inline static const String IMPORT_SAVE_NODE_DEFAULT_FUNCNAME = "_on_default_save_import";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SAVE_PATH = "user://saves";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SAVE_FILE_EXT = ".save";  // NOTE: You should recompile your mod if this value changes!
	inline static const String VERSION_MARKER = "VERSION=";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SAVE_PROHIBITION_METATAG = "pocosia_save_prohibited";  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(MONKEY_PATCHER_PATH, NodePath);  // Const value type was not supported.
	inline static const String SAVK_SCENE_PATH = "scene_path";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SAVK_PARENT = "parent";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SAVK_NODE_NAME = "name";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(enabled, bool);
	PROPERTY(mk_patcher, Object);

	inline void initialize_save_path(String file_path);
	inline SaveController add_save_controller(Node node);
	inline void prohibit_and_remove_save_controllers(Node parent, bool recurse_into_descendants);
	inline int64_t get_save_datetime(String save_ptr, bool shift_to_local);
	inline void begin_async_loading_saved_nodes(Node anchor, Variant save_id, String encryption_password, bool allow_save_lineage_breaks, int64_t min_major_version, int64_t min_minor_version, int64_t batch_size);
	inline void begin_async_saving_nodes(Node anchor, String save_name, String encryption_password, int64_t batch_size);
	inline FileAccess get_save_file_read_access(Variant save_id, String encryption_password);
	inline FileAccess get_save_file_write_access(String save_name, String encryption_password);
	inline Variant export_save_obj();
	inline void import_save_obj(Variant save_obj);
	inline void remove_save(String save_name, bool permanent);
	inline Variant list_saves(String match_containsi, bool recurse, bool trim_prefix_path, bool trim_suffix_ext, bool sort_by_latest);
	inline String get_latest_save();
	inline void store_vars_to_dict(Object obj, Variant vars, Variant save_obj_dict);
	inline void load_vars_from_dict(Object obj, Variant vars, Variant save_obj_dict);
};

#include "SaveController.hpp"

inline void SaveController::initialize_save_path(String file_path) { voidcall("initialize_save_path", file_path); }
inline SaveController SaveController::add_save_controller(Node node) { return SaveController(operator()("add_save_controller", node).as_object().address()); }
inline void SaveController::prohibit_and_remove_save_controllers(Node parent, bool recurse_into_descendants) { voidcall("prohibit_and_remove_save_controllers", parent, recurse_into_descendants); }
inline int64_t SaveController::get_save_datetime(String save_ptr, bool shift_to_local) { return operator()("get_save_datetime", save_ptr, shift_to_local); }
inline void SaveController::begin_async_loading_saved_nodes(Node anchor, Variant save_id, String encryption_password, bool allow_save_lineage_breaks, int64_t min_major_version, int64_t min_minor_version, int64_t batch_size) { voidcall("begin_async_loading_saved_nodes", anchor, save_id, encryption_password, allow_save_lineage_breaks, min_major_version, min_minor_version, batch_size); }
inline void SaveController::begin_async_saving_nodes(Node anchor, String save_name, String encryption_password, int64_t batch_size) { voidcall("begin_async_saving_nodes", anchor, save_name, encryption_password, batch_size); }
inline FileAccess SaveController::get_save_file_read_access(Variant save_id, String encryption_password) { return FileAccess(operator()("get_save_file_read_access", save_id, encryption_password).as_object().address()); }
inline FileAccess SaveController::get_save_file_write_access(String save_name, String encryption_password) { return FileAccess(operator()("get_save_file_write_access", save_name, encryption_password).as_object().address()); }
inline Variant SaveController::export_save_obj() { return operator()("export_save_obj"); }
inline void SaveController::import_save_obj(Variant save_obj) { voidcall("import_save_obj", save_obj); }
inline void SaveController::remove_save(String save_name, bool permanent) { voidcall("remove_save", save_name, permanent); }
inline Variant SaveController::list_saves(String match_containsi, bool recurse, bool trim_prefix_path, bool trim_suffix_ext, bool sort_by_latest) { return operator()("list_saves", match_containsi, recurse, trim_prefix_path, trim_suffix_ext, sort_by_latest); }
inline String SaveController::get_latest_save() { return operator()("get_latest_save"); }
inline void SaveController::store_vars_to_dict(Object obj, Variant vars, Variant save_obj_dict) { voidcall("store_vars_to_dict", obj, vars, save_obj_dict); }
inline void SaveController::load_vars_from_dict(Object obj, Variant vars, Variant save_obj_dict) { voidcall("load_vars_from_dict", obj, vars, save_obj_dict); }

#endif
