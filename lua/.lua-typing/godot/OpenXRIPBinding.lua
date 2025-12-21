---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRIPBinding : Resource
---@field action OpenXRAction
---@field binding_path string
---@field binding_modifiers OpenXRActionBindingModifier
---@field paths PackedStringArray
local OpenXRIPBinding = {}

---@param action OpenXRAction
function OpenXRIPBinding.set_action(action) end

---@return OpenXRAction
function OpenXRIPBinding.get_action() end

---@param binding_path string
function OpenXRIPBinding.set_binding_path(binding_path) end

---@return string
function OpenXRIPBinding.get_binding_path() end

---@return integer
function OpenXRIPBinding.get_binding_modifier_count() end

---@param index integer
---@return OpenXRActionBindingModifier
function OpenXRIPBinding.get_binding_modifier(index) end

---@param binding_modifiers Array<any>
function OpenXRIPBinding.set_binding_modifiers(binding_modifiers) end

---@return Array<any>
function OpenXRIPBinding.get_binding_modifiers() end

---@param paths PackedStringArray
function OpenXRIPBinding.set_paths(paths) end

---@return PackedStringArray
function OpenXRIPBinding.get_paths() end

---@return integer
function OpenXRIPBinding.get_path_count() end

---@param path string
---@return boolean
function OpenXRIPBinding.has_path(path) end

---@param path string
function OpenXRIPBinding.add_path(path) end

---@param path string
function OpenXRIPBinding.remove_path(path) end
