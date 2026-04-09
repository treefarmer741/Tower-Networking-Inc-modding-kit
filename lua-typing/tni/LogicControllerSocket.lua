---@meta _
-- Generated API for game version 0.10.11

---@class LogicControllerSocket : Socket
---@field PacketPlaceholderScene string # Constant value: <PackedScene>
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
local LogicControllerSocket = {}

---@param is_tx_dir boolean
---@param packet Object
function LogicControllerSocket.network_activity(is_tx_dir, packet) end

function LogicControllerSocket.reset_netw_stats() end

---@return Object
function LogicControllerSocket.get_port_tags() end

function LogicControllerSocket.block() end

function LogicControllerSocket.unblock() end

---@param plug Plug
---@return Object
function LogicControllerSocket.compatible_with(plug) end

---@param msg string
function LogicControllerSocket.show_hint(msg) end
