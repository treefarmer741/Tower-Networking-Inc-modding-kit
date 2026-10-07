---@meta _
-- Generated API for game version 0.13.1

---@class CoPodAttackController : RandomEvent
---@field attack_title string
---@field min_warn_seconds integer
---@field max_warn_seconds integer
---@field min_attack_seconds integer
---@field max_attack_seconds integer
---@field attack_traffic_class string
---@field attack_traffic_weight integer
---@field attack_satiety_damage number
---@field attack_poll_seconds number
---@field discovery_poll_seconds number
---@field occurrence_rate_factor number
---@field min_group_size integer
---@field max_group_size_factor number
---@field max_group_size_cap integer
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local CoPodAttackController = {}

---@param time_mult_delta number
function CoPodAttackController.time_mult_updated(time_mult_delta) end

function CoPodAttackController.start() end

function CoPodAttackController.pause() end
