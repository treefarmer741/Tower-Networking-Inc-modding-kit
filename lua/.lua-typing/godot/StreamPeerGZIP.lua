---@meta _
-- Generated API for game version 0.9.1

---@class StreamPeerGZIP : StreamPeer
local StreamPeerGZIP = {}

---@param use_deflate boolean?  # Default = false
---@param buffer_size integer?  # Default = 65535
---@return Error
function StreamPeerGZIP.start_compression(use_deflate, buffer_size) end

---@param use_deflate boolean?  # Default = false
---@param buffer_size integer?  # Default = 65535
---@return Error
function StreamPeerGZIP.start_decompression(use_deflate, buffer_size) end

---@return Error
function StreamPeerGZIP.finish() end

function StreamPeerGZIP.clear() end
