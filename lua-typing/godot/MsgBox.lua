---@meta _
-- Generated API for game version 0.12.1

---@class MsgBox : ScreenApp
---@field msg_list_scene PackedScene
---@field msg_view_scene PackedScene
---@field keyword_edit LineEdit
---@field select_all_cb CheckBox
---@field delete_button TextureButton
---@field label_name_edit LineEdit
---@field label_hue_slider HSlider
---@field label_hue_preview ColorRect
---@field labels_bar HFlowContainer
---@field hidden_msg_ids Array<any>
---@field labels table<any,any>
---@field msg_label_map table<any,any>
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
