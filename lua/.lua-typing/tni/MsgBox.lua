---@meta _
-- Generated API for game version 0.9.1

---@class MsgBox : Container
---@field msg_list_scene PackedScene
---@field msg_view_scene PackedScene
---@field viewing_msg boolean
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local MsgBox = {}

function MsgBox.launch() end

function MsgBox.minimize() end

function MsgBox.hide_ctlbutton() end

function MsgBox.show_ctlbutton() end

function MsgBox.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function MsgBox.toast(msg, duration) end

---@return Object
function MsgBox.get_main_pane() end

function MsgBox.minimize() end

function MsgBox.launch() end
