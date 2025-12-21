---@meta _
-- Generated API for game version 0.9.1

---@class TerminalOutputDisplay : RichTextLabel
local TerminalOutputDisplay = {}

function TerminalOutputDisplay.print_horizontal_sep() end

---@param s Object
function TerminalOutputDisplay.print_success(s) end

---@param s Object
function TerminalOutputDisplay.print_error(s) end

---@param s Object
function TerminalOutputDisplay.print_highlight(s) end

---@param s Object?  # Default = 
function TerminalOutputDisplay.print_line(s) end

function TerminalOutputDisplay.rotate_output() end

function TerminalOutputDisplay.clear_display() end
