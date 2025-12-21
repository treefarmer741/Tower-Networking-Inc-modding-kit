---@meta _
-- Generated API for game version 0.9.1

---@class AudioStreamPlaybackInteractive : AudioStreamPlayback
local AudioStreamPlaybackInteractive = {}

---@param clip_name string
function AudioStreamPlaybackInteractive.switch_to_clip_by_name(clip_name) end

---@param clip_index integer
function AudioStreamPlaybackInteractive.switch_to_clip(clip_index) end

---@return integer
function AudioStreamPlaybackInteractive.get_current_clip_index() end
