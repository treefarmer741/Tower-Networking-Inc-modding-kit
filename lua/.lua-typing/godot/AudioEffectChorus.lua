---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectChorus : AudioEffect
---@field voice_count integer
---@field dry number
---@field wet number
local AudioEffectChorus = {
	---@type number
	["voice/1/delay_ms"] = nil,
	---@type number
	["voice/1/rate_hz"] = nil,
	---@type number
	["voice/1/depth_ms"] = nil,
	---@type number
	["voice/1/level_db"] = nil,
	---@type number
	["voice/1/cutoff_hz"] = nil,
	---@type number
	["voice/1/pan"] = nil,
	---@type number
	["voice/2/delay_ms"] = nil,
	---@type number
	["voice/2/rate_hz"] = nil,
	---@type number
	["voice/2/depth_ms"] = nil,
	---@type number
	["voice/2/level_db"] = nil,
	---@type number
	["voice/2/cutoff_hz"] = nil,
	---@type number
	["voice/2/pan"] = nil,
	---@type number
	["voice/3/delay_ms"] = nil,
	---@type number
	["voice/3/rate_hz"] = nil,
	---@type number
	["voice/3/depth_ms"] = nil,
	---@type number
	["voice/3/level_db"] = nil,
	---@type number
	["voice/3/cutoff_hz"] = nil,
	---@type number
	["voice/3/pan"] = nil,
	---@type number
	["voice/4/delay_ms"] = nil,
	---@type number
	["voice/4/rate_hz"] = nil,
	---@type number
	["voice/4/depth_ms"] = nil,
	---@type number
	["voice/4/level_db"] = nil,
	---@type number
	["voice/4/cutoff_hz"] = nil,
	---@type number
	["voice/4/pan"] = nil,
}

---@param voices integer
function AudioEffectChorus.set_voice_count(voices) end

---@return integer
function AudioEffectChorus.get_voice_count() end

---@param voice_idx integer
---@param delay_ms number
function AudioEffectChorus.set_voice_delay_ms(voice_idx, delay_ms) end

---@param voice_idx integer
---@return number
function AudioEffectChorus.get_voice_delay_ms(voice_idx) end

---@param voice_idx integer
---@param rate_hz number
function AudioEffectChorus.set_voice_rate_hz(voice_idx, rate_hz) end

---@param voice_idx integer
---@return number
function AudioEffectChorus.get_voice_rate_hz(voice_idx) end

---@param voice_idx integer
---@param depth_ms number
function AudioEffectChorus.set_voice_depth_ms(voice_idx, depth_ms) end

---@param voice_idx integer
---@return number
function AudioEffectChorus.get_voice_depth_ms(voice_idx) end

---@param voice_idx integer
---@param level_db number
function AudioEffectChorus.set_voice_level_db(voice_idx, level_db) end

---@param voice_idx integer
---@return number
function AudioEffectChorus.get_voice_level_db(voice_idx) end

---@param voice_idx integer
---@param cutoff_hz number
function AudioEffectChorus.set_voice_cutoff_hz(voice_idx, cutoff_hz) end

---@param voice_idx integer
---@return number
function AudioEffectChorus.get_voice_cutoff_hz(voice_idx) end

---@param voice_idx integer
---@param pan number
function AudioEffectChorus.set_voice_pan(voice_idx, pan) end

---@param voice_idx integer
---@return number
function AudioEffectChorus.get_voice_pan(voice_idx) end

---@param amount number
function AudioEffectChorus.set_wet(amount) end

---@return number
function AudioEffectChorus.get_wet() end

---@param amount number
function AudioEffectChorus.set_dry(amount) end

---@return number
function AudioEffectChorus.get_dry() end
