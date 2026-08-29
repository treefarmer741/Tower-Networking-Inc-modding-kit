---@meta _
-- Generated API for game version 0.12.1

---@class Stickyprint : ScreenApp
---@field COST_PER_PRINT integer # Constant value: 6
---@field STICKY_SATURATION number # Constant value: 0.26
---@field STICKY_VALUE number # Constant value: 0.94
---@field labeledit TextEdit
---@field hue_slider HSlider
---@field hue_preview ColorRect
---@field fontchooser OptionButton
---@field printbut Button
---@field fineprint Label
---@field quitbut Button
---@field cable_tag_panel PanelContainer
---@field ct_hue_slider HSlider
---@field ct_hue_preview ColorRect
---@field ct_text_edit TextEdit
---@field sticky_ghost Node2D
---@field sticky_scn PackedScene
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Stickyprint = {}

function Stickyprint.launch() end

function Stickyprint.minimize() end

---@param lblc Object
---@param nc Object
---@param fi Object
---@param global_pos Object
---@param parent_path Object
function Stickyprint.spawn_sticky(lblc, nc, fi, global_pos, parent_path) end

function Stickyprint.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Stickyprint.toast(msg, duration) end

---@return Object
function Stickyprint.get_main_pane() end

function Stickyprint.minimize() end

function Stickyprint.launch() end
