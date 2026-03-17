---@meta _
-- Generated API for game version 0.10.0

---@class Power : Node
---@field manifest_intent boolean
---@field infinite_mode boolean
---@field default_fallback_load integer
---@field controller PowerController
---@field current_load integer
---@field can_manifest boolean
---@field is_powered boolean
local Power = {}

function Power.broadcast_restored() end

function Power.broadcast_lost() end

function Power.on() end

function Power.off() end
