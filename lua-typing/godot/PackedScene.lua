---@meta _
-- Generated API for game version 0.10.0

---@class PackedScene : Resource
local PackedScene = {}

---@param path Node
---@return Error
function PackedScene.pack(path) end

---@param edit_state PackedScene.GenEditState?  # Default = 0
---@return Node
function PackedScene.instantiate(edit_state) end

---@return boolean
function PackedScene.can_instantiate() end

---@return SceneState
function PackedScene.get_state() end
