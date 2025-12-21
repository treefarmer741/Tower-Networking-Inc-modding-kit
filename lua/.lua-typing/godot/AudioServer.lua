---@meta _
-- Generated API for game version 0.9.1

---@class AudioServer : Object
---@field bus_count integer
---@field output_device string
---@field input_device string
---@field playback_speed_scale number
local AudioServer = {}

---@param amount integer
function AudioServer.set_bus_count(amount) end

---@return integer
function AudioServer.get_bus_count() end

---@param index integer
function AudioServer.remove_bus(index) end

---@param at_position integer?  # Default = -1
function AudioServer.add_bus(at_position) end

---@param index integer
---@param to_index integer
function AudioServer.move_bus(index, to_index) end

---@param bus_idx integer
---@param name string
function AudioServer.set_bus_name(bus_idx, name) end

---@param bus_idx integer
---@return string
function AudioServer.get_bus_name(bus_idx) end

---@param bus_name string
---@return integer
function AudioServer.get_bus_index(bus_name) end

---@param bus_idx integer
---@return integer
function AudioServer.get_bus_channels(bus_idx) end

---@param bus_idx integer
---@param volume_db number
function AudioServer.set_bus_volume_db(bus_idx, volume_db) end

---@param bus_idx integer
---@return number
function AudioServer.get_bus_volume_db(bus_idx) end

---@param bus_idx integer
---@param volume_linear number
function AudioServer.set_bus_volume_linear(bus_idx, volume_linear) end

---@param bus_idx integer
---@return number
function AudioServer.get_bus_volume_linear(bus_idx) end

---@param bus_idx integer
---@param send string
function AudioServer.set_bus_send(bus_idx, send) end

---@param bus_idx integer
---@return string
function AudioServer.get_bus_send(bus_idx) end

---@param bus_idx integer
---@param enable boolean
function AudioServer.set_bus_solo(bus_idx, enable) end

---@param bus_idx integer
---@return boolean
function AudioServer.is_bus_solo(bus_idx) end

---@param bus_idx integer
---@param enable boolean
function AudioServer.set_bus_mute(bus_idx, enable) end

---@param bus_idx integer
---@return boolean
function AudioServer.is_bus_mute(bus_idx) end

---@param bus_idx integer
---@param enable boolean
function AudioServer.set_bus_bypass_effects(bus_idx, enable) end

---@param bus_idx integer
---@return boolean
function AudioServer.is_bus_bypassing_effects(bus_idx) end

---@param bus_idx integer
---@param effect AudioEffect
---@param at_position integer?  # Default = -1
function AudioServer.add_bus_effect(bus_idx, effect, at_position) end

---@param bus_idx integer
---@param effect_idx integer
function AudioServer.remove_bus_effect(bus_idx, effect_idx) end

---@param bus_idx integer
---@return integer
function AudioServer.get_bus_effect_count(bus_idx) end

---@param bus_idx integer
---@param effect_idx integer
---@return AudioEffect
function AudioServer.get_bus_effect(bus_idx, effect_idx) end

---@param bus_idx integer
---@param effect_idx integer
---@param channel integer?  # Default = 0
---@return AudioEffectInstance
function AudioServer.get_bus_effect_instance(bus_idx, effect_idx, channel) end

---@param bus_idx integer
---@param effect_idx integer
---@param by_effect_idx integer
function AudioServer.swap_bus_effects(bus_idx, effect_idx, by_effect_idx) end

---@param bus_idx integer
---@param effect_idx integer
---@param enabled boolean
function AudioServer.set_bus_effect_enabled(bus_idx, effect_idx, enabled) end

---@param bus_idx integer
---@param effect_idx integer
---@return boolean
function AudioServer.is_bus_effect_enabled(bus_idx, effect_idx) end

---@param bus_idx integer
---@param channel integer
---@return number
function AudioServer.get_bus_peak_volume_left_db(bus_idx, channel) end

---@param bus_idx integer
---@param channel integer
---@return number
function AudioServer.get_bus_peak_volume_right_db(bus_idx, channel) end

---@param scale number
function AudioServer.set_playback_speed_scale(scale) end

---@return number
function AudioServer.get_playback_speed_scale() end

function AudioServer.lock() end

function AudioServer.unlock() end

---@return AudioServer.SpeakerMode
function AudioServer.get_speaker_mode() end

---@return number
function AudioServer.get_mix_rate() end

---@return number
function AudioServer.get_input_mix_rate() end

---@return string
function AudioServer.get_driver_name() end

---@return PackedStringArray
function AudioServer.get_output_device_list() end

---@return string
function AudioServer.get_output_device() end

---@param name string
function AudioServer.set_output_device(name) end

---@return number
function AudioServer.get_time_to_next_mix() end

---@return number
function AudioServer.get_time_since_last_mix() end

---@return number
function AudioServer.get_output_latency() end

---@return PackedStringArray
function AudioServer.get_input_device_list() end

---@return string
function AudioServer.get_input_device() end

---@param name string
function AudioServer.set_input_device(name) end

---@param bus_layout AudioBusLayout
function AudioServer.set_bus_layout(bus_layout) end

---@return AudioBusLayout
function AudioServer.generate_bus_layout() end

---@param enable boolean
function AudioServer.set_enable_tagging_used_audio_streams(enable) end

---@param stream AudioStream
---@return boolean
function AudioServer.is_stream_registered_as_sample(stream) end

---@param stream AudioStream
function AudioServer.register_stream_as_sample(stream) end
