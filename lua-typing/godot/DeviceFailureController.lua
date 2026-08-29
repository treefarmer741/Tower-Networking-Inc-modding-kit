---@meta _
-- Generated API for game version 0.12.1

---@class DeviceFailureController : RandomEvent
---@field max_concurrent_fails integer
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local DeviceFailureController = {}

---@param dev DeviceUnit
function DeviceFailureController.try_fail_device(dev) end

function DeviceFailureController.start() end

function DeviceFailureController.pause() end
