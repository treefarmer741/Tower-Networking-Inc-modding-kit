---@meta _
-- Generated API for game version 0.9.1

---@class SaveController : Node
---@field EXPORT_SAVE_CALLBACK_FUNCNAME string # Constant value: _on_save_export
---@field IMPORT_SAVE_CALLBACK_FUNCNAME string # Constant value: _on_save_import
---@field EXPORT_SAVE_NODE_DEFAULT_FUNCNAME string # Constant value: _on_default_save_export
---@field IMPORT_SAVE_NODE_DEFAULT_FUNCNAME string # Constant value: _on_default_save_import
---@field SAVE_PATH string # Constant value: user://saves
---@field SAVE_FILE_EXT string # Constant value: .save
---@field VERSION_MARKER string # Constant value: VERSION=
---@field SAVE_PROHIBITION_METATAG string # Constant value: pocosia_save_prohibited
---@field MONKEY_PATCHER_PATH string # Constant value: /root/MonkeyPatcher
---@field SAVK_SCENE_PATH string # Constant value: scene_path
---@field SAVK_PARENT string # Constant value: parent
---@field SAVK_NODE_NAME string # Constant value: name
---@field enabled boolean
---@field mk_patcher MonkeyPatcherBase
local SaveController = {}

---@param file_path string?  # Default = 
function SaveController.initialize_save_path(file_path) end

---@param node Node
---@return SaveController
function SaveController.add_save_controller(node) end

---@param parent Node
---@param recurse_into_descendants boolean?  # Default = true
function SaveController.prohibit_and_remove_save_controllers(parent, recurse_into_descendants) end

---@param save_ptr string
---@param shift_to_local boolean?  # Default = true
---@return integer
function SaveController.get_save_datetime(save_ptr, shift_to_local) end

---@param anchor Node
---@param save_id Object
---@param encryption_password string?  # Default = 
---@param allow_save_lineage_breaks boolean?  # Default = false
---@param min_major_version integer?  # Default = -1
---@param min_minor_version integer?  # Default = -1
---@param batch_size integer?  # Default = 30
function SaveController.begin_async_loading_saved_nodes(anchor, save_id, encryption_password, allow_save_lineage_breaks, min_major_version, min_minor_version, batch_size) end

---@param anchor Node
---@param save_name string
---@param encryption_password string?  # Default = 
---@param batch_size integer?  # Default = 25
function SaveController.begin_async_saving_nodes(anchor, save_name, encryption_password, batch_size) end

---@param save_id Object
---@param encryption_password string?  # Default = 
---@return FileAccess
function SaveController.get_save_file_read_access(save_id, encryption_password) end

---@param save_name string
---@param encryption_password string?  # Default = 
---@return FileAccess
function SaveController.get_save_file_write_access(save_name, encryption_password) end

---@return table<any,any>
function SaveController.export_save_obj() end

---@param save_obj table<any,any>
function SaveController.import_save_obj(save_obj) end

---@param save_name string
---@param permanent boolean?  # Default = false
function SaveController.remove_save(save_name, permanent) end

---@param match_containsi string?  # Default = 
---@param recurse boolean?  # Default = true
---@param trim_prefix_path boolean?  # Default = true
---@param trim_suffix_ext boolean?  # Default = true
---@param sort_by_latest boolean?  # Default = true
---@return Array<string>
function SaveController.list_saves(match_containsi, recurse, trim_prefix_path, trim_suffix_ext, sort_by_latest) end

---@return string
function SaveController.get_latest_save() end

---@param obj Object
---@param vars Array<string>
---@param save_obj_dict table<any,any>
function SaveController.store_vars_to_dict(obj, vars, save_obj_dict) end

---@param obj Object
---@param vars Array<string>
---@param save_obj_dict table<any,any>
function SaveController.load_vars_from_dict(obj, vars, save_obj_dict) end
