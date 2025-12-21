---@meta _
-- Generated API for game version 0.9.1

---@class RegExMatch : RefCounted
---@field subject string
---@field names table<any,any>
---@field strings Array<any>
local RegExMatch = {}

---@return string
function RegExMatch.get_subject() end

---@return integer
function RegExMatch.get_group_count() end

---@return table<any,any>
function RegExMatch.get_names() end

---@return PackedStringArray
function RegExMatch.get_strings() end

---@param name Object?  # Default = 0
---@return string
function RegExMatch.get_string(name) end

---@param name Object?  # Default = 0
---@return integer
function RegExMatch.get_start(name) end

---@param name Object?  # Default = 0
---@return integer
function RegExMatch.get_end(name) end
