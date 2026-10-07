---@meta _
-- Generated API for game version 0.10.0

---@class RegEx : RefCounted
local RegEx = {}

---@param pattern string
---@param show_error boolean?  # Default = true
---@return RegEx
function RegEx.create_from_string(pattern, show_error) end

function RegEx.clear() end

---@param pattern string
---@param show_error boolean?  # Default = true
---@return Error
function RegEx.compile(pattern, show_error) end

---@param subject string
---@param offset integer?  # Default = 0
---@param end_ integer?  # Default = -1
---@return RegExMatch
function RegEx.search(subject, offset, end_) end

---@param subject string
---@param offset integer?  # Default = 0
---@param end_ integer?  # Default = -1
---@return Array<RegExMatch>
function RegEx.search_all(subject, offset, end_) end

---@param subject string
---@param replacement string
---@param all boolean?  # Default = false
---@param offset integer?  # Default = 0
---@param end_ integer?  # Default = -1
---@return string
function RegEx.sub(subject, replacement, all, offset, end_) end

---@return boolean
function RegEx.is_valid() end

---@return string
function RegEx.get_pattern() end

---@return integer
function RegEx.get_group_count() end

---@return PackedStringArray
function RegEx.get_names() end
