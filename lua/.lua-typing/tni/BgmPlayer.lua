---@meta _
-- Generated API for game version 0.9.1

---@class BgmPlayer : AudioStreamPlayer
---@field playlist Array<any>
local BgmPlayer = {}

---@param duration number?  # Default = 1.0
function BgmPlayer.try_fade_out(duration) end

---@param duration number?  # Default = 1.0
function BgmPlayer.try_fade_in(duration) end

---@param ind integer?  # Default = 0
function BgmPlayer.play_index(ind) end

function BgmPlayer.play_random() end

function BgmPlayer.play_next() end
