---@meta _
-- Generated API for game version 0.10.0

---@class ModApiV1 : Node
local ModApiV1 = {}

function ModApiV1.sanity() end

---@return GameWorld?
function ModApiV1.get_game_world() end

---@return MyCustomCamera?
function ModApiV1.get_player_camera() end

---@return BaseUI
function ModApiV1.get_base_ui() end

---@return Array<any>
function ModApiV1.get_devices() end

---@return Array<any>
function ModApiV1.get_users() end
