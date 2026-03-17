---@meta _
-- Generated API for game version 0.10.0

---@class Viewport3DUtils : Object
---@field MAX_RAY_DEFAULT number # Constant value: 1000.0
local Viewport3DUtils = {}

---@param vp Viewport
---@param w3d World3D
---@param mask Object?  # Default = 4294967295
---@param max_ray_units number?  # Default = 1000.0
---@return Object
function Viewport3DUtils.get_mouse_raycast_cd_with_collision_plane(vp, w3d, mask, max_ray_units) end

---@param vp Viewport
---@param plane_height number
---@param max_ray_units number?  # Default = 1000.0
---@return Object
function Viewport3DUtils.get_mouse_raycast_point_with_fixed_height_plane(vp, plane_height, max_ray_units) end
