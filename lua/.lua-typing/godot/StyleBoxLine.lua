---@meta _
-- Generated API for game version 0.9.1

---@class StyleBoxLine : StyleBox
---@field color Color
---@field grow_begin number
---@field grow_end number
---@field thickness integer
---@field vertical boolean
local StyleBoxLine = {}

---@param color Color
function StyleBoxLine.set_color(color) end

---@return Color
function StyleBoxLine.get_color() end

---@param thickness integer
function StyleBoxLine.set_thickness(thickness) end

---@return integer
function StyleBoxLine.get_thickness() end

---@param offset number
function StyleBoxLine.set_grow_begin(offset) end

---@return number
function StyleBoxLine.get_grow_begin() end

---@param offset number
function StyleBoxLine.set_grow_end(offset) end

---@return number
function StyleBoxLine.get_grow_end() end

---@param vertical boolean
function StyleBoxLine.set_vertical(vertical) end

---@return boolean
function StyleBoxLine.is_vertical() end
