---@meta _
-- Generated API for game version 0.10.11

---@class SemVer : Object
---@field Version Object # Constant value: <GDScript#-9223369180231676583>
---@field VersionRange Object # Constant value: <GDScript#-9223369180214899366>
---@field VersionComparatorUnary Object # Constant value: <GDScript#-9223369180198122149>
---@field VersionComparatorRange Object # Constant value: <GDScript#-9223369180181344932>
---@field VersionComparatorBinary Object # Constant value: <GDScript#-9223369180164567715>
---@field SemVerParsing Object # Constant value: <GDScript#-9223369180147790498>
local SemVer = {}
---@enum SemVer.VersionComparatorUnaryOp
SemVer.VersionComparatorUnaryOp = {
	["EQ"] = 0,
	["LT"] = 1,
	["LE"] = 2,
	["GT"] = 3,
	["GE"] = 4,
	["TILDE"] = 5,
	["CARET"] = 6,
}
---@enum SemVer.VersionComparatorBinaryOp
SemVer.VersionComparatorBinaryOp = {
	["AND"] = 0,
	["OR"] = 1,
}
