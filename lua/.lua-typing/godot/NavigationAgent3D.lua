---@meta _
-- Generated API for game version 0.9.1

---@class NavigationAgent3D : Node
---@field target_position Vector3
---@field path_desired_distance number
---@field target_desired_distance number
---@field path_height_offset number
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
---@field velocity Vector3
---@field height number
---@field radius number
---@field neighbor_distance number
---@field max_neighbors integer
---@field time_horizon_agents number
---@field time_horizon_obstacles number
---@field max_speed number
---@field use_3d_avoidance boolean
---@field keep_y_velocity boolean
---@field avoidance_layers integer
---@field avoidance_mask integer
---@field avoidance_priority number
---@field debug_enabled boolean
---@field debug_use_custom boolean
---@field debug_path_custom_color Color
---@field debug_path_custom_point_size number
local NavigationAgent3D = {}

---@return RID
function NavigationAgent3D.get_rid() end

---@param enabled boolean
function NavigationAgent3D.set_avoidance_enabled(enabled) end

---@return boolean
function NavigationAgent3D.get_avoidance_enabled() end

---@param desired_distance number
function NavigationAgent3D.set_path_desired_distance(desired_distance) end

---@return number
function NavigationAgent3D.get_path_desired_distance() end

---@param desired_distance number
function NavigationAgent3D.set_target_desired_distance(desired_distance) end

---@return number
function NavigationAgent3D.get_target_desired_distance() end

---@param radius number
function NavigationAgent3D.set_radius(radius) end

---@return number
function NavigationAgent3D.get_radius() end

---@param height number
function NavigationAgent3D.set_height(height) end

---@return number
function NavigationAgent3D.get_height() end

---@param path_height_offset number
function NavigationAgent3D.set_path_height_offset(path_height_offset) end

---@return number
function NavigationAgent3D.get_path_height_offset() end

---@param enabled boolean
function NavigationAgent3D.set_use_3d_avoidance(enabled) end

---@return boolean
function NavigationAgent3D.get_use_3d_avoidance() end

---@param enabled boolean
function NavigationAgent3D.set_keep_y_velocity(enabled) end

---@return boolean
function NavigationAgent3D.get_keep_y_velocity() end

---@param neighbor_distance number
function NavigationAgent3D.set_neighbor_distance(neighbor_distance) end

---@return number
function NavigationAgent3D.get_neighbor_distance() end

---@param max_neighbors integer
function NavigationAgent3D.set_max_neighbors(max_neighbors) end

---@return integer
function NavigationAgent3D.get_max_neighbors() end

---@param time_horizon number
function NavigationAgent3D.set_time_horizon_agents(time_horizon) end

---@return number
function NavigationAgent3D.get_time_horizon_agents() end

---@param time_horizon number
function NavigationAgent3D.set_time_horizon_obstacles(time_horizon) end

---@return number
function NavigationAgent3D.get_time_horizon_obstacles() end

---@param max_speed number
function NavigationAgent3D.set_max_speed(max_speed) end

---@return number
function NavigationAgent3D.get_max_speed() end

---@param max_speed number
function NavigationAgent3D.set_path_max_distance(max_speed) end

---@return number
function NavigationAgent3D.get_path_max_distance() end

---@param navigation_layers integer
function NavigationAgent3D.set_navigation_layers(navigation_layers) end

---@return integer
function NavigationAgent3D.get_navigation_layers() end

---@param layer_number integer
---@param value boolean
function NavigationAgent3D.set_navigation_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationAgent3D.get_navigation_layer_value(layer_number) end

---@param pathfinding_algorithm NavigationPathQueryParameters3D.PathfindingAlgorithm
function NavigationAgent3D.set_pathfinding_algorithm(pathfinding_algorithm) end

---@return NavigationPathQueryParameters3D.PathfindingAlgorithm
function NavigationAgent3D.get_pathfinding_algorithm() end

---@param path_postprocessing NavigationPathQueryParameters3D.PathPostProcessing
function NavigationAgent3D.set_path_postprocessing(path_postprocessing) end

---@return NavigationPathQueryParameters3D.PathPostProcessing
function NavigationAgent3D.get_path_postprocessing() end

