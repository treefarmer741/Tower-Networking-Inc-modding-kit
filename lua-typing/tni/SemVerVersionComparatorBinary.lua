---@meta _
-- Generated API for game version 0.10.11

---@class SemVerVersionComparatorBinary : RefCounted
---@field op SemVer.VersionComparatorBinaryOp
---@field left RefCounted
---@field right RefCounted
local SemVerVersionComparatorBinary = {}

---@return string
function SemVerVersionComparatorBinary.to_range_string() end

---@param version SemVerVersion
---@return boolean
function SemVerVersionComparatorBinary.check_version(version) end

---@param version SemVerVersion
function SemVerVersionComparatorBinary.check_version(version) end

function SemVerVersionComparatorBinary.to_range_string() end

---@param raw string
---@return RefCounted
function SemVerVersionComparatorBinary.parse(raw) end
