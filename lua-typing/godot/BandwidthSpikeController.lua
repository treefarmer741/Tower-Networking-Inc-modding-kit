---@meta _
-- Generated API for game version 0.12.1

---@class BandwidthSpikeController : RandomEvent
---@field event_name string
---@field warning_message_template string
---@field target_user_scenes Array<any>
---@field spike_min_multiplier number
---@field spike_max_multiplier number
---@field spike_min_hours integer
---@field spike_max_hours integer
---@field min_warn_seconds integer
---@field max_warn_seconds integer
---@field trigger_time_start number
---@field trigger_time_end number
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local BandwidthSpikeController = {}

function BandwidthSpikeController.start() end

function BandwidthSpikeController.pause() end
