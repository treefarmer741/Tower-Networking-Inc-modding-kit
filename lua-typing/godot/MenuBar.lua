---@meta _
-- Generated API for game version 0.10.0

---@class MenuBar : Control
---@field flat boolean
---@field start_index integer
---@field switch_on_hover boolean
---@field prefer_global_menu boolean
---@field text_direction integer
---@field language string
local MenuBar = {}

---@param enable boolean
function MenuBar.set_switch_on_hover(enable) end

---@return boolean
function MenuBar.is_switch_on_hover() end

---@param disabled boolean
function MenuBar.set_disable_shortcuts(disabled) end

---@param enabled boolean
function MenuBar.set_prefer_global_menu(enabled) end

---@return boolean
function MenuBar.is_prefer_global_menu() end

---@return boolean
function MenuBar.is_native_menu() end

---@return integer
function MenuBar.get_menu_count() end

---@param direction Control.TextDirection
function MenuBar.set_text_direction(direction) end

---@return Control.TextDirection
function MenuBar.get_text_direction() end

---@param language string
function MenuBar.set_language(language) end

---@return string
function MenuBar.get_language() end

---@param enabled boolean
function MenuBar.set_flat(enabled) end

---@return boolean
function MenuBar.is_flat() end

---@param enabled integer
function MenuBar.set_start_index(enabled) end

---@return integer
function MenuBar.get_start_index() end

---@param menu integer
---@param title string
function MenuBar.set_menu_title(menu, title) end

---@param menu integer
---@return string
function MenuBar.get_menu_title(menu) end

---@param menu integer
---@param tooltip string
function MenuBar.set_menu_tooltip(menu, tooltip) end

---@param menu integer
---@return string
function MenuBar.get_menu_tooltip(menu) end

---@param menu integer
---@param disabled boolean
function MenuBar.set_menu_disabled(menu, disabled) end

---@param menu integer
---@return boolean
function MenuBar.is_menu_disabled(menu) end

---@param menu integer
---@param hidden boolean
function MenuBar.set_menu_hidden(menu, hidden) end

---@param menu integer
---@return boolean
function MenuBar.is_menu_hidden(menu) end

---@param menu integer
---@return PopupMenu
function MenuBar.get_menu_popup(menu) end
