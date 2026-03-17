---@meta _
-- Generated API for game version 0.10.0

---@class LinkOutlet : Area2D
---@field link_type LinkOutlet.LinkOutletType
---@field link_np string
---@field tower_link TowerNetworkLink
---@field serial_num string
---@field linked boolean
---@field floor_num integer
---@field socket Socket
local LinkOutlet = {}
---@enum LinkOutlet.LinkOutletType
LinkOutlet.LinkOutletType = {
	["COPPER"] = 0,
	["FIBER"] = 1,
}

---@param lo LinkOutlet
function LinkOutlet.get_link_type_string(lo) end

function LinkOutlet.update_link_outlet_labels() end

---@param lnk TowerNetworkLink
function LinkOutlet.link_setup(lnk) end

function LinkOutlet.remove() end

---@return Object
function LinkOutlet.debug_monitor_callback() end
