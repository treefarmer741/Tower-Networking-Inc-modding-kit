---@meta _
-- Generated API for game version 0.10.11

---@class SemVerVersion : RefCounted
---@field major integer
---@field minor integer
---@field patch integer
---@field prerelease string
---@field buildmetadata string
local SemVerVersion = {}

---@return string
function SemVerVersion.to_version_string() end

---@return boolean
function SemVerVersion.is_definitive_version() end

---@param other RefCounted
---@return boolean
function SemVerVersion.matches(other) end

---@param other RefCounted
---@return Array<integer>
function SemVerVersion.compare_parts(other) end

---@param other RefCounted
---@return integer
function SemVerVersion.compare(other) end

---@param raw string
---@param allow_wildcard boolean?  # Default = true
---@return RefCounted
function SemVerVersion.parse(raw, allow_wildcard) end
