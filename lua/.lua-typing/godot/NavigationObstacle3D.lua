---@meta _
-- Generated API for game version 0.9.1

---@class NavigationObstacle3D : Node3D
---@field radius number
---@field height number
---@field vertices PackedVector3Array
---@field affect_navigation_mesh boolean
---@field carve_navigation_mesh boolean
---@field avoidance_enabled boolean
---@field velocity Vector3
---@field avoidance_layers integer
---@field use_3d_avoidance boolean
local NavigationObstacle3D = {}

---@return RID
function NavigationObstacle3D.get_rid() end

---@param enabled boolean
function NavigationObstacle3D.set_avoidance_enabled(enabled) end

---@return boolean
function NavigationObstacle3D.get_avoidance_enabled() end

---@param navigation_map RID
function NavigationObstacle3D.set_navigation_map(navigation_map) end

---@return RID
function NavigationObstacle3D.get_navigation_map() end

---@param radius number
function NavigationObstacle3D.set_radius(radius) end

---@return number
function NavigationObstacle3D.get_radius() end

---@param height number
function NavigationObstacle3D.set_height(height) end

---@return number
function NavigationObstacle3D.get_height() end

---@param velocity Vector3
function NavigationObstacle3D.set_velocity(velocity) end

---@return Vector3
function NavigationObstacle3D.get_velocity() end

---@param vertices PackedVector3Array
function NavigationObstacle3D.set_vertices(vertices) end

---@return PackedVector3Array
function NavigationObstacle3D.get_vertices() end

---@param layers integer
function NavigationObstacle3D.set_avoidance_layers(layers) end

---@return integer
function NavigationObstacle3D.get_avoidance_layers() end

---@param layer_number integer
---@param value boolean
function NavigationObstacle3D.set_avoidance_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationObstacle3D.get_avoidance_layer_value(layer_number) end

---@param enabled boolean
function NavigationObstacle3D.set_use_3d_avoidance(enabled) end

---@return boolean
function NavigationObstacle3D.get_use_3d_avoidance() end

---@param enabled boolean
function NavigationObstacle3D.set_affect_navigation_mesh(enabled) end

---@return boolean
function NavigationObstacle3D.get_affect_navigation_mesh() end

---@param enabled boolean
function NavigationObstacle3D.set_carve_navigation_mesh(enabled) end

---@return boolean
function NavigationObstacle3D.get_carve_navigation_mesh() end
