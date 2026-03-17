---@meta _
-- Generated API for game version 0.9.1

---@class Towersatietybar : Container
---@field refresh_timer Timer
---@field barline_chart Node2D
---@field floors_per_group integer
---@field users Array<User>
---@field floors Array<integer>
---@field bar_dataset Object
---@field current_floor_group Object
---@field all_user_types Object
---@field all_user_dict Object
---@field floor_groups Object
---@field all_user_values Object
---@field total_floors Object
---@field main_pane MainDashboard
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Towersatietybar = {}

function Towersatietybar.launch() end

function Towersatietybar.setup_floor_groups() end

function Towersatietybar.update_all_user_profile() end

function Towersatietybar.update_floor_group_display() end

function Towersatietybar.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Towersatietybar.toast(msg, duration) end

---@return Object
function Towersatietybar.get_main_pane() end

function Towersatietybar.minimize() end

function Towersatietybar.launch() end
