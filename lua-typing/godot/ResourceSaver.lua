---@meta _
-- Generated API for game version 0.10.0

---@class ResourceSaver : Object
local ResourceSaver = {}

---@param resource Resource
---@param path string?  # Default = 
---@param flags ResourceSaver.SaverFlags?  # Default = 0
---@return Error
function ResourceSaver.save(resource, path, flags) end

---@param resource string
---@param uid integer
---@return Error
function ResourceSaver.set_uid(resource, uid) end

---@param type Resource
---@return PackedStringArray
function ResourceSaver.get_recognized_extensions(type) end

---@param format_saver ResourceFormatSaver
---@param at_front boolean?  # Default = false
function ResourceSaver.add_resource_format_saver(format_saver, at_front) end

---@param format_saver ResourceFormatSaver
function ResourceSaver.remove_resource_format_saver(format_saver) end

---@param path string
---@param generate boolean?  # Default = false
---@return integer
function ResourceSaver.get_resource_id_for_path(path, generate) end
