---@meta _
-- Generated API for game version 0.9.1

---@class NavigationObstacle2D : Node2D
---@field radius number
---@field vertices PackedVector2Array
---@field affect_navigation_mesh boolean
---@field carve_navigation_mesh boolean
---@field avoidance_enabled boolean
---@field velocity Vector2
---@field avoidance_layers integer
local NavigationObstacle2D = {}

---@return RID
function NavigationObstacle2D.get_rid() end

---@param enabled boolean
function NavigationObstacle2D.set_avoidance_enabled(enabled) end

---@return boolean
function NavigationObstacle2D.get_avoidance_enabled() end

---@param navigation_map RID
function NavigationObstacle2D.set_navigation_map(navigation_map) end

---@return RID
function NavigationObstacle2D.get_navigation_map() end

---@param radius number
function NavigationObstacle2D.set_radius(radius) end

---@return number
function NavigationObstacle2D.get_radius() end

---@param velocity Vector2
function NavigationObstacle2D.set_velocity(velocity) end

---@return Vector2
function NavigationObstacle2D.get_velocity() end

---@param vertices PackedVector2Array
function NavigationObstacle2D.set_vertices(vertices) end

---@return PackedVector2Array
function NavigationObstacle2D.get_vertices() end

---@param layers integer
function NavigationObstacle2D.set_avoidance_layers(layers) end

---@return integer
function NavigationObstacle2D.get_avoidance_layers() end

---@param layer_number integer
---@param value boolean
function NavigationObstacle2D.set_avoidance_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationObstacle2D.get_avoidance_layer_value(layer_number) end

---@param enabled boolean
function NavigationObstacle2D.set_affect_navigation_mesh(enabled) end

---@return boolean
function NavigationObstacle2D.get_affect_navigation_mesh() end

---@param enabled boolean
function NavigationObstacle2D.set_carve_navigation_mesh(enabled) end

---@return boolean
function NavigationObstacle2D.get_carve_navigation_mesh() end
