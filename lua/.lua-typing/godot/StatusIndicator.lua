---@meta _
-- Generated API for game version 0.9.1

---@class StatusIndicator : Node
---@field tooltip string
---@field icon Texture2D
---@field menu string
---@field visible boolean
local StatusIndicator = {}

---@param tooltip string
function StatusIndicator.set_tooltip(tooltip) end

---@return string
function StatusIndicator.get_tooltip() end

---@param texture Texture2D
function StatusIndicator.set_icon(texture) end

---@return Texture2D
function StatusIndicator.get_icon() end

---@param visible boolean
function StatusIndicator.set_visible(visible) end

---@return boolean
function StatusIndicator.is_visible() end

---@param menu string
function StatusIndicator.set_menu(menu) end

---@return string
function StatusIndicator.get_menu() end

---@return Rect2
function StatusIndicator.get_rect() end
