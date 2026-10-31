---@meta _
-- Generated API for game version 0.13.4

---@class SfpSocket : LogicControllerSocket
---@field face Sprite2D
---@field module DeviceUnit
---@field is_back_port boolean
---@field link_ind Node2D
---@field act_ind_rcache Node2D
---@field act_ind Node2D
---@field total_tx_since_up integer
---@field total_rx_since_up integer
---@field up_timestamp integer
---@field traversal_tc_counts_since_up table<any,any>
---@field is_up boolean
---@field virtual boolean
---@field passthrough boolean
---@field port_num integer
---@field port_id string
---@field bliptimer Timer
---@field onscr_notifier VisibleOnScreenNotifier2D
---@field top_traffic_classes Array<any>
---@field connection Object
---@field opposite_socket Socket
---@field type Socket.Type
---@field insert_sound_np string
---@field remove_sound_np string
---@field disable_egress boolean
---@field disable_ingress boolean
---@field insert_sound AudioStreamPlayer2D
---@field remove_sound AudioStreamPlayer2D
---@field controller GraphController
---@field is_blocked boolean
---@field root_transformer RemoteTransform2D
local SfpSocket = {}

---@param by DeviceUnit
---@param port_type Socket.Type
function SfpSocket.fit(by, port_type) end

function SfpSocket.unfit() end

---@param plug Plug
---@return Object
function SfpSocket.compatible_with(plug) end

---@param s string
---@return boolean
function SfpSocket.is_port_id_like(s) end

---@param s string
---@return string
function SfpSocket.strip_port_prefix(s) end

---@param is_tx_dir boolean
---@param packet Object
function SfpSocket.network_activity(is_tx_dir, packet) end

function SfpSocket.reset_netw_stats() end

---@return Object
function SfpSocket.get_port_tags() end

function SfpSocket.block() end

function SfpSocket.unblock() end

---@param plug Plug
---@return Object
function SfpSocket.compatible_with(plug) end

---@param msg string
function SfpSocket.show_hint(msg) end
