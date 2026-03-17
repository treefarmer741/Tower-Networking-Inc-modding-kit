---@meta _
-- Generated API for game version 0.10.0

---@class AudioVisualEffects2D : Node2D
---@field effects_group AudioVisualEffects2D.EffectsGroup
local AudioVisualEffects2D = {}
---@enum AudioVisualEffects2D.EffectsGroup
AudioVisualEffects2D.EffectsGroup = {
	["UNGROUPED"] = 0,
	["FAILURE"] = 1,
}

function AudioVisualEffects2D.trigger() end

function AudioVisualEffects2D.stop() end
