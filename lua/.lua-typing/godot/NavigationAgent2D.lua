---@meta _
-- Generated API for game version 0.9.1

---@class NavigationAgent2D : Node
---@field target_position Vector2
---@field path_desired_distance number
---@field target_desired_distance number
---@field path_max_distance number
---@field navigation_layers integer
---@field pathfinding_algorithm integer
---@field path_postprocessing integer
---@field path_metadata_flags integer
---@field simplify_path boolean
---@field simplify_epsilon number
---@field path_return_max_length number
---@field path_return_max_radius number
---@field path_search_max_polygons integer
---@field path_search_max_distance number
---@field avoidance_enabled boolean
---@field velocity Vector2
---@field radius number
---@field neighbor_distance number
---@field max_neighbors integer
---@field time_horizon_agents number
---@field time_horizon_obstacles number
---@field max_speed number
---@field avoidance_layers integer
---@field avoidance_mask integer
---@field avoidance_priority number
---@field debug_enabled boolean
---@field debug_use_custom boolean
---@field debug_path_custom_color Color
---@field debug_path_custom_point_size number
---@field debug_path_custom_line_width number
local NavigationAgent2D = {}

---@return RID
function NavigationAgent2D.get_rid() end

---@param enabled boolean
function NavigationAgent2D.set_avoidance_enabled(enabled) end

---@return boolean
function NavigationAgent2D.get_avoidance_enabled() end

---@param desired_distance number
function NavigationAgent2D.set_path_desired_distance(desired_distance) end

---@return number
function NavigationAgent2D.get_path_desired_distance() end

---@param desired_distance number
function NavigationAgent2D.set_target_desired_distance(desired_distance) end

---@return number
function NavigationAgent2D.get_target_desired_distance() end

---@param radius number
function NavigationAgent2D.set_radius(radius) end

---@return number
function NavigationAgent2D.get_radius() end

---@param neighbor_distance number
function NavigationAgent2D.set_neighbor_distance(neighbor_distance) end

---@return number
function NavigationAgent2D.get_neighbor_distance() end

---@param max_neighbors integer
function NavigationAgent2D.set_max_neighbors(max_neighbors) end

---@return integer
function NavigationAgent2D.get_max_neighbors() end

---@param time_horizon number
function NavigationAgent2D.set_time_horizon_agents(time_horizon) end

---@return number
function NavigationAgent2D.get_time_horizon_agents() end

---@param time_horizon number
function NavigationAgent2D.set_time_horizon_obstacles(time_horizon) end

---@return number
function NavigationAgent2D.get_time_horizon_obstacles() end

---@param max_speed number
function NavigationAgent2D.set_max_speed(max_speed) end

---@return number
function NavigationAgent2D.get_max_speed() end

---@param max_speed number
function NavigationAgent2D.set_path_max_distance(max_speed) end

---@return number
function NavigationAgent2D.get_path_max_distance() end

---@param navigation_layers integer
function NavigationAgent2D.set_navigation_layers(navigation_layers) end

---@return integer
function NavigationAgent2D.get_navigation_layers() end

---@param layer_number integer
---@param value boolean
function NavigationAgent2D.set_navigation_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationAgent2D.get_navigation_layer_value(layer_number) end

---@param pathfinding_algorithm NavigationPathQueryParameters2D.PathfindingAlgorithm
function NavigationAgent2D.set_pathfinding_algorithm(pathfinding_algorithm) end

---@return NavigationPathQueryParameters2D.PathfindingAlgorithm
function NavigationAgent2D.get_pathfinding_algorithm() end

---@param path_postprocessing NavigationPathQueryParameters2D.PathPostProcessing
function NavigationAgent2D.set_path_postprocessing(path_postprocessing) end

---@return NavigationPathQueryParameters2D.PathPostProcessing
function NavigationAgent2D.get_path_postprocessing() end

---@param flags NavigationPathQueryParameters2D.PathMetadataFlags
function NavigationAgent2D.set_path_metadata_flags(flags) end

---@return NavigationPathQueryParameters2D.PathMetadataFlags
function NavigationAgent2D.get_path_metadata_flags() end

