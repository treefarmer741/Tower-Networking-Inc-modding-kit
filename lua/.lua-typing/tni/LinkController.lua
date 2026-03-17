---@meta _
-- Generated API for game version 0.10.0

---@class LinkController : Node
---@field COPPER_LINK_TYPEN string # Constant value: COPPER
---@field FIBER_LINK_TYPEN string # Constant value: FIBER
---@field link_scn PackedScene
---@field copper_link_sizings Array<any>
---@field fiber_link_sizings Array<any>
---@field links Array<TowerNetworkLink>
local LinkController = {}

---@param link_type LinkOutlet.LinkOutletType
---@return Array<LinkSizing>
function LinkController.get_sizings_by_type(link_type) end

---@param link_type LinkOutlet.LinkOutletType
---@param sizing_id integer
---@return LinkSizing
function LinkController.get_sizing_by_type_and_id(link_type, sizing_id) end

---@param lo1 Object
---@param lo2 LinkOutlet
---@param sizing_id integer
---@return integer
function LinkController.get_setup_quote(lo1, lo2, sizing_id) end

---@param lo1 Object
---@param lo2 LinkOutlet
---@param sizing_id integer
---@return integer
function LinkController.get_daily_quote(lo1, lo2, sizing_id) end

---@param payment_breakdown table<any,any>
---@param fee_mult number?  # Default = 1.0
---@param itemized boolean?  # Default = true
function LinkController.populate_bill_breakdown(payment_breakdown, fee_mult, itemized) end

---@param lo1_np string
---@param lo2_np string
---@param sizing_id integer
function LinkController.create_link(lo1_np, lo2_np, sizing_id) end
