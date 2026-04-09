---@meta _
-- Generated API for game version 0.10.11

---@class TrailDrawer : Node3D
---@field enabled boolean
---@field coloring_mode string
---@field trail_color Color
---@field sampling_period number
---@field tracking_node_group_name string
---@field max_points_per_trail integer
---@field meshinst Object
---@field sampling_timer Timer
---@field trails_mesh ImmediateMesh
---@field points_by_tracked_nodes table<any,any>
---@field enable_on_ready boolean
---@field is_enabled boolean
local TrailDrawer = {}

function TrailDrawer.disable() end

function TrailDrawer.enable() end

function TrailDrawer.clear_all_trails() end

---@param n Node3D
function TrailDrawer.clear_trail(n) end
