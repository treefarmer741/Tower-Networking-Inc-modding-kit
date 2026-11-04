---@meta _
-- Generated API for game version 0.10.0

---@class MenuButton : Button
---@field switch_on_hover boolean
---@field item_count Items,popup/item_
local MenuButton = {}

---@return PopupMenu
function MenuButton.get_popup() end

function MenuButton.show_popup() end

---@param enable boolean
function MenuButton.set_switch_on_hover(enable) end

---@return boolean
function MenuButton.is_switch_on_hover() end

---@param disabled boolean
function MenuButton.set_disable_shortcuts(disabled) end

---@param count integer
function MenuButton.set_item_count(count) end

---@return integer
function MenuButton.get_item_count() end
