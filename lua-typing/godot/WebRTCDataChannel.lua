---@meta _
-- Generated API for game version 0.10.0

---@class WebRTCDataChannel : PacketPeer
---@field write_mode integer
local WebRTCDataChannel = {}

---@return Error
function WebRTCDataChannel.poll() end

function WebRTCDataChannel.close() end

---@return boolean
function WebRTCDataChannel.was_string_packet() end

---@param write_mode WebRTCDataChannel.WriteMode
function WebRTCDataChannel.set_write_mode(write_mode) end

---@return WebRTCDataChannel.WriteMode
function WebRTCDataChannel.get_write_mode() end

---@return WebRTCDataChannel.ChannelState
function WebRTCDataChannel.get_ready_state() end

---@return string
function WebRTCDataChannel.get_label() end

---@return boolean
function WebRTCDataChannel.is_ordered() end

---@return integer
function WebRTCDataChannel.get_id() end

---@return integer
function WebRTCDataChannel.get_max_packet_life_time() end

---@return integer
function WebRTCDataChannel.get_max_retransmits() end

---@return string
function WebRTCDataChannel.get_protocol() end

---@return boolean
function WebRTCDataChannel.is_negotiated() end

---@return integer
function WebRTCDataChannel.get_buffered_amount() end
