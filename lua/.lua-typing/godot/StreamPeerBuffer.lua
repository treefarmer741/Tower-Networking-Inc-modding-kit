---@meta _
-- Generated API for game version 0.10.0

---@class StreamPeerBuffer : StreamPeer
---@field data_array PackedByteArray
local StreamPeerBuffer = {}

---@param position integer
function StreamPeerBuffer.seek(position) end

---@return integer
function StreamPeerBuffer.get_size() end

---@return integer
function StreamPeerBuffer.get_position() end

---@param size integer
function StreamPeerBuffer.resize(size) end

---@param data PackedByteArray
function StreamPeerBuffer.set_data_array(data) end

---@return PackedByteArray
function StreamPeerBuffer.get_data_array() end

function StreamPeerBuffer.clear() end

---@return StreamPeerBuffer
function StreamPeerBuffer.duplicate() end
