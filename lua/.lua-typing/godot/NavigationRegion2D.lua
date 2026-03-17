---@meta _
-- Generated API for game version 0.10.0

---@class NavigationRegion2D : Node2D
---@field navigation_polygon NavigationPolygon
---@field enabled boolean
---@field use_edge_connections boolean
---@field navigation_layers integer
---@field enter_cost number
---@field travel_cost number
local NavigationRegion2D = {}

---@return RID
function NavigationRegion2D.get_rid() end

---@param navigation_polygon NavigationPolygon
function NavigationRegion2D.set_navigation_polygon(navigation_polygon) end

---@return NavigationPolygon
function NavigationRegion2D.get_navigation_polygon() end

---@param enabled boolean
function NavigationRegion2D.set_enabled(enabled) end

---@return boolean
function NavigationRegion2D.is_enabled() end

---@param navigation_map RID
function NavigationRegion2D.set_navigation_map(navigation_map) end

---@return RID
function NavigationRegion2D.get_navigation_map() end

---@param enabled boolean
function NavigationRegion2D.set_use_edge_connections(enabled) end

---@return boolean
function NavigationRegion2D.get_use_edge_connections() end

---@param navigation_layers integer
function NavigationRegion2D.set_navigation_layers(navigation_layers) end

---@return integer
function NavigationRegion2D.get_navigation_layers() end

---@param layer_number integer
---@param value boolean
function NavigationRegion2D.set_navigation_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationRegion2D.get_navigation_layer_value(layer_number) end

---@return RID
function NavigationRegion2D.get_region_rid() end

---@param enter_cost number
function NavigationRegion2D.set_enter_cost(enter_cost) end

---@return number
function NavigationRegion2D.get_enter_cost() end

---@param travel_cost number
function NavigationRegion2D.set_travel_cost(travel_cost) end

---@return number
function NavigationRegion2D.get_travel_cost() end

---@param on_thread boolean?  # Default = true
function NavigationRegion2D.bake_navigation_polygon(on_thread) end

---@return boolean
function NavigationRegion2D.is_baking() end

---@return Rect2
function NavigationRegion2D.get_bounds() end
