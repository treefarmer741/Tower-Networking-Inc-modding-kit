---@meta _
-- Generated API for game version 0.9.1

---@class ResourcePreloader : Node
---@field resources Array<any>
local ResourcePreloader = {}

---@param name string
---@param resource Resource
function ResourcePreloader.add_resource(name, resource) end

---@param name string
function ResourcePreloader.remove_resource(name) end

---@param name string
---@param newname string
function ResourcePreloader.rename_resource(name, newname) end

---@param name string
---@return boolean
function ResourcePreloader.has_resource(name) end

---@param name string
---@return Resource
function ResourcePreloader.get_resource(name) end

---@return PackedStringArray
function ResourcePreloader.get_resource_list() end
