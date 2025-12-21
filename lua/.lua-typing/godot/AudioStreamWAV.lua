---@meta _
-- Generated API for game version 0.9.1

---@class AudioStreamWAV : AudioStream
---@field data PackedByteArray
---@field format integer
---@field loop_mode integer
---@field loop_begin integer
---@field loop_end integer
---@field mix_rate integer
---@field stereo boolean
---@field tags table<any,any>
local AudioStreamWAV = {}

---@param stream_data PackedByteArray
---@param options table<any,any>?  # Default = {  }
---@return AudioStreamWAV
function AudioStreamWAV.load_from_buffer(stream_data, options) end

---@param path string
---@param options table<any,any>?  # Default = {  }
---@return AudioStreamWAV
function AudioStreamWAV.load_from_file(path, options) end

---@param data PackedByteArray
function AudioStreamWAV.set_data(data) end

---@return PackedByteArray
function AudioStreamWAV.get_data() end

---@param format AudioStreamWAV.Format
function AudioStreamWAV.set_format(format) end

---@return AudioStreamWAV.Format
function AudioStreamWAV.get_format() end

---@param loop_mode AudioStreamWAV.LoopMode
function AudioStreamWAV.set_loop_mode(loop_mode) end

---@return AudioStreamWAV.LoopMode
function AudioStreamWAV.get_loop_mode() end

---@param loop_begin integer
function AudioStreamWAV.set_loop_begin(loop_begin) end

---@return integer
function AudioStreamWAV.get_loop_begin() end

---@param loop_end integer
function AudioStreamWAV.set_loop_end(loop_end) end

---@return integer
function AudioStreamWAV.get_loop_end() end

---@param mix_rate integer
function AudioStreamWAV.set_mix_rate(mix_rate) end

---@return integer
function AudioStreamWAV.get_mix_rate() end

---@param stereo boolean
function AudioStreamWAV.set_stereo(stereo) end

---@return boolean
function AudioStreamWAV.is_stereo() end

---@param tags table<any,any>
function AudioStreamWAV.set_tags(tags) end

---@return table<any,any>
function AudioStreamWAV.get_tags() end

---@param path string
---@return Error
function AudioStreamWAV.save_to_wav(path) end
