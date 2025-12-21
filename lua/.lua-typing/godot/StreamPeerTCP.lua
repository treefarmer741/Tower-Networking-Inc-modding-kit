---@meta _
-- Generated API for game version 0.9.1

---@class StreamPeerTCP : StreamPeer
local StreamPeerTCP = {}

---@param port integer
---@param host string?  # Default = *
---@return Error
function StreamPeerTCP.bind(port, host) end

---@param host string
---@param port integer
---@return Error
function StreamPeerTCP.connect_to_host(host, port) end

---@return Error
function StreamPeerTCP.poll() end

---@return StreamPeerTCP.Status
function StreamPeerTCP.get_status() end

---@return string
function StreamPeerTCP.get_connected_host() end

---@return integer
function StreamPeerTCP.get_connected_port() end

---@return integer
function StreamPeerTCP.get_local_port() end

function StreamPeerTCP.disconnect_from_host() end

---@param enabled boolean
function StreamPeerTCP.set_no_delay(enabled) end
