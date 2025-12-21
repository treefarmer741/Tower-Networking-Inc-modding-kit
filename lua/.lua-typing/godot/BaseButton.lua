---@meta _
-- Generated API for game version 0.9.1

---@class BaseButton : Control
---@field disabled boolean
---@field toggle_mode boolean
---@field button_pressed boolean
---@field action_mode integer
---@field button_mask integer
---@field keep_pressed_outside boolean
---@field button_group ButtonGroup
---@field shortcut Shortcut
---@field shortcut_feedback boolean
---@field shortcut_in_tooltip boolean
local BaseButton = {}

---@param pressed boolean
function BaseButton.set_pressed(pressed) end

---@return boolean
function BaseButton.is_pressed() end

---@param pressed boolean
function BaseButton.set_pressed_no_signal(pressed) end

---@return boolean
function BaseButton.is_hovered() end

---@param enabled boolean
function BaseButton.set_toggle_mode(enabled) end

---@return boolean
function BaseButton.is_toggle_mode() end

---@param enabled boolean
function BaseButton.set_shortcut_in_tooltip(enabled) end

---@return boolean
function BaseButton.is_shortcut_in_tooltip_enabled() end

---@param disabled boolean
function BaseButton.set_disabled(disabled) end

---@return boolean
function BaseButton.is_disabled() end

---@param mode BaseButton.ActionMode
function BaseButton.set_action_mode(mode) end

---@return BaseButton.ActionMode
function BaseButton.get_action_mode() end

---@param mask MouseButtonMask
function BaseButton.set_button_mask(mask) end

---@return MouseButtonMask
function BaseButton.get_button_mask() end

---@return BaseButton.DrawMode
function BaseButton.get_draw_mode() end

---@param enabled boolean
function BaseButton.set_keep_pressed_outside(enabled) end

---@return boolean
function BaseButton.is_keep_pressed_outside() end

---@param enabled boolean
function BaseButton.set_shortcut_feedback(enabled) end

---@return boolean
function BaseButton.is_shortcut_feedback() end

---@param shortcut Shortcut
function BaseButton.set_shortcut(shortcut) end

---@return Shortcut
function BaseButton.get_shortcut() end

---@param button_group ButtonGroup
function BaseButton.set_button_group(button_group) end

---@return ButtonGroup
function BaseButton.get_button_group() end
