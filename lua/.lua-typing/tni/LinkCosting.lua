---@meta _
-- Generated API for game version 0.10.0

---@class LinkCosting : Resource
---@field setup_fixed integer
---@field setup_per_floor integer
---@field setup_per_distance_samefloor number
---@field daily_fixed integer
---@field daily_per_floor integer
---@field daily_per_distance_samefloor number
local LinkCosting = {}

---@param lo_1 LinkOutlet
---@param lo_2 LinkOutlet
---@return integer
function LinkCosting.get_setup_cost(lo_1, lo_2) end

---@param lo_1 LinkOutlet
---@param lo_2 LinkOutlet
---@return integer
function LinkCosting.get_daily_cost(lo_1, lo_2) end
