---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamPlaylist : AudioStream
---@field shuffle boolean
---@field loop boolean
---@field fade_time number
---@field stream_count Streams,stream_,unfoldable,page_size=999,add_button_text=Add Stream
---@field stream_0 AudioStream
---@field stream_1 AudioStream
---@field stream_2 AudioStream
---@field stream_3 AudioStream
---@field stream_4 AudioStream
---@field stream_5 AudioStream
---@field stream_6 AudioStream
---@field stream_7 AudioStream
---@field stream_8 AudioStream
---@field stream_9 AudioStream
---@field stream_10 AudioStream
---@field stream_11 AudioStream
---@field stream_12 AudioStream
---@field stream_13 AudioStream
---@field stream_14 AudioStream
---@field stream_15 AudioStream
---@field stream_16 AudioStream
---@field stream_17 AudioStream
---@field stream_18 AudioStream
---@field stream_19 AudioStream
---@field stream_20 AudioStream
---@field stream_21 AudioStream
---@field stream_22 AudioStream
---@field stream_23 AudioStream
---@field stream_24 AudioStream
---@field stream_25 AudioStream
---@field stream_26 AudioStream
---@field stream_27 AudioStream
---@field stream_28 AudioStream
---@field stream_29 AudioStream
---@field stream_30 AudioStream
---@field stream_31 AudioStream
---@field stream_32 AudioStream
---@field stream_33 AudioStream
---@field stream_34 AudioStream
---@field stream_35 AudioStream
---@field stream_36 AudioStream
---@field stream_37 AudioStream
---@field stream_38 AudioStream
---@field stream_39 AudioStream
---@field stream_40 AudioStream
---@field stream_41 AudioStream
---@field stream_42 AudioStream
---@field stream_43 AudioStream
---@field stream_44 AudioStream
---@field stream_45 AudioStream
---@field stream_46 AudioStream
---@field stream_47 AudioStream
---@field stream_48 AudioStream
---@field stream_49 AudioStream
---@field stream_50 AudioStream
---@field stream_51 AudioStream
---@field stream_52 AudioStream
---@field stream_53 AudioStream
---@field stream_54 AudioStream
---@field stream_55 AudioStream
---@field stream_56 AudioStream
---@field stream_57 AudioStream
---@field stream_58 AudioStream
---@field stream_59 AudioStream
---@field stream_60 AudioStream
---@field stream_61 AudioStream
---@field stream_62 AudioStream
---@field stream_63 AudioStream
local AudioStreamPlaylist = {}

---@param stream_count integer
function AudioStreamPlaylist.set_stream_count(stream_count) end

---@return integer
function AudioStreamPlaylist.get_stream_count() end

---@return number
function AudioStreamPlaylist.get_bpm() end

---@param stream_index integer
---@param audio_stream AudioStream
function AudioStreamPlaylist.set_list_stream(stream_index, audio_stream) end

---@param stream_index integer
---@return AudioStream
function AudioStreamPlaylist.get_list_stream(stream_index) end

---@param shuffle boolean
function AudioStreamPlaylist.set_shuffle(shuffle) end

---@return boolean
function AudioStreamPlaylist.get_shuffle() end

---@param dec number
function AudioStreamPlaylist.set_fade_time(dec) end

---@return number
function AudioStreamPlaylist.get_fade_time() end

---@param loop boolean
function AudioStreamPlaylist.set_loop(loop) end

---@return boolean
function AudioStreamPlaylist.has_loop() end
