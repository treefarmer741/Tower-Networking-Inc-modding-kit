---@meta _
-- Generated API for game version 0.13.1

---@class SecretariatAuditController : RandomEvent
---@field base_fine integer
---@field fine_escalation number
---@field audit_share_base number
---@field audit_share_per_floor number
---@field audit_share_max number
---@field audit_floors_per_catch integer
---@field catch_count integer
---@field min_trial_period_seconds number
---@field max_trial_period_seconds number
---@field occurence_rate number
---@field enabled boolean
---@field trial_timer Timer
local SecretariatAuditController = {}

function SecretariatAuditController.start() end

function SecretariatAuditController.pause() end
