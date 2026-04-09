---@meta _
-- Generated API for game version 0.10.11

---@class SemVerVersionComparatorRange : RefCounted
---@field left RefCounted
---@field right RefCounted
local SemVerVersionComparatorRange = {}

---@return string
function SemVerVersionComparatorRange.to_range_string() end

---@param version SemVerVersion
---@return boolean
function SemVerVersionComparatorRange.check_version(version) end

---@param version SemVerVersion
function SemVerVersionComparatorRange.check_version(version) end

function SemVerVersionComparatorRange.to_range_string() end

---@param raw string
---@return RefCounted
function SemVerVersionComparatorRange.parse(raw) end
