---@meta _
-- Generated API for game version 0.9.1

---@class AudioEffectDelay : AudioEffect
---@field dry number
---@field tap1_active boolean
---@field tap1_delay_ms number
---@field tap1_level_db number
---@field tap1_pan number
---@field tap2_active boolean
---@field tap2_delay_ms number
---@field tap2_level_db number
---@field tap2_pan number
---@field feedback_active boolean
---@field feedback_delay_ms number
---@field feedback_level_db number
---@field feedback_lowpass number
local AudioEffectDelay = {}

---@param amount number
function AudioEffectDelay.set_dry(amount) end

---@return number
function AudioEffectDelay.get_dry() end

---@param amount boolean
function AudioEffectDelay.set_tap1_active(amount) end

---@return boolean
function AudioEffectDelay.is_tap1_active() end

---@param amount number
function AudioEffectDelay.set_tap1_delay_ms(amount) end

---@return number
function AudioEffectDelay.get_tap1_delay_ms() end

---@param amount number
function AudioEffectDelay.set_tap1_level_db(amount) end

---@return number
function AudioEffectDelay.get_tap1_level_db() end

---@param amount number
function AudioEffectDelay.set_tap1_pan(amount) end

---@return number
function AudioEffectDelay.get_tap1_pan() end

---@param amount boolean
function AudioEffectDelay.set_tap2_active(amount) end

---@return boolean
function AudioEffectDelay.is_tap2_active() end

---@param amount number
function AudioEffectDelay.set_tap2_delay_ms(amount) end

---@return number
function AudioEffectDelay.get_tap2_delay_ms() end

---@param amount number
function AudioEffectDelay.set_tap2_level_db(amount) end

---@return number
function AudioEffectDelay.get_tap2_level_db() end

---@param amount number
function AudioEffectDelay.set_tap2_pan(amount) end

---@return number
function AudioEffectDelay.get_tap2_pan() end

---@param amount boolean
function AudioEffectDelay.set_feedback_active(amount) end

---@return boolean
function AudioEffectDelay.is_feedback_active() end

---@param amount number
function AudioEffectDelay.set_feedback_delay_ms(amount) end

---@return number
function AudioEffectDelay.get_feedback_delay_ms() end

---@param amount number
function AudioEffectDelay.set_feedback_level_db(amount) end

---@return number
function AudioEffectDelay.get_feedback_level_db() end

---@param amount number
function AudioEffectDelay.set_feedback_lowpass(amount) end

---@return number
function AudioEffectDelay.get_feedback_lowpass() end
