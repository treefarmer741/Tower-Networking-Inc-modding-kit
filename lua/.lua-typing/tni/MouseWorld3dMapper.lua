---@meta _
-- Generated API for game version 0.9.1

---@class MouseWorld3dMapper : Node3D
---@field MAX_RAY_DEFAULT number # Constant value: 1000.0
---@field input_type string
---@field input_disabled boolean
---@field visual_enabled boolean
---@field visual_color Color
---@field visual_length number
---@field raycast_mask integer
---@field ignored_groups Array<any>
---@field previous_click table<any,any>
local MouseWorld3dMapper = {}

function MouseWorld3dMapper.clear_prev_click_contexts() end

---@param event InputEvent
function MouseWorld3dMapper.handle_input(event) end

---@param gm GridMap
---@param collipos Vector3
---@return Vector3
function MouseWorld3dMapper.get_adjusted_gridmap_position(gm, collipos) end
