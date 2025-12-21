---@meta _
-- Generated API for game version 0.9.1

---@class NavigationRegion3D : Node3D
---@field navigation_mesh NavigationMesh
---@field enabled boolean
---@field use_edge_connections boolean
---@field navigation_layers integer
---@field enter_cost number
---@field travel_cost number
local NavigationRegion3D = {}

---@return RID
function NavigationRegion3D.get_rid() end

---@param navigation_mesh NavigationMesh
function NavigationRegion3D.set_navigation_mesh(navigation_mesh) end

---@return NavigationMesh
function NavigationRegion3D.get_navigation_mesh() end

---@param enabled boolean
function NavigationRegion3D.set_enabled(enabled) end

---@return boolean
function NavigationRegion3D.is_enabled() end

---@param navigation_map RID
function NavigationRegion3D.set_navigation_map(navigation_map) end

---@return RID
function NavigationRegion3D.get_navigation_map() end

---@param enabled boolean
function NavigationRegion3D.set_use_edge_connections(enabled) end

---@return boolean
function NavigationRegion3D.get_use_edge_connections() end

---@param navigation_layers integer
function NavigationRegion3D.set_navigation_layers(navigation_layers) end

---@return integer
function NavigationRegion3D.get_navigation_layers() end

---@param layer_number integer
---@param value boolean
function NavigationRegion3D.set_navigation_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationRegion3D.get_navigation_layer_value(layer_number) end

---@return RID
function NavigationRegion3D.get_region_rid() end

---@param enter_cost number
function NavigationRegion3D.set_enter_cost(enter_cost) end

---@return number
function NavigationRegion3D.get_enter_cost() end

---@param travel_cost number
function NavigationRegion3D.set_travel_cost(travel_cost) end

---@return number
function NavigationRegion3D.get_travel_cost() end

---@param on_thread boolean?  # Default = true
function NavigationRegion3D.bake_navigation_mesh(on_thread) end

---@return boolean
function NavigationRegion3D.is_baking() end

---@return AABB
function NavigationRegion3D.get_bounds() end