---@param flags NavigationPathQueryParameters3D.PathMetadataFlags
function NavigationAgent3D.set_path_metadata_flags(flags) end

---@return NavigationPathQueryParameters3D.PathMetadataFlags
function NavigationAgent3D.get_path_metadata_flags() end

---@param navigation_map RID
function NavigationAgent3D.set_navigation_map(navigation_map) end

---@return RID
function NavigationAgent3D.get_navigation_map() end

---@param position Vector3
function NavigationAgent3D.set_target_position(position) end

---@return Vector3
function NavigationAgent3D.get_target_position() end

---@param enabled boolean
function NavigationAgent3D.set_simplify_path(enabled) end

---@return boolean
function NavigationAgent3D.get_simplify_path() end

---@param epsilon number
function NavigationAgent3D.set_simplify_epsilon(epsilon) end

---@return number
function NavigationAgent3D.get_simplify_epsilon() end

---@param length number
function NavigationAgent3D.set_path_return_max_length(length) end

---@return number
function NavigationAgent3D.get_path_return_max_length() end

---@param radius number
function NavigationAgent3D.set_path_return_max_radius(radius) end

---@return number
function NavigationAgent3D.get_path_return_max_radius() end

---@param max_polygons integer
function NavigationAgent3D.set_path_search_max_polygons(max_polygons) end

---@return integer
function NavigationAgent3D.get_path_search_max_polygons() end

---@param distance number
function NavigationAgent3D.set_path_search_max_distance(distance) end

---@return number
function NavigationAgent3D.get_path_search_max_distance() end

---@return number
function NavigationAgent3D.get_path_length() end

---@return Vector3
function NavigationAgent3D.get_next_path_position() end

---@param velocity Vector3
function NavigationAgent3D.set_velocity_forced(velocity) end

---@param velocity Vector3
function NavigationAgent3D.set_velocity(velocity) end

---@return Vector3
function NavigationAgent3D.get_velocity() end

---@return number
function NavigationAgent3D.distance_to_target() end

---@return NavigationPathQueryResult3D
function NavigationAgent3D.get_current_navigation_result() end

---@return PackedVector3Array
function NavigationAgent3D.get_current_navigation_path() end

---@return integer
function NavigationAgent3D.get_current_navigation_path_index() end

---@return boolean
function NavigationAgent3D.is_target_reached() end

---@return boolean
function NavigationAgent3D.is_target_reachable() end

---@return boolean
function NavigationAgent3D.is_navigation_finished() end

---@return Vector3
function NavigationAgent3D.get_final_position() end

---@param layers integer
function NavigationAgent3D.set_avoidance_layers(layers) end

---@return integer
function NavigationAgent3D.get_avoidance_layers() end

---@param mask integer
function NavigationAgent3D.set_avoidance_mask(mask) end

---@return integer
function NavigationAgent3D.get_avoidance_mask() end

---@param layer_number integer
---@param value boolean
function NavigationAgent3D.set_avoidance_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationAgent3D.get_avoidance_layer_value(layer_number) end

---@param mask_number integer
---@param value boolean
function NavigationAgent3D.set_avoidance_mask_value(mask_number, value) end

---@param mask_number integer
---@return boolean
function NavigationAgent3D.get_avoidance_mask_value(mask_number) end

---@param priority number
function NavigationAgent3D.set_avoidance_priority(priority) end

---@return number
function NavigationAgent3D.get_avoidance_priority() end

---@param enabled boolean
function NavigationAgent3D.set_debug_enabled(enabled) end

---@return boolean
function NavigationAgent3D.get_debug_enabled() end

---@param enabled boolean
function NavigationAgent3D.set_debug_use_custom(enabled) end

---@return boolean
function NavigationAgent3D.get_debug_use_custom() end

---@param color Color
function NavigationAgent3D.set_debug_path_custom_color(color) end

---@return Color
function NavigationAgent3D.get_debug_path_custom_color() end

---@param point_size number
function NavigationAgent3D.set_debug_path_custom_point_size(point_size) end

---@return number
function NavigationAgent3D.get_debug_path_custom_point_size() end
