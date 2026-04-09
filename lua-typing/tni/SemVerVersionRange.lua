---@meta _
-- Generated API for game version 0.10.11

---@class SemVerVersionRange : RefCounted
local SemVerVersionRange = {}

---@param version SemVerVersion
function SemVerVersionRange.check_version(version) end

function SemVerVersionRange.to_range_string() end

---@param raw string
---@return RefCounted
function SemVerVersionRange.parse(raw) end
