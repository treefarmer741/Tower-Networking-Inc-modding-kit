---@meta _
-- Generated API for game version 0.9.1

---@class ScreenApp : Container
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local ScreenApp = {}

function ScreenApp.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function ScreenApp.toast(msg, duration) end

---@return Object
function ScreenApp.get_main_pane() end

function ScreenApp.minimize() end

function ScreenApp.launch() end
