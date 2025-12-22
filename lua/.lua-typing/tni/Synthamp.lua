---@meta _
-- Generated API for game version 0.9.1

---@class Synthamp : Container
---@field avpanel Container
---@field playnmlb Label
---@field shuffle_btn Button
---@field vol_slider HSlider
---@field playlist ItemList
---@field is_shuffling boolean
---@field bgmplkup table<any,any>
---@field bgmrvlkup table<any,any>
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Synthamp = {}

function Synthamp.launch() end

function Synthamp.minimize() end

---@param inp number
---@return Object
function Synthamp.map_float_to_volume_db(inp) end

function Synthamp.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Synthamp.toast(msg, duration) end

---@return Object
function Synthamp.get_main_pane() end

function Synthamp.minimize() end

function Synthamp.launch() end
