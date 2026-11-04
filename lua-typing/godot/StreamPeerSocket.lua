---@meta _
-- Generated API for game version 0.13.3

---@class StreamPeerSocket : StreamPeer
local StreamPeerSocket = {}

---@return Error
function StreamPeerSocket.poll() end

---@return StreamPeerSocket.Status
function StreamPeerSocket.get_status() end

function StreamPeerSocket.disconnect_from_host() end
