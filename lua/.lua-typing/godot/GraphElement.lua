---@meta _
-- Generated API for game version 0.9.1

---@class GraphElement : Container
---@field position_offset Vector2
---@field resizable boolean
---@field draggable boolean
---@field selectable boolean
---@field selected boolean
local GraphElement = {}

---@param resizable boolean
function GraphElement.set_resizable(resizable) end

---@return boolean
function GraphElement.is_resizable() end

---@param draggable boolean
function GraphElement.set_draggable(draggable) end

---@return boolean
function GraphElement.is_draggable() end

---@param selectable boolean
function GraphElement.set_selectable(selectable) end

---@return boolean
function GraphElement.is_selectable() end

---@param selected boolean
function GraphElement.set_selected(selected) end

---@return boolean
function GraphElement.is_selected() end

---@param offset Vector2
function GraphElement.set_position_offset(offset) end

---@return Vector2
function GraphElement.get_position_offset() end
