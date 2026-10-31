---@meta _
-- Generated API for game version 0.10.0

---@class WebSocketMultiplayerPeer : MultiplayerPeer
---@field supported_protocols PackedStringArray
---@field handshake_headers PackedStringArray
---@field inbound_buffer_size integer
---@field outbound_buffer_size integer
---@field handshake_timeout number
---@field max_queued_packets integer
local WebSocketMultiplayerPeer = {}

---@param url string
---@param tls_client_options TLSOptions?  # Default = <Object#null>
---@return Error
function WebSocketMultiplayerPeer.create_client(url, tls_client_options) end

---@param port integer
---@param bind_address string?  # Default = *
---@param tls_server_options TLSOptions?  # Default = <Object#null>
---@return Error
function WebSocketMultiplayerPeer.create_server(port, bind_address, tls_server_options) end

---@param peer_id integer
---@return WebSocketPeer
function WebSocketMultiplayerPeer.get_peer(peer_id) end

---@param id integer
---@return string
function WebSocketMultiplayerPeer.get_peer_address(id) end

---@param id integer
---@return integer
function WebSocketMultiplayerPeer.get_peer_port(id) end

---@return PackedStringArray
function WebSocketMultiplayerPeer.get_supported_protocols() end

---@param protocols PackedStringArray
function WebSocketMultiplayerPeer.set_supported_protocols(protocols) end

---@return PackedStringArray
function WebSocketMultiplayerPeer.get_handshake_headers() end

---@param protocols PackedStringArray
function WebSocketMultiplayerPeer.set_handshake_headers(protocols) end

---@return integer
function WebSocketMultiplayerPeer.get_inbound_buffer_size() end

---@param buffer_size integer
function WebSocketMultiplayerPeer.set_inbound_buffer_size(buffer_size) end

---@return integer
function WebSocketMultiplayerPeer.get_outbound_buffer_size() end

---@param buffer_size integer
function WebSocketMultiplayerPeer.set_outbound_buffer_size(buffer_size) end

---@return number
function WebSocketMultiplayerPeer.get_handshake_timeout() end

---@param timeout number
function WebSocketMultiplayerPeer.set_handshake_timeout(timeout) end

---@param max_queued_packets integer
function WebSocketMultiplayerPeer.set_max_queued_packets(max_queued_packets) end

---@return integer
function WebSocketMultiplayerPeer.get_max_queued_packets() end
