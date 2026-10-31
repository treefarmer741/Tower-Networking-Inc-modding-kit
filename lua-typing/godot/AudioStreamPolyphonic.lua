---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamPolyphonic : AudioStream
---@field polyphony integer
local AudioStreamPolyphonic = {}

---@param voices integer
function AudioStreamPolyphonic.set_polyphony(voices) end

---@return integer
function AudioStreamPolyphonic.get_polyphony() end
