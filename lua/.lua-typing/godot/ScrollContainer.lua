---@meta _
-- Generated API for game version 0.9.1

---@class ScrollContainer : Container
---@field follow_focus boolean
---@field draw_focus_border boolean
---@field scroll_horizontal integer
---@field scroll_vertical integer
---@field scroll_horizontal_custom_step number
---@field scroll_vertical_custom_step number
---@field horizontal_scroll_mode integer
---@field vertical_scroll_mode integer
---@field scroll_deadzone integer
local ScrollContainer = {}

---@param value integer
function ScrollContainer.set_h_scroll(value) end

---@return integer
function ScrollContainer.get_h_scroll() end

---@param value integer
function ScrollContainer.set_v_scroll(value) end

---@return integer
function ScrollContainer.get_v_scroll() end

---@param value number
function ScrollContainer.set_horizontal_custom_step(value) end

---@return number
function ScrollContainer.get_horizontal_custom_step() end

---@param value number
function ScrollContainer.set_vertical_custom_step(value) end

---@return number
function ScrollContainer.get_vertical_custom_step() end

---@param enable ScrollContainer.ScrollMode
function ScrollContainer.set_horizontal_scroll_mode(enable) end

---@return ScrollContainer.ScrollMode
function ScrollContainer.get_horizontal_scroll_mode() end

---@param enable ScrollContainer.ScrollMode
function ScrollContainer.set_vertical_scroll_mode(enable) end

---@return ScrollContainer.ScrollMode
function ScrollContainer.get_vertical_scroll_mode() end

---@param deadzone integer
function ScrollContainer.set_deadzone(deadzone) end

---@return integer
function ScrollContainer.get_deadzone() end

---@param enabled boolean
function ScrollContainer.set_follow_focus(enabled) end

---@return boolean
function ScrollContainer.is_following_focus() end

---@return HScrollBar
function ScrollContainer.get_h_scroll_bar() end

---@return VScrollBar
function ScrollContainer.get_v_scroll_bar() end

---@param control Control
function ScrollContainer.ensure_control_visible(control) end

---@param draw boolean
function ScrollContainer.set_draw_focus_border(draw) end

---@return boolean
function ScrollContainer.get_draw_focus_border() end
