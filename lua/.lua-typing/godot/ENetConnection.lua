---@meta _
-- Generated API for game version 0.10.0

---@class ENetConnection : RefCounted
local ENetConnection = {}

---@param bind_address string
---@param bind_port integer
---@param max_peers integer?  # Default = 32
---@param max_channels integer?  # Default = 0
---@param in_bandwidth integer?  # Default = 0
---@param out_bandwidth integer?  # Default = 0
---@return Error
function ENetConnection.create_host_bound(bind_address, bind_port, max_peers, max_channels, in_bandwidth, out_bandwidth) end

---@param max_peers integer?  # Default = 32
---@param max_channels integer?  # Default = 0
---@param in_bandwidth integer?  # Default = 0
---@param out_bandwidth integer?  # Default = 0
---@return Error
function ENetConnection.create_host(max_peers, max_channels, in_bandwidth, out_bandwidth) end

function ENetConnection.destroy() end

---@param address string
---@param port integer
---@param channels integer?  # Default = 0
---@param data integer?  # Default = 0
---@return ENetPacketPeer
function ENetConnection.connect_to_host(address, port, channels, data) end

---@param timeout integer?  # Default = 0
---@return Array<any>
function ENetConnection.service(timeout) end

function ENetConnection.flush() end

---@param in_bandwidth integer?  # Default = 0
---@param out_bandwidth integer?  # Default = 0
function ENetConnection.bandwidth_limit(in_bandwidth, out_bandwidth) end

---@param limit integer
function ENetConnection.channel_limit(limit) end

---@param channel integer
---@param packet PackedByteArray
---@param flags integer
function ENetConnection.broadcast(channel, packet, flags) end

---@param mode ENetConnection.CompressionMode
function ENetConnection.compress(mode) end

---@param server_options TLSOptions
---@return Error
function ENetConnection.dtls_server_setup(server_options) end

---@param hostname string
---@param client_options TLSOptions?  # Default = <Object#null>
---@return Error
function ENetConnection.dtls_client_setup(hostname, client_options) end

---@param refuse boolean
function ENetConnection.refuse_new_connections(refuse) end

---@param statistic ENetConnection.HostStatistic
---@return number
function ENetConnection.pop_statistic(statistic) end

---@return integer
function ENetConnection.get_max_channels() end

---@return integer
function ENetConnection.get_local_port() end

---@return Array<ENetPacketPeer>
function ENetConnection.get_peers() end

---@param destination_address string
---@param destination_port integer
---@param packet PackedByteArray
function ENetConnection.socket_send(destination_address, destination_port, packet) end
