---@meta _
-- Generated API for game version 0.10.11

---@class ModApiV1 : Node
local ModApiV1 = {}

function ModApiV1.sanity() end

---@return SemVerVersion
function ModApiV1.get_game_version() end

---@return boolean
function ModApiV1.has_mods_reloaded() end

---@return GameWorld?
function ModApiV1.get_game_world() end

---@return MyCustomCamera?
function ModApiV1.get_player_camera() end

---@return BaseUI
function ModApiV1.get_base_ui() end

---@return Array<Node>
function ModApiV1.get_devices() end

---@return Array<Node>
function ModApiV1.get_users() end

---@return Array<Node>
function ModApiV1.get_locations() end

---@return Array<Node>
function ModApiV1.get_merchants() end
