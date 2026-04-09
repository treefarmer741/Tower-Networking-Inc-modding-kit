---@meta _
-- Generated API for game version 0.10.11

---@class ModManifest : RefCounted
---@field raw_data table<any,any>
---@field icon Image
---@field mod_path string
---@field id string
---@field name string
---@field authors PackedStringArray
---@field version SemVerVersion
---@field description PackedStringArray
---@field links table<string,string>
---@field dependencies table<string,RefCounted>
---@field dependencies_optional table<string,RefCounted>
---@field incompatibilities table<string,RefCounted>
---@field load_before PackedStringArray
---@field load_after PackedStringArray
local ModManifest = {}

---@param mod_id string
---@param jsonc string
---@return ModManifest
function ModManifest.from_jsonc_string(mod_id, jsonc) end

---@param other ModManifest
---@return boolean
function ModManifest.is_functionally_same(other) end

function ModManifest.try_load_icon() end

---@return ModManifest
function ModManifest.as_minified_manifest() end

---@param other ModManifest
---@return boolean
function ModManifest.is_dependency_satisfied(other) end

---@param other ModManifest
---@return boolean
function ModManifest.is_incompatible(other) end

---@param addition_id string
---@return integer
function ModManifest.get_expected_order(addition_id) end

---@param preset ModPreset
---@param check_dependencies boolean?  # Default = true
---@return PackedStringArray
function ModManifest.get_issues_with_preset(preset, check_dependencies) end
