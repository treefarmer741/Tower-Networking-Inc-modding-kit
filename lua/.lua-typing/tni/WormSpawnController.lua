---@meta _
-- Generated API for game version 0.9.1

---@class WormSpawnController : Node
---@field min_warn_seconds integer
---@field max_warn_seconds integer
---@field min_hunt_seconds integer
---@field max_hunt_seconds integer
---@field hint_difficulty integer
---@field worm_zoo_ps Array<any>
---@field worm_zoo Object
---@field modps PackedScene
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local WormSpawnController = {}

---@param worm WormBase
---@param locs Array<any>
---@param start_ts integer
---@param _end_ts integer
function WormSpawnController.notify_worm_threat(worm, locs, start_ts, _end_ts) end

function WormSpawnController.start() end

function WormSpawnController.pause() end
