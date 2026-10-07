---@meta _
-- Generated API for game version 0.10.0

---@class PacketPeer : RefCounted
---@field encode_buffer_max_size integer
local PacketPeer = {}

---@param allow_objects boolean?  # Default = false
---@return Object
function PacketPeer.get_var(allow_objects) end

---@param var Object
---@param full_objects boolean?  # Default = false
---@return Error
function PacketPeer.put_var(var, full_objects) end

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
