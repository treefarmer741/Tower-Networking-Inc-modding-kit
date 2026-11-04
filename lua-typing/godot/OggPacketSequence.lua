---@meta _
-- Generated API for game version 0.10.0

---@class OggPacketSequence : Resource
---@field packet_data Array<PackedByteArray>
---@field granule_positions PackedInt64Array
---@field sampling_rate number
local OggPacketSequence = {}

---@param packet_data Array<Array>
function OggPacketSequence.set_packet_data(packet_data) end

---@return Array<Array>
function OggPacketSequence.get_packet_data() end

---@param granule_positions PackedInt64Array
function OggPacketSequence.set_packet_granule_positions(granule_positions) end

---@return PackedInt64Array
function OggPacketSequence.get_packet_granule_positions() end

---@param sampling_rate number
function OggPacketSequence.set_sampling_rate(sampling_rate) end

---@return number
function OggPacketSequence.get_sampling_rate() end

---@return number
function OggPacketSequence.get_length() end
