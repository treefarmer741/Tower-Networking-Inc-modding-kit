---@meta _
-- Generated API for game version 0.12.1

---@class SemVer : Object
---@field Version Object # Constant value: ():<GDScript#-9223369798337881943>
---@field VersionRange Object # Constant value: ():<GDScript#-9223369798321104726>
---@field VersionComparatorUnary Object # Constant value: ():<GDScript#-9223369798304327509>
---@field VersionComparatorRange Object # Constant value: ():<GDScript#-9223369798287550292>
---@field VersionComparatorBinary Object # Constant value: ():<GDScript#-9223369798270773075>
---@field SemVerParsing Object # Constant value: ():<GDScript#-9223369798253995858>
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
