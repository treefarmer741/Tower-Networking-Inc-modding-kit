---@meta _
-- Generated API for game version 0.9.1

---@class Resource : RefCounted
---@field resource_local_to_scene boolean
---@field resource_path string
---@field resource_name string
---@field resource_scene_unique_id string
local Resource = {}

---@param path string
function Resource.set_path(path) end

---@param path string
function Resource.take_over_path(path) end

---@return string
function Resource.get_path() end

---@param path string
function Resource.set_path_cache(path) end

---@param name string
function Resource.set_name(name) end

---@return string
function Resource.get_name() end

---@return RID
function Resource.get_rid() end

---@param enable boolean
function Resource.set_local_to_scene(enable) end

---@return boolean
function Resource.is_local_to_scene() end

---@return Node
function Resource.get_local_scene() end

function Resource.setup_local_to_scene() end

function Resource.reset_state() end

---@param path string
---@param id string
function Resource.set_id_for_path(path, id) end

---@param path string
---@return string
function Resource.get_id_for_path(path) end

---@return boolean
function Resource.is_built_in() end

---@return string
function Resource.generate_scene_unique_id() end

---@param id string
function Resource.set_scene_unique_id(id) end

---@return string
function Resource.get_scene_unique_id() end

function Resource.emit_changed() end

---@param deep boolean?  # Default = false
---@return Resource
function Resource.duplicate(deep) end

---@param deep_subresources_mode Resource.DeepDuplicateMode?  # Default = 1
---@return Resource
function Resource.duplicate_deep(deep_subresources_mode) end
