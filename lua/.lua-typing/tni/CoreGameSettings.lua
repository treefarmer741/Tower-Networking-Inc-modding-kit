---@meta _
-- Generated API for game version 0.9.1

---@class CoreGameSettings : Object
---@field mouse_pan_speed number
---@field keyboard_pan_speed number
---@field drag_pan_speed number
---@field rgb_shift_factor number
---@field perf_phy_sim_mode integer
---@field show_announcements boolean
---@field shift_panning_enabled boolean
---@field dmarkv2sel boolean
---@field time_affects_phyanim boolean
---@field crt_filter_effect boolean
---@field flickering_lights_effect boolean
---@field show_username boolean
---@field show_help_guides boolean
---@field player_set_name string
---@field last_sel_diffindex integer
---@field has_shown_difficulty_sel boolean
---@field cmd_alias table<any,any>
---@field floor_unlocks table<any,any>
---@field user_stampbook table<any,any>
---@field fullscreen_mode boolean
---@field vsync integer
---@field last_joined_ip string
---@field locale string
---@field master_volume_linear number
---@field music_volume_linear number
---@field sfx_volume_linear number
---@field max_fps integer
local CoreGameSettings = {}

function CoreGameSettings.apply() end

function CoreGameSettings.engine_perfpar_sync() end

---@param inp number
---@return Object
function CoreGameSettings.map_float_to_volume_db(inp) end

function CoreGameSettings.apply() end
