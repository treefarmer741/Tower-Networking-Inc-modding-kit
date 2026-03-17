---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamOggVorbis : AudioStream
---@field packet_sequence Object
---@field bpm number
---@field beat_count integer
---@field bar_beats integer
---@field tags table<any,any>
---@field loop boolean
---@field loop_offset number
local AudioStreamOggVorbis = {}

---@param stream_data PackedByteArray
---@return AudioStreamOggVorbis
function AudioStreamOggVorbis.load_from_buffer(stream_data) end

---@param path string
---@return AudioStreamOggVorbis
function AudioStreamOggVorbis.load_from_file(path) end

---@param packet_sequence OggPacketSequence
function AudioStreamOggVorbis.set_packet_sequence(packet_sequence) end

---@return OggPacketSequence
function AudioStreamOggVorbis.get_packet_sequence() end

---@param enable boolean
function AudioStreamOggVorbis.set_loop(enable) end

---@return boolean
function AudioStreamOggVorbis.has_loop() end

---@param seconds number
function AudioStreamOggVorbis.set_loop_offset(seconds) end

---@return number
function AudioStreamOggVorbis.get_loop_offset() end

---@param bpm number
function AudioStreamOggVorbis.set_bpm(bpm) end

---@return number
function AudioStreamOggVorbis.get_bpm() end

---@param count integer
function AudioStreamOggVorbis.set_beat_count(count) end

---@return integer
function AudioStreamOggVorbis.get_beat_count() end

---@param count integer
function AudioStreamOggVorbis.set_bar_beats(count) end

---@return integer
function AudioStreamOggVorbis.get_bar_beats() end

---@param tags table<any,any>
function AudioStreamOggVorbis.set_tags(tags) end

---@return table<any,any>
function AudioStreamOggVorbis.get_tags() end
