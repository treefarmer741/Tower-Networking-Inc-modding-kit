---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectRecord : AudioEffect
---@field format integer
local AudioEffectRecord = {}

---@param record boolean
function AudioEffectRecord.set_recording_active(record) end

---@return boolean
function AudioEffectRecord.is_recording_active() end

---@param format AudioStreamWAV.Format
function AudioEffectRecord.set_format(format) end

---@return AudioStreamWAV.Format
function AudioEffectRecord.get_format() end

---@return AudioStreamWAV
function AudioEffectRecord.get_recording() end
