---@meta _
-- Generated API for game version 0.13.1

---@class Breaktime : ScreenApp
---@field CDFTIME number # Constant value: 3.0
---@field coffee_button_1 TextureButton
---@field coffee_button_2 TextureButton
---@field coffee_button_3 TextureButton
---@field tea_button_1 TextureButton
---@field tea_button_2 TextureButton
---@field tea_button_3 TextureButton
---@field water_button TextureButton
---@field highlight_v number
---@field dim_v number
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
