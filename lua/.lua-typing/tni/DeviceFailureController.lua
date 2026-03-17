---@meta _
-- Generated API for game version 0.9.1

---@class DeviceFailureController : Node
---@field max_concurrent_fails integer
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local DeviceFailureController = {}

function DeviceFailureController.start() end

function DeviceFailureController.pause() end
