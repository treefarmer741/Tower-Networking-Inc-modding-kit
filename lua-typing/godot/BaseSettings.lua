---@meta _
-- Generated API for game version 0.12.1

---@class BaseSettings : Object
---@field fullscreen_mode boolean
---@field vsync integer
---@field last_joined_ip string
---@field locale string
---@field master_volume_linear number
---@field music_volume_linear number
---@field sfx_volume_linear number
---@field max_fps integer
local BaseSettings = {}

function BaseSettings.apply() end

---@param inp number
---@return Object
function BaseSettings.map_float_to_volume_db(inp) end

---@param abid_s string
---@param linear_value number
function BaseSettings.adjust_bus_volume(abid_s, linear_value) end
