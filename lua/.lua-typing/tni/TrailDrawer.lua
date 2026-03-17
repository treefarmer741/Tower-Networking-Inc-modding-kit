---@meta _
-- Generated API for game version 0.9.1

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
local TrailDrawer = {}

function TrailDrawer.clear_all_trails() end

---@param n Node3D
function TrailDrawer.clear_trail(n) end
