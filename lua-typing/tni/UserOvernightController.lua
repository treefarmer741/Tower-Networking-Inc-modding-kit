---@meta _
-- Generated API for game version 0.12.1

---@class UserOvernightController : RandomEvent
---@field OVERNIGHT_START number # Constant value: 0.75
---@field OVERNIGHT_END number # Constant value: 0.375
---@field scheduled_ot_rate number
---@field min_warn_seconds integer
---@field max_warn_seconds integer
---@field ot_min_hours integer
---@field ot_max_hours integer
---@field min_ot_staff integer
---@field max_ot_staff integer
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local UserOvernightController = {}

function UserOvernightController.start() end

function UserOvernightController.pause() end
