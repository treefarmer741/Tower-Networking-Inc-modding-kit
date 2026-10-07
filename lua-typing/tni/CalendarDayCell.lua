---@meta _
-- Generated API for game version 0.13.1

---@class CalendarDayCell : PanelContainer
---@field mark_scn string # Constant value: <PackedScene>
---@field normal_style StyleBox
---@field selected_style StyleBox
---@field today_color Color
---@field future_color Color
---@field day_label Label
---@field dots Container
---@field day integer
local CalendarDayCell = {}

---@param d integer
---@param is_today boolean
---@param is_selected boolean
---@param is_future boolean
function CalendarDayCell.show_day(d, is_today, is_selected, is_future) end

---@param colors Array<any>
function CalendarDayCell.set_marks(colors) end

---@param dimmed boolean
function CalendarDayCell.set_dimmed(dimmed) end
