---@meta _
-- Generated API for game version 0.13.4

---@class FreeBabelTheftController : RandomEvent
---@field min_warn_seconds integer
---@field max_warn_seconds integer
---@field range_size integer
---@field notice_day integer
---@field strike_ts integer
---@field range_first integer
---@field range_last integer
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local FreeBabelTheftController = {}

---@param floor_n integer
function FreeBabelTheftController.warn_about_floor(floor_n) end

---@param floor_n integer
---@return boolean
function FreeBabelTheftController.steal_from_floor(floor_n) end

---@return Array<integer>
function FreeBabelTheftController.get_player_floors() end

function FreeBabelTheftController.start() end

function FreeBabelTheftController.pause() end
