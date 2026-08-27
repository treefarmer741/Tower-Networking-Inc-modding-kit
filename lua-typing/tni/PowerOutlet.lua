---@meta _
-- Generated API for game version 0.12.1

---@class PowerOutlet : FixtureOutlet
---@field controller GraphController
---@field current_floor Location
---@field socket Socket
---@field sockets Array<Socket>
---@field floor_num integer
local PowerOutlet = {}

function PowerOutlet.remove() end

function PowerOutlet.remove_local() end

---@return Object
function PowerOutlet.debug_monitor_callback() end
