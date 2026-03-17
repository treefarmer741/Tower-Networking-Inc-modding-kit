---@meta _
-- Generated API for game version 0.10.0

---@class MobileOSLayer : CanvasLayer
---@field TILT_RAD number # Constant value: 0.17453292519943
---@field second_monitor_enabled boolean
---@field screen Screen
---@field second_screen Screen
---@field activator_control Container
---@field secmon_control Container
---@field screen_main Container
---@field secondmon_main Container
---@field screen_toast Container
---@field at_home_screen boolean
---@field second_monitor_showing_at_home_screen boolean
---@field at_netshell_screen boolean
---@field at_kb_input_screen boolean
---@field safe_to_use_keyboard boolean
---@field is_on_right boolean
---@field showing boolean
---@field second_monitor_showing boolean
---@field twn Tween
---@field twn2 Tween
---@field twnkb Tween
---@field twnswing Tween
---@field mouse_in_firstmon boolean
---@field mouse_in_secondmon boolean
---@field mouse_is_inside boolean
local MobileOSLayer = {}

---@param event InputEvent
function MobileOSLayer.internal_captured_event_propagate(event) end

function MobileOSLayer.left_click() end

function MobileOSLayer.right_click() end

function MobileOSLayer.middle_click() end

function MobileOSLayer.play_coffee_animation() end

function MobileOSLayer.play_tea_animation() end

function MobileOSLayer.play_water_animation() end