---@param navigation_map RID
function NavigationAgent2D.set_navigation_map(navigation_map) end

---@return RID
function NavigationAgent2D.get_navigation_map() end

---@param position Vector2
function NavigationAgent2D.set_target_position(position) end

---@return Vector2
function NavigationAgent2D.get_target_position() end

---@param enabled boolean
function NavigationAgent2D.set_simplify_path(enabled) end

---@return boolean
function NavigationAgent2D.get_simplify_path() end

---@param epsilon number
function NavigationAgent2D.set_simplify_epsilon(epsilon) end

---@return number
function NavigationAgent2D.get_simplify_epsilon() end

---@param length number
function NavigationAgent2D.set_path_return_max_length(length) end

---@return number
function NavigationAgent2D.get_path_return_max_length() end

---@param radius number
function NavigationAgent2D.set_path_return_max_radius(radius) end

---@return number
function NavigationAgent2D.get_path_return_max_radius() end

---@param max_polygons integer
function NavigationAgent2D.set_path_search_max_polygons(max_polygons) end

---@return integer
function NavigationAgent2D.get_path_search_max_polygons() end

---@param distance number
function NavigationAgent2D.set_path_search_max_distance(distance) end

---@return number
function NavigationAgent2D.get_path_search_max_distance() end

---@return number
function NavigationAgent2D.get_path_length() end

---@return Vector2
function NavigationAgent2D.get_next_path_position() end

---@param velocity Vector2
function NavigationAgent2D.set_velocity_forced(velocity) end

---@param velocity Vector2
function NavigationAgent2D.set_velocity(velocity) end

---@return Vector2
function NavigationAgent2D.get_velocity() end

---@return number
function NavigationAgent2D.distance_to_target() end

---@return NavigationPathQueryResult2D
function NavigationAgent2D.get_current_navigation_result() end

---@return PackedVector2Array
function NavigationAgent2D.get_current_navigation_path() end

---@return integer
function NavigationAgent2D.get_current_navigation_path_index() end

---@return boolean
function NavigationAgent2D.is_target_reached() end

---@return boolean
function NavigationAgent2D.is_target_reachable() end

---@return boolean
function NavigationAgent2D.is_navigation_finished() end

---@return Vector2
function NavigationAgent2D.get_final_position() end

---@param layers integer
function NavigationAgent2D.set_avoidance_layers(layers) end

---@return integer
function NavigationAgent2D.get_avoidance_layers() end

---@param mask integer
function NavigationAgent2D.set_avoidance_mask(mask) end

---@return integer
function NavigationAgent2D.get_avoidance_mask() end

---@param layer_number integer
---@param value boolean
function NavigationAgent2D.set_avoidance_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationAgent2D.get_avoidance_layer_value(layer_number) end

---@param mask_number integer
---@param value boolean
function NavigationAgent2D.set_avoidance_mask_value(mask_number, value) end

---@param mask_number integer
---@return boolean
function NavigationAgent2D.get_avoidance_mask_value(mask_number) end

---@param priority number
function NavigationAgent2D.set_avoidance_priority(priority) end

---@return number
function NavigationAgent2D.get_avoidance_priority() end

---@param enabled boolean
function NavigationAgent2D.set_debug_enabled(enabled) end

---@return boolean
function NavigationAgent2D.get_debug_enabled() end

---@param enabled boolean
function NavigationAgent2D.set_debug_use_custom(enabled) end

---@return boolean
function NavigationAgent2D.get_debug_use_custom() end

---@param color Color
function NavigationAgent2D.set_debug_path_custom_color(color) end

---@return Color
function NavigationAgent2D.get_debug_path_custom_color() end

---@param point_size number
function NavigationAgent2D.set_debug_path_custom_point_size(point_size) end

---@return number
function NavigationAgent2D.get_debug_path_custom_point_size() end

---@param line_width number
function NavigationAgent2D.set_debug_path_custom_line_width(line_width) end

---@return number
function NavigationAgent2D.get_debug_path_custom_line_width() end
