---@meta _
-- Generated API for game version 0.12.1

---@class SemVer : Object
---@field Version Object # Constant value: ():<GDScript#-9223369698026907457>
---@field VersionRange Object # Constant value: ():<GDScript#-9223369698010130240>
---@field VersionComparatorUnary Object # Constant value: ():<GDScript#-9223369697993353023>
---@field VersionComparatorRange Object # Constant value: ():<GDScript#-9223369697976575806>
---@field VersionComparatorBinary Object # Constant value: ():<GDScript#-9223369697959798589>
---@field SemVerParsing Object # Constant value: ():<GDScript#-9223369697943021372>
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
