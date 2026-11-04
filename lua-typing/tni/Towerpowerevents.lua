---@meta _
-- Generated API for game version 0.13.4

---@class Towerpowerevents : DashboardApp
---@field scheduled_value Label
---@field unscheduled_value Label
---@field surges_value Label
---@field surged_value Label
---@field list_panel PanelContainer
---@field floor_rows VBoxContainer
---@field no_events_label Label
---@field floor_row_scn PackedScene
---@field outage_mod_scn PackedScene
---@field surge_mod_scn PackedScene
---@field main_pane MainDashboard
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Towerpowerevents = {}

function Towerpowerevents.launch() end

function Towerpowerevents.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Towerpowerevents.toast(msg, duration) end

---@return Object
function Towerpowerevents.get_main_pane() end

function Towerpowerevents.minimize() end

function Towerpowerevents.launch() end
