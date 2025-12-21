---@meta _
-- Generated API for game version 0.9.1

---@class WebRTCPeerConnection : RefCounted
local WebRTCPeerConnection = {}

---@param extension_class string
function WebRTCPeerConnection.set_default_extension(extension_class) end

---@param configuration table<any,any>?  # Default = {  }
---@return Error
function WebRTCPeerConnection.initialize(configuration) end

---@param label string
---@param options table<any,any>?  # Default = {  }
---@return WebRTCDataChannel
function WebRTCPeerConnection.create_data_channel(label, options) end

---@return Error
function WebRTCPeerConnection.create_offer() end

---@param type string
---@param sdp string
---@return Error
function WebRTCPeerConnection.set_local_description(type, sdp) end

---@param type string
---@param sdp string
---@return Error
function WebRTCPeerConnection.set_remote_description(type, sdp) end

---@param media string
---@param index integer
---@param name string
---@return Error
function WebRTCPeerConnection.add_ice_candidate(media, index, name) end

---@return Error
function WebRTCPeerConnection.poll() end

function WebRTCPeerConnection.close() end

---@return WebRTCPeerConnection.ConnectionState
function WebRTCPeerConnection.get_connection_state() end

---@return WebRTCPeerConnection.GatheringState
function WebRTCPeerConnection.get_gathering_state() end

---@return WebRTCPeerConnection.SignalingState
function WebRTCPeerConnection.get_signaling_state() end
