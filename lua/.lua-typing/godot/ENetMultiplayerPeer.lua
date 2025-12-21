---@meta _
-- Generated API for game version 0.9.1

---@class ENetMultiplayerPeer : MultiplayerPeer
---@field host ENetConnection
local ENetMultiplayerPeer = {}

---@param port integer
---@param max_clients integer?  # Default = 32
---@param max_channels integer?  # Default = 0
---@param in_bandwidth integer?  # Default = 0
---@param out_bandwidth integer?  # Default = 0
---@return Error
function ENetMultiplayerPeer.create_server(port, max_clients, max_channels, in_bandwidth, out_bandwidth) end

---@param address string
---@param port integer
---@param channel_count integer?  # Default = 0
---@param in_bandwidth integer?  # Default = 0
---@param out_bandwidth integer?  # Default = 0
---@param local_port integer?  # Default = 0
---@return Error
function ENetMultiplayerPeer.create_client(address, port, channel_count, in_bandwidth, out_bandwidth, local_port) end

---@param unique_id integer
---@return Error
function ENetMultiplayerPeer.create_mesh(unique_id) end

---@param peer_id integer
---@param host ENetConnection
---@return Error
function ENetMultiplayerPeer.add_mesh_peer(peer_id, host) end

---@param ip string
function ENetMultiplayerPeer.set_bind_ip(ip) end

---@return ENetConnection
function ENetMultiplayerPeer.get_host() end

---@param id integer
---@return ENetPacketPeer
function ENetMultiplayerPeer.get_peer(id) end
