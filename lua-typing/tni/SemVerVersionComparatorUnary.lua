---@meta _
-- Generated API for game version 0.10.11

---@class SemVerVersionComparatorUnary : RefCounted
---@field op SemVer.VersionComparatorUnaryOp
---@field operand RefCounted
local SemVerVersionComparatorUnary = {}

---@return string
function SemVerVersionComparatorUnary.to_range_string() end

---@return string
function SemVerVersionComparatorUnary.op_string() end

---@param version SemVerVersion
---@return boolean
function SemVerVersionComparatorUnary.check_version(version) end

---@param version SemVerVersion
function SemVerVersionComparatorUnary.check_version(version) end

function SemVerVersionComparatorUnary.to_range_string() end

---@param raw string
---@return RefCounted
function SemVerVersionComparatorUnary.parse(raw) end
