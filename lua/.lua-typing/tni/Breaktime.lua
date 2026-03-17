---@meta _
-- Generated API for game version 0.9.1

---@class Breaktime : Container
---@field CDFTIME number # Constant value: 3.0
---@field speedup_button Button
---@field slowdown_button Button
---@field reset_button Button
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Breaktime = {}

function Breaktime.launch() end

function Breaktime.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Breaktime.toast(msg, duration) end

---@return Object
function Breaktime.get_main_pane() end

function Breaktime.minimize() end

function Breaktime.launch() end
