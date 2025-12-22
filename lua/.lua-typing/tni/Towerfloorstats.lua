---@meta _
-- Generated API for game version 0.9.1

---@class Towerfloorstats : Container
---@field refresh_timer Timer
---@field issues1_text RichTextLabel
---@field issues1_count Label
---@field alert_icon Sprite2D
---@field floor_label Label
---@field main_user_label Label
---@field total_floor_num Object
---@field user_issues table<any,any>
---@field selected_floor_num Object
---@field floor_options Object
---@field users Array<User>
---@field main_pane MainDashboard
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Towerfloorstats = {}

function Towerfloorstats.launch() end

function Towerfloorstats.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Towerfloorstats.toast(msg, duration) end

---@return Object
function Towerfloorstats.get_main_pane() end

function Towerfloorstats.minimize() end

function Towerfloorstats.launch() end
