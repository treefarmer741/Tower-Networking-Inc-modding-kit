---@meta _
-- Generated API for game version 0.9.1

---@class ButtonGroup : Resource
---@field allow_unpress boolean
local ButtonGroup = {}

---@return BaseButton
function ButtonGroup.get_pressed_button() end

---@return Array<BaseButton>
function ButtonGroup.get_buttons() end

---@param enabled boolean
function ButtonGroup.set_allow_unpress(enabled) end

---@return boolean
function ButtonGroup.is_allow_unpress() end
