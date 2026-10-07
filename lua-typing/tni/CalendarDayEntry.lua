---@meta _
-- Generated API for game version 0.13.1

---@class CalendarDayEntry : VBoxContainer
---@field mark Panel
---@field title_label Label
---@field when_label Label
local CalendarDayEntry = {}

---@param title string
---@param when string
---@param color Color
function CalendarDayEntry.show_event(title, when, color) end

---@param label_name string
---@param color Color
function CalendarDayEntry.show_label(label_name, color) end
