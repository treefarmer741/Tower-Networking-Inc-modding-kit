---@meta _
-- Generated API for game version 0.9.1

---@class Illusion : Container
---@field curr_vw WebView
---@field mouse_in_webview boolean
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Illusion = {}

function Illusion.launch() end

function Illusion.minimize() end

function Illusion.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Illusion.toast(msg, duration) end

---@return Object
function Illusion.get_main_pane() end

function Illusion.minimize() end

function Illusion.launch() end
