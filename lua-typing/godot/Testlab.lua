---@meta _
-- Generated API for game version 0.12.1

---@class Testlab : ScreenApp
---@field EVENT_OUTAGE integer # Constant value: 0
---@field EVENT_SURGE integer # Constant value: 1
---@field event_type_selector OptionButton
---@field floor_selector OptionButton
---@field duration_slider HSlider
---@field duration_label Label
---@field schedule_panel HBoxContainer
---@field day_spinner SpinBox
---@field hour_spinner SpinBox
---@field schedule_button Button
---@field worm_floor_selector OptionButton
---@field cyber_attack_selector OptionButton
---@field device_address_input LineEdit
---@field user_type_selector OptionButton
---@field user_socket_selector OptionButton
---@field user_count_spinner SpinBox
---@field user_place_button Button
---@field user_accept_button Button
---@field user_sub_viewport SubViewport
---@field user_options_packed PackedScene
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Testlab = {}

function Testlab.launch() end

function Testlab.minimize() end

function Testlab.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Testlab.toast(msg, duration) end

---@return Object
function Testlab.get_main_pane() end

function Testlab.minimize() end

function Testlab.launch() end
