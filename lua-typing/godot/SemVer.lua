---@meta _
-- Generated API for game version 0.12.1

---@class SemVer : Object
---@field Version Object # Constant value: ():<GDScript#-9223369697724917574>
---@field VersionRange Object # Constant value: ():<GDScript#-9223369697708140357>
---@field VersionComparatorUnary Object # Constant value: ():<GDScript#-9223369697691363140>
---@field VersionComparatorRange Object # Constant value: ():<GDScript#-9223369697674585923>
---@field VersionComparatorBinary Object # Constant value: ():<GDScript#-9223369697657808706>
---@field SemVerParsing Object # Constant value: ():<GDScript#-9223369697641031489>
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
