---@meta _
-- Generated API for game version 0.10.0

---@class ResourceUID : Object
local ResourceUID = {}

---@param id integer
---@return string
function ResourceUID.id_to_text(id) end

---@param text_id string
---@return integer
function ResourceUID.text_to_id(text_id) end

---@return integer
function ResourceUID.create_id() end

---@param path string
---@return integer
function ResourceUID.create_id_for_path(path) end

---@param id integer
---@return boolean
function ResourceUID.has_id(id) end

---@param id integer
---@param path string
function ResourceUID.add_id(id, path) end

---@param id integer
---@param path string
function ResourceUID.set_id(id, path) end

---@param id integer
---@return string
function ResourceUID.get_id_path(id) end

---@param id integer
function ResourceUID.remove_id(id) end

---@param uid string
---@return string
function ResourceUID.uid_to_path(uid) end

---@param path string
---@return string
function ResourceUID.path_to_uid(path) end

---@param path_or_uid string
---@return string
function ResourceUID.ensure_path(path_or_uid) end
