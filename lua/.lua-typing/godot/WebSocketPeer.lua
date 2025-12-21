---@meta _
-- Generated API for game version 0.9.1

---@class WebSocketPeer : PacketPeer
---@field supported_protocols PackedStringArray
---@field handshake_headers PackedStringArray
---@field inbound_buffer_size integer
---@field outbound_buffer_size integer
---@field max_queued_packets integer
---@field heartbeat_interval integer
local WebSocketPeer = {}

---@param url string
---@param tls_client_options TLSOptions?  # Default = <Object#null>
---@return Error
function WebSocketPeer.connect_to_url(url, tls_client_options) end

---@param stream StreamPeer
---@return Error
function WebSocketPeer.accept_stream(stream) end

---@param message PackedByteArray
---@param write_mode WebSocketPeer.WriteMode?  # Default = 1
---@return Error
function WebSocketPeer.send(message, write_mode) end

---@param message string
---@return Error
function WebSocketPeer.send_text(message) end

---@return boolean
function WebSocketPeer.was_string_packet() end

function WebSocketPeer.poll() end

---@param code integer?  # Default = 1000
---@param reason string?  # Default = 
function WebSocketPeer.close(code, reason) end

---@return string
function WebSocketPeer.get_connected_host() end

---@return integer
function WebSocketPeer.get_connected_port() end

---@return string
function WebSocketPeer.get_selected_protocol() end

---@return string
function WebSocketPeer.get_requested_url() end

---@param enabled boolean
function WebSocketPeer.set_no_delay(enabled) end

---@return integer
function WebSocketPeer.get_current_outbound_buffered_amount() end

---@return WebSocketPeer.State
function WebSocketPeer.get_ready_state() end

---@return integer
function WebSocketPeer.get_close_code() end

---@return string
function WebSocketPeer.get_close_reason() end

---@return PackedStringArray
function WebSocketPeer.get_supported_protocols() end

---@param protocols PackedStringArray
function WebSocketPeer.set_supported_protocols(protocols) end

---@return PackedStringArray
function WebSocketPeer.get_handshake_headers() end

---@param protocols PackedStringArray
function WebSocketPeer.set_handshake_headers(protocols) end

---@return integer
function WebSocketPeer.get_inbound_buffer_size() end

---@param buffer_size integer
function WebSocketPeer.set_inbound_buffer_size(buffer_size) end

---@return integer
function WebSocketPeer.get_outbound_buffer_size() end

---@param buffer_size integer
function WebSocketPeer.set_outbound_buffer_size(buffer_size) end

---@param buffer_size integer
function WebSocketPeer.set_max_queued_packets(buffer_size) end

---@return integer
function WebSocketPeer.get_max_queued_packets() end

---@param interval number
function WebSocketPeer.set_heartbeat_interval(interval) end

---@return number
function WebSocketPeer.get_heartbeat_interval() end
