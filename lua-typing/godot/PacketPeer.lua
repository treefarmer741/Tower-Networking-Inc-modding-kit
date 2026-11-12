---@meta _
-- Generated API for game version 0.13.4

---@class PacketPeer : RefCounted
---@field encode_buffer_max_size integer
local PacketPeer = {}

---@return PackedByteArray
function PacketPeer.get_packet() end

---@param buffer PackedByteArray
---@return Error
function PacketPeer.put_packet(buffer) end

---@return Error
function PacketPeer.get_packet_error() end

---@return integer
function PacketPeer.get_available_packet_count() end

---@return integer
function PacketPeer.get_encode_buffer_max_size() end

---@param max_size integer
function PacketPeer.set_encode_buffer_max_size(max_size) end
