---@meta _
-- Generated API for game version 0.12.1

---@class LawsuitPenaltyController : RandomEvent
---@field lawsuit_max_decrease integer
---@field lawsuit_min_day integer
---@field lawsuit_max_day integer
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local LawsuitPenaltyController = {}

function LawsuitPenaltyController.start() end

function LawsuitPenaltyController.pause() end
