---@meta _
-- Generated API for game version 0.9.1

---@class Rocketstore : Container
---@field entry_containers Container
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Rocketstore = {}

function Rocketstore.launch() end

function Rocketstore.minimize() end

function Rocketstore.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Rocketstore.toast(msg, duration) end

---@return Object
function Rocketstore.get_main_pane() end

function Rocketstore.minimize() end

function Rocketstore.launch() end
