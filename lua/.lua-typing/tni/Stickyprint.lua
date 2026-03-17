---@meta _
-- Generated API for game version 0.9.1

---@class Stickyprint : Container
---@field COST_PER_PRINT integer # Constant value: 6
---@field labeledit TextEdit
---@field colorsel OptionButton
---@field printbut Button
---@field fineprint Label
---@field quitbut Button
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
---@param global_pos Object
---@param parent_path Object
function Stickyprint.spawn_sticky(lblc, nc, global_pos, parent_path) end

function Stickyprint.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Stickyprint.toast(msg, duration) end

---@return Object
function Stickyprint.get_main_pane() end

function Stickyprint.minimize() end

function Stickyprint.launch() end
