---@meta _
-- Generated API for game version 0.9.1

---@class AcceptDialog : Window
---@field ok_button_text string
---@field dialog_text string
---@field dialog_hide_on_ok boolean
---@field dialog_close_on_escape boolean
---@field dialog_autowrap boolean
local AcceptDialog = {}

---@return Button
function AcceptDialog.get_ok_button() end

---@return Label
function AcceptDialog.get_label() end

---@param enabled boolean
function AcceptDialog.set_hide_on_ok(enabled) end

---@return boolean
function AcceptDialog.get_hide_on_ok() end

---@param enabled boolean
function AcceptDialog.set_close_on_escape(enabled) end

---@return boolean
function AcceptDialog.get_close_on_escape() end

---@param text string
---@param right boolean?  # Default = false
---@param action string?  # Default = 
---@return Button
function AcceptDialog.add_button(text, right, action) end

---@param name string
---@return Button
function AcceptDialog.add_cancel_button(name) end

---@param button Button
function AcceptDialog.remove_button(button) end

---@param line_edit LineEdit
function AcceptDialog.register_text_enter(line_edit) end

---@param text string
function AcceptDialog.set_text(text) end

---@return string
function AcceptDialog.get_text() end

---@param autowrap boolean
function AcceptDialog.set_autowrap(autowrap) end

---@return boolean
function AcceptDialog.has_autowrap() end

---@param text string
function AcceptDialog.set_ok_button_text(text) end

---@return string
function AcceptDialog.get_ok_button_text() end
