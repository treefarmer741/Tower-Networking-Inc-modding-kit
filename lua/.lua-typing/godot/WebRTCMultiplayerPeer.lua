---@meta _
-- Generated API for game version 0.9.1

---@class WebRTCMultiplayerPeer : MultiplayerPeer
local WebRTCMultiplayerPeer = {}

---@param channels_config Array<any>?  # Default = []
---@return Error
function WebRTCMultiplayerPeer.create_server(channels_config) end

---@param peer_id integer
---@param channels_config Array<any>?  # Default = []
---@return Error
function WebRTCMultiplayerPeer.create_client(peer_id, channels_config) end

---@param peer_id integer
---@param channels_config Array<any>?  # Default = []
---@return Error
function WebRTCMultiplayerPeer.create_mesh(peer_id, channels_config) end

---@param peer WebRTCPeerConnection
---@param peer_id integer
---@param unreliable_lifetime integer?  # Default = 1
---@return Error
function WebRTCMultiplayerPeer.add_peer(peer, peer_id, unreliable_lifetime) end

---@param peer_id integer
function WebRTCMultiplayerPeer.remove_peer(peer_id) end

---@param peer_id integer
---@return boolean
function WebRTCMultiplayerPeer.has_peer(peer_id) end

---@param peer_id integer
---@return table<any,any>
function WebRTCMultiplayerPeer.get_peer(peer_id) end

---@return table<any,any>
function WebRTCMultiplayerPeer.get_peers() end
