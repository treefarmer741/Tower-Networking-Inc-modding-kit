---@meta _
-- Generated API for game version 0.13.4

---@class SemVer : Object
---@field Version Object # Constant value: ():<GDScript#-9223369653466621437>
---@field VersionRange Object # Constant value: ():<GDScript#-9223369653449844220>
---@field VersionComparatorUnary Object # Constant value: ():<GDScript#-9223369653433067003>
---@field VersionComparatorRange Object # Constant value: ():<GDScript#-9223369653416289786>
---@field VersionComparatorBinary Object # Constant value: ():<GDScript#-9223369653399512569>
---@field SemVerParsing Object # Constant value: ():<GDScript#-9223369653382735352>
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
