---@meta _
-- Generated API for game version 0.9.1

---@class PowerOutageController : Node
---@field scheduled_outage_rate number
---@field min_warn_seconds integer
---@field max_warn_seconds integer
---@field min_outage_seconds integer
---@field max_outage_seconds integer
---@field modps PackedScene
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local PowerOutageController = {}

---@param start_ts Object
---@param end_ts Object
---@param loc Object
---@param scheduled boolean?  # Default = true
function PowerOutageController.setup_outage_mod(start_ts, end_ts, loc, scheduled) end

---@param loc Location
---@param end_ts integer
function PowerOutageController.notify_unscheduled_outage(loc, end_ts) end

---@param loc Location
---@param start_ts integer
---@param end_ts integer
function PowerOutageController.notify_scheduled_outage(loc, start_ts, end_ts) end

function PowerOutageController.start() end

function PowerOutageController.pause() end
