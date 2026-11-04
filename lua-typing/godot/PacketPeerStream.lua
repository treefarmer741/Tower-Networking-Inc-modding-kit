---@meta _
-- Generated API for game version 0.10.0

---@class PacketPeerStream : PacketPeer
---@field input_buffer_max_size integer
---@field output_buffer_max_size integer
---@field stream_peer StreamPeer
local PacketPeerStream = {}

---@param peer StreamPeer
function PacketPeerStream.set_stream_peer(peer) end

---@return StreamPeer
function PacketPeerStream.get_stream_peer() end

---@param max_size_bytes integer
function PacketPeerStream.set_input_buffer_max_size(max_size_bytes) end

---@param max_size_bytes integer
function PacketPeerStream.set_output_buffer_max_size(max_size_bytes) end

---@return integer
function PacketPeerStream.get_input_buffer_max_size() end

---@return integer
function PacketPeerStream.get_output_buffer_max_size() end
