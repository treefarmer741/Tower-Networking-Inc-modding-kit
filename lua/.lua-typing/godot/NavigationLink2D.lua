---@meta _
-- Generated API for game version 0.9.1

---@class NavigationLink2D : Node2D
---@field enabled boolean
---@field bidirectional boolean
---@field navigation_layers integer
---@field start_position Vector2
---@field end_position Vector2
---@field enter_cost number
---@field travel_cost number
local NavigationLink2D = {}

---@return RID
function NavigationLink2D.get_rid() end

---@param enabled boolean
function NavigationLink2D.set_enabled(enabled) end

---@return boolean
function NavigationLink2D.is_enabled() end

---@param navigation_map RID
function NavigationLink2D.set_navigation_map(navigation_map) end

---@return RID
function NavigationLink2D.get_navigation_map() end

---@param bidirectional boolean
function NavigationLink2D.set_bidirectional(bidirectional) end

---@return boolean
function NavigationLink2D.is_bidirectional() end

---@param navigation_layers integer
function NavigationLink2D.set_navigation_layers(navigation_layers) end

---@return integer
function NavigationLink2D.get_navigation_layers() end

---@param layer_number integer
---@param value boolean
function NavigationLink2D.set_navigation_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationLink2D.get_navigation_layer_value(layer_number) end

---@param position Vector2
function NavigationLink2D.set_start_position(position) end

---@return Vector2
function NavigationLink2D.get_start_position() end

---@param position Vector2
function NavigationLink2D.set_end_position(position) end

---@return Vector2
function NavigationLink2D.get_end_position() end

---@param position Vector2
function NavigationLink2D.set_global_start_position(position) end

---@return Vector2
function NavigationLink2D.get_global_start_position() end

---@param position Vector2
function NavigationLink2D.set_global_end_position(position) end

---@return Vector2
function NavigationLink2D.get_global_end_position() end

---@param enter_cost number
function NavigationLink2D.set_enter_cost(enter_cost) end

---@return number
function NavigationLink2D.get_enter_cost() end

---@param travel_cost number
function NavigationLink2D.set_travel_cost(travel_cost) end

---@return number
function NavigationLink2D.get_travel_cost() end
