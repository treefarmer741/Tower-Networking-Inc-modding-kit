---@meta _
-- Generated API for game version 0.9.1

---@class ConfirmationDialog : AcceptDialog
---@field cancel_button_text string
local ConfirmationDialog = {}

---@return Button
function ConfirmationDialog.get_cancel_button() end

---@param text string
function ConfirmationDialog.set_cancel_button_text(text) end

---@return string
function ConfirmationDialog.get_cancel_button_text() end
