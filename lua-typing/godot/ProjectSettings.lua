---@meta _
-- Generated API for game version 0.10.0

---@class ProjectSettings : Object
local ProjectSettings = {}

---@param name string
---@return boolean
function ProjectSettings.has_setting(name) end

---@param name string
---@param value Object
function ProjectSettings.set_setting(name, value) end

---@param name string
---@param default_value Object?  # Default = <null>
---@return Object
function ProjectSettings.get_setting(name, default_value) end

---@param name string
---@return Object
function ProjectSettings.get_setting_with_override(name) end

---@return Array<Dictionary>
function ProjectSettings.get_global_class_list() end

---@param name string
---@param features PackedStringArray
---@return Object
function ProjectSettings.get_setting_with_override_and_custom_features(name, features) end

---@param name string
---@param position integer
function ProjectSettings.set_order(name, position) end

---@param name string
---@return integer
function ProjectSettings.get_order(name) end

---@param name string
---@param value Object
function ProjectSettings.set_initial_value(name, value) end

---@param name string
---@param basic boolean
function ProjectSettings.set_as_basic(name, basic) end

---@param name string
---@param internal boolean
function ProjectSettings.set_as_internal(name, internal) end

---@param hint table<any,any>
function ProjectSettings.add_property_info(hint) end

---@param name string
---@param restart boolean
function ProjectSettings.set_restart_if_changed(name, restart) end

---@param name string
function ProjectSettings.clear(name) end

---@param path string
---@return string
function ProjectSettings.localize_path(path) end

---@param path string
---@return string
function ProjectSettings.globalize_path(path) end

---@return Error
function ProjectSettings.save() end

---@param pack string
---@param replace_files boolean?  # Default = true
---@param offset integer?  # Default = 0
---@return boolean
function ProjectSettings.load_resource_pack(pack, replace_files, offset) end

---@param file string
---@return Error
function ProjectSettings.save_custom(file) end
