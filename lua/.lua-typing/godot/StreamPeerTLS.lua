---@meta _
-- Generated API for game version 0.9.1

---@class StreamPeerTLS : StreamPeer
local StreamPeerTLS = {}

function StreamPeerTLS.poll() end

---@param stream StreamPeer
---@param server_options TLSOptions
---@return Error
function StreamPeerTLS.accept_stream(stream, server_options) end

---@param stream StreamPeer
---@param common_name string
---@param client_options TLSOptions?  # Default = <Object#null>
---@return Error
function StreamPeerTLS.connect_to_stream(stream, common_name, client_options) end

---@return StreamPeerTLS.Status
function StreamPeerTLS.get_status() end

---@return StreamPeer
function StreamPeerTLS.get_stream() end

function StreamPeerTLS.disconnect_from_stream() end
