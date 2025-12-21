---@meta _
-- Generated API for game version 0.9.1

---@class VideoStreamPlayer : Control
---@field audio_track integer
---@field stream VideoStream
---@field volume_db number
---@field volume number
---@field speed_scale number
---@field autoplay boolean
---@field paused boolean
---@field expand boolean
---@field loop boolean
---@field buffering_msec integer
---@field stream_position number
---@field bus string
local VideoStreamPlayer = {}

---@param stream VideoStream
function VideoStreamPlayer.set_stream(stream) end

---@return VideoStream
function VideoStreamPlayer.get_stream() end

function VideoStreamPlayer.play() end

function VideoStreamPlayer.stop() end

---@return boolean
function VideoStreamPlayer.is_playing() end

---@param paused boolean
function VideoStreamPlayer.set_paused(paused) end

---@return boolean
function VideoStreamPlayer.is_paused() end

---@param loop boolean
function VideoStreamPlayer.set_loop(loop) end

---@return boolean
function VideoStreamPlayer.has_loop() end

---@param volume number
function VideoStreamPlayer.set_volume(volume) end

---@return number
function VideoStreamPlayer.get_volume() end

---@param db number
function VideoStreamPlayer.set_volume_db(db) end

---@return number
function VideoStreamPlayer.get_volume_db() end

---@param speed_scale number
function VideoStreamPlayer.set_speed_scale(speed_scale) end

---@return number
function VideoStreamPlayer.get_speed_scale() end

---@param track integer
function VideoStreamPlayer.set_audio_track(track) end

---@return integer
function VideoStreamPlayer.get_audio_track() end

---@return string
function VideoStreamPlayer.get_stream_name() end

---@return number
function VideoStreamPlayer.get_stream_length() end

---@param position number
function VideoStreamPlayer.set_stream_position(position) end

---@return number
function VideoStreamPlayer.get_stream_position() end

---@param enabled boolean
function VideoStreamPlayer.set_autoplay(enabled) end

---@return boolean
function VideoStreamPlayer.has_autoplay() end

---@param enable boolean
function VideoStreamPlayer.set_expand(enable) end

---@return boolean
function VideoStreamPlayer.has_expand() end

---@param msec integer
function VideoStreamPlayer.set_buffering_msec(msec) end

---@return integer
function VideoStreamPlayer.get_buffering_msec() end

---@param bus string
function VideoStreamPlayer.set_bus(bus) end

---@return string
function VideoStreamPlayer.get_bus() end

---@return Texture2D
function VideoStreamPlayer.get_video_texture() end
