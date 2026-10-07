---@meta _
-- Generated API for game version 0.10.0

---@class AudioStreamSynchronized : AudioStream
---@field stream_count Streams,stream_,unfoldable,page_size=999,add_button_text=Add Stream
local AudioStreamSynchronized = {
	---@type AudioStream
	["stream_0/stream"] = nil,
	---@type number
	["stream_0/volume"] = nil,
	---@type AudioStream
	["stream_1/stream"] = nil,
	---@type number
	["stream_1/volume"] = nil,
	---@type AudioStream
	["stream_2/stream"] = nil,
	---@type number
	["stream_2/volume"] = nil,
	---@type AudioStream
	["stream_3/stream"] = nil,
	---@type number
	["stream_3/volume"] = nil,
	---@type AudioStream
	["stream_4/stream"] = nil,
	---@type number
	["stream_4/volume"] = nil,
	---@type AudioStream
	["stream_5/stream"] = nil,
	---@type number
	["stream_5/volume"] = nil,
	---@type AudioStream
	["stream_6/stream"] = nil,
	---@type number
	["stream_6/volume"] = nil,
	---@type AudioStream
	["stream_7/stream"] = nil,
	---@type number
	["stream_7/volume"] = nil,
	---@type AudioStream
	["stream_8/stream"] = nil,
	---@type number
	["stream_8/volume"] = nil,
	---@type AudioStream
	["stream_9/stream"] = nil,
	---@type number
	["stream_9/volume"] = nil,
	---@type AudioStream
	["stream_10/stream"] = nil,
	---@type number
	["stream_10/volume"] = nil,
	---@type AudioStream
	["stream_11/stream"] = nil,
	---@type number
	["stream_11/volume"] = nil,
	---@type AudioStream
	["stream_12/stream"] = nil,
	---@type number
	["stream_12/volume"] = nil,
	---@type AudioStream
	["stream_13/stream"] = nil,
	---@type number
	["stream_13/volume"] = nil,
	---@type AudioStream
	["stream_14/stream"] = nil,
	---@type number
	["stream_14/volume"] = nil,
	---@type AudioStream
	["stream_15/stream"] = nil,
	---@type number
	["stream_15/volume"] = nil,
	---@type AudioStream
	["stream_16/stream"] = nil,
	---@type number
	["stream_16/volume"] = nil,
	---@type AudioStream
	["stream_17/stream"] = nil,
	---@type number
	["stream_17/volume"] = nil,
	---@type AudioStream
	["stream_18/stream"] = nil,
	---@type number
	["stream_18/volume"] = nil,
	---@type AudioStream
	["stream_19/stream"] = nil,
	---@type number
	["stream_19/volume"] = nil,
	---@type AudioStream
	["stream_20/stream"] = nil,
	---@type number
	["stream_20/volume"] = nil,
	---@type AudioStream
	["stream_21/stream"] = nil,
	---@type number
	["stream_21/volume"] = nil,
	---@type AudioStream
	["stream_22/stream"] = nil,
	---@type number
	["stream_22/volume"] = nil,
	---@type AudioStream
	["stream_23/stream"] = nil,
	---@type number
	["stream_23/volume"] = nil,
	---@type AudioStream
	["stream_24/stream"] = nil,
	---@type number
	["stream_24/volume"] = nil,
	---@type AudioStream
	["stream_25/stream"] = nil,
	---@type number
	["stream_25/volume"] = nil,
	---@type AudioStream
	["stream_26/stream"] = nil,
	---@type number
	["stream_26/volume"] = nil,
	---@type AudioStream
	["stream_27/stream"] = nil,
	---@type number
	["stream_27/volume"] = nil,
	---@type AudioStream
	["stream_28/stream"] = nil,
	---@type number
	["stream_28/volume"] = nil,
	---@type AudioStream
	["stream_29/stream"] = nil,
	---@type number
	["stream_29/volume"] = nil,
	---@type AudioStream
	["stream_30/stream"] = nil,
	---@type number
	["stream_30/volume"] = nil,
	---@type AudioStream
	["stream_31/stream"] = nil,
	---@type number
	["stream_31/volume"] = nil,
}

---@param stream_count integer
function AudioStreamSynchronized.set_stream_count(stream_count) end

---@return integer
function AudioStreamSynchronized.get_stream_count() end

---@param stream_index integer
---@param audio_stream AudioStream
function AudioStreamSynchronized.set_sync_stream(stream_index, audio_stream) end

---@param stream_index integer
---@return AudioStream
function AudioStreamSynchronized.get_sync_stream(stream_index) end

---@param stream_index integer
---@param volume_db number
function AudioStreamSynchronized.set_sync_stream_volume(stream_index, volume_db) end

---@param stream_index integer
---@return number
function AudioStreamSynchronized.get_sync_stream_volume(stream_index) end
