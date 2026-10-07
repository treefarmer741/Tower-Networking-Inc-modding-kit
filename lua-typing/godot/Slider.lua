---@meta _
-- Generated API for game version 0.10.0

---@class Slider : Range
---@field editable boolean
---@field scrollable boolean
---@field tick_count integer
---@field ticks_on_borders boolean
---@field ticks_position integer
local Slider = {}

---@param count integer
function Slider.set_ticks(count) end

---@return integer
function Slider.get_ticks() end

---@return boolean
function Slider.get_ticks_on_borders() end

---@param ticks_on_border boolean
function Slider.set_ticks_on_borders(ticks_on_border) end

---@return Slider.TickPosition
function Slider.get_ticks_position() end

---@param ticks_on_border Slider.TickPosition
function Slider.set_ticks_position(ticks_on_border) end

---@param editable boolean
function Slider.set_editable(editable) end

---@return boolean
function Slider.is_editable() end

---@param scrollable boolean
function Slider.set_scrollable(scrollable) end

---@return boolean
function Slider.is_scrollable() end
