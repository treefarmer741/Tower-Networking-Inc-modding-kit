---@meta _
-- Generated API for game version 0.12.1

---@class LinkUserOutlet : LinkOutlet
---@field link_type LinkOutlet.LinkOutletType
---@field link_nps table<any,any>
---@field link_np string
---@field tower_link TowerNetworkLink
---@field serial_num string
---@field linked boolean
---@field socket Socket
---@field sockets Array<Socket>
---@field floor_num integer
local LinkUserOutlet = {}

---@param lo LinkOutlet
function LinkUserOutlet.get_link_type_string(lo) end

---@param idx integer
---@return TowerNetworkLink
function LinkUserOutlet.get_tower_link_for_socket(idx) end

---@param idx integer
---@return boolean
function LinkUserOutlet.is_socket_linked(idx) end

function LinkUserOutlet.update_link_outlet_labels() end

---@param lnk TowerNetworkLink
---@param socket_idx integer?  # Default = 0
function LinkUserOutlet.link_setup(lnk, socket_idx) end

function LinkUserOutlet.remove() end

function LinkUserOutlet.remove_local() end

---@return Object
function LinkUserOutlet.debug_monitor_callback() end
