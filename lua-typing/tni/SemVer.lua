---@meta _
-- Generated API for game version 0.13.1

---@class SemVer : Object
---@field Version Object # Constant value: ():<GDScript#-9223369667559482885>
---@field VersionRange Object # Constant value: ():<GDScript#-9223369667542705668>
---@field VersionComparatorUnary Object # Constant value: ():<GDScript#-9223369667525928451>
---@field VersionComparatorRange Object # Constant value: ():<GDScript#-9223369667509151234>
---@field VersionComparatorBinary Object # Constant value: ():<GDScript#-9223369667492374017>
---@field SemVerParsing Object # Constant value: ():<GDScript#-9223369667475596800>
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
