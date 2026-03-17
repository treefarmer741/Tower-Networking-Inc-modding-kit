---@meta _
-- Generated API for game version 0.10.0

---@class PacketPeerUDP : PacketPeer
local PacketPeerUDP = {}

---@param port integer
---@param bind_address string?  # Default = *
---@param recv_buf_size integer?  # Default = 65536
---@return Error
function PacketPeerUDP.bind(port, bind_address, recv_buf_size) end

function PacketPeerUDP.close() end

---@return Error
function PacketPeerUDP.wait() end

---@return boolean
function PacketPeerUDP.is_bound() end

---@param host string
---@param port integer
---@return Error
function PacketPeerUDP.connect_to_host(host, port) end

---@return boolean
function PacketPeerUDP.is_socket_connected() end

---@return string
function PacketPeerUDP.get_packet_ip() end

---@return integer
function PacketPeerUDP.get_packet_port() end

---@return integer
function PacketPeerUDP.get_local_port() end

---@param host string
---@param port integer
---@return Error
function PacketPeerUDP.set_dest_address(host, port) end

---@param enabled boolean
function PacketPeerUDP.set_broadcast_enabled(enabled) end

---@param multicast_address string
---@param interface_name string
---@return Error
function PacketPeerUDP.join_multicast_group(multicast_address, interface_name) end

---@param multicast_address string
---@param interface_name string
---@return Error
function PacketPeerUDP.leave_multicast_group(multicast_address, interface_name) end
