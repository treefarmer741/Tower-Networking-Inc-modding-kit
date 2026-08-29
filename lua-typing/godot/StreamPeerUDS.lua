---@meta _
-- Generated API for game version 0.12.1

---@class StreamPeerUDS : StreamPeerSocket
local StreamPeerUDS = {}

---@param path string
---@return Error
function StreamPeerUDS.bind(path) end

---@param path string
---@return Error
function StreamPeerUDS.connect_to_host(path) end

---@return string
function StreamPeerUDS.get_connected_path() end
