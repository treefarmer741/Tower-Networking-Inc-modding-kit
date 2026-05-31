---@meta _
-- Generated API for game version 0.10.11

---@class PowerOutlet : FixtureOutlet
---@field controller GraphController
---@field current_floor Location
---@field socket Socket
---@field floor_num integer
local PowerOutlet = {}

function PowerOutlet.remove() end

---@return Object
function PowerOutlet.debug_monitor_callback() end
