---@meta _
-- Generated API for game version 0.9.1

---@class Barracks : Container
---@field rack_removal_price integer # Constant value: 25
---@field r_install Container
---@field r_remove Container
---@field cfmbutton Button
---@field optcontainer Container
---@field curr_ghost StaticBody2D
---@field curr_rack Container
---@field placed_ghost StaticBody2D
---@field curr_removal_target Rack
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Barracks = {}

function Barracks.launch() end

function Barracks.minimize() end

---@param rcpath string
---@param rackpos Vector2
function Barracks.make_rack(rcpath, rackpos) end

function Barracks.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Barracks.toast(msg, duration) end

---@return Object
function Barracks.get_main_pane() end

function Barracks.minimize() end

function Barracks.launch() end
