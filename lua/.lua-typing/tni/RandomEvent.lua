---@meta _
-- Generated API for game version 0.9.1

---@class RandomEvent : Node
---@field ABS_MIN_RATE number # Constant value: 0.001
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local RandomEvent = {}

function RandomEvent.start() end

function RandomEvent.pause() end
