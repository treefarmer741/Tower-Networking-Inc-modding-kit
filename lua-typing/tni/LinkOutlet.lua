---@meta _
-- Generated API for game version 0.12.1

---@class LinkOutlet : FixtureOutlet
---@field link_type LinkOutlet.LinkOutletType
---@field link_nps table<any,any>
---@field link_np string
---@field tower_link TowerNetworkLink
---@field serial_num string
---@field linked boolean
---@field socket Socket
---@field sockets Array<Socket>
---@field floor_num integer
local LinkOutlet = {}
---@enum LinkOutlet.LinkOutletType
LinkOutlet.LinkOutletType = {
	["COPPER"] = 0,
	["FIBER"] = 1,
}

---@param lo LinkOutlet
function LinkOutlet.get_link_type_string(lo) end

---@param idx integer
---@return TowerNetworkLink
function LinkOutlet.get_tower_link_for_socket(idx) end

---@param idx integer
---@return boolean
function LinkOutlet.is_socket_linked(idx) end

function LinkOutlet.update_link_outlet_labels() end

---@param lnk TowerNetworkLink
---@param socket_idx integer?  # Default = 0
function LinkOutlet.link_setup(lnk, socket_idx) end

function LinkOutlet.remove() end

function LinkOutlet.remove_local() end

---@return Object
function LinkOutlet.debug_monitor_callback() end
