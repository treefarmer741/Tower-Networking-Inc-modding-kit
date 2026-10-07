---@meta _
-- Generated API for game version 0.13.1

---@class Tenabolt : ScreenApp
---@field room_preview ColorRect
---@field dark_mode_switch CheckButton
---@field darkness_row HBoxContainer
---@field darkness_slider HSlider
---@field darkness_value Label
---@field tint_slider HSlider
---@field tint_value Label
---@field strength_row HBoxContainer
---@field strength_slider HSlider
---@field strength_value Label
---@field lamps_default_button Button
---@field lamps_off_button Button
---@field lamps_on_button Button
---@field floor_rows VBoxContainer
---@field floor_row_scn PackedScene
---@field outage_color Color
---@field surge_color Color
---@field outage_mod_scn PackedScene
---@field surge_mod_scn PackedScene
---@field tabs TabContainer
---@field floor_power_tab Control
---@field no_events_label Label
---@field preset_rows VBoxContainer
---@field preset_row_scn PackedScene
---@field preset_panel PanelContainer
---@field preset_scroll ScrollContainer
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Tenabolt = {}

function Tenabolt.launch() end

function Tenabolt.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Tenabolt.toast(msg, duration) end

---@return Object
function Tenabolt.get_main_pane() end

function Tenabolt.minimize() end

function Tenabolt.launch() end
