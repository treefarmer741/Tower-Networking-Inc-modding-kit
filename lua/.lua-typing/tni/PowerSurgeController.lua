---@meta _
-- Generated API for game version 0.9.1

---@class PowerSurgeController : Node
---@field min_warn_seconds integer
---@field max_warn_seconds integer
---@field min_surge_seconds integer
---@field max_surge_seconds integer
---@field modps PackedScene
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local PowerSurgeController = {}

---@param loc Location
---@param start_ts integer
---@param end_ts integer
function PowerSurgeController.notify_surge_warning(loc, start_ts, end_ts) end

function PowerSurgeController.start() end

function PowerSurgeController.pause() end
