---@meta _
-- Generated API for game version 0.10.0

---@class SpinBox : Range
---@field alignment integer
---@field editable boolean
---@field update_on_text_changed boolean
---@field prefix string
---@field suffix string
---@field custom_arrow_step number
---@field select_all_on_focus boolean
local SpinBox = {}

---@param alignment HorizontalAlignment
function SpinBox.set_horizontal_alignment(alignment) end

---@return HorizontalAlignment
function SpinBox.get_horizontal_alignment() end

---@param suffix string
function SpinBox.set_suffix(suffix) end

---@return string
function SpinBox.get_suffix() end

---@param prefix string
function SpinBox.set_prefix(prefix) end

---@return string
function SpinBox.get_prefix() end

---@param enabled boolean
function SpinBox.set_editable(enabled) end

---@param arrow_step number
function SpinBox.set_custom_arrow_step(arrow_step) end

---@return number
function SpinBox.get_custom_arrow_step() end

---@return boolean
function SpinBox.is_editable() end

---@param enabled boolean
function SpinBox.set_update_on_text_changed(enabled) end

---@return boolean
function SpinBox.get_update_on_text_changed() end

---@param enabled boolean
function SpinBox.set_select_all_on_focus(enabled) end

---@return boolean
function SpinBox.is_select_all_on_focus() end

function SpinBox.apply() end

---@return LineEdit
function SpinBox.get_line_edit() end
