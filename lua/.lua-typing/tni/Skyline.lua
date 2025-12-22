---@meta _
-- Generated API for game version 0.9.1

---@class Skyline : Container
---@field summoned_cabin_dst integer
---@field current_call_dst integer
---@field current_floor Location
---@field current_call_fee integer
---@field current_call_time number
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Skyline = {}

function Skyline.launch() end

function Skyline.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Skyline.toast(msg, duration) end

---@return Object
function Skyline.get_main_pane() end

function Skyline.minimize() end

function Skyline.launch() end
