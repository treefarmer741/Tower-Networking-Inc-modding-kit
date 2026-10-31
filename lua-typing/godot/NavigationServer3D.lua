---@meta _
-- Generated API for game version 0.10.0

---@class NavigationServer3D : Object
local NavigationServer3D = {}

---@return Array<RID>
function NavigationServer3D.get_maps() end

---@return RID
function NavigationServer3D.map_create() end

---@param map RID
---@param active boolean
function NavigationServer3D.map_set_active(map, active) end

---@param map RID
---@return boolean
function NavigationServer3D.map_is_active(map) end

---@param map RID
---@param up Vector3
function NavigationServer3D.map_set_up(map, up) end

---@param map RID
---@return Vector3
function NavigationServer3D.map_get_up(map) end

---@param map RID
---@param cell_size number
function NavigationServer3D.map_set_cell_size(map, cell_size) end

---@param map RID
---@return number
function NavigationServer3D.map_get_cell_size(map) end

---@param map RID
---@param cell_height number
function NavigationServer3D.map_set_cell_height(map, cell_height) end

---@param map RID
---@return number
function NavigationServer3D.map_get_cell_height(map) end

---@param map RID
---@param scale number
function NavigationServer3D.map_set_merge_rasterizer_cell_scale(map, scale) end

---@param map RID
---@return number
function NavigationServer3D.map_get_merge_rasterizer_cell_scale(map) end

---@param map RID
---@param enabled boolean
function NavigationServer3D.map_set_use_edge_connections(map, enabled) end

---@param map RID
---@return boolean
function NavigationServer3D.map_get_use_edge_connections(map) end

---@param map RID
---@param margin number
function NavigationServer3D.map_set_edge_connection_margin(map, margin) end

---@param map RID
---@return number
function NavigationServer3D.map_get_edge_connection_margin(map) end

---@param map RID
---@param radius number
function NavigationServer3D.map_set_link_connection_radius(map, radius) end

---@param map RID
---@return number
function NavigationServer3D.map_get_link_connection_radius(map) end

---@param map RID
---@param origin Vector3
---@param destination Vector3
---@param optimize boolean
---@param navigation_layers integer?  # Default = 1
---@return PackedVector3Array
function NavigationServer3D.map_get_path(map, origin, destination, optimize, navigation_layers) end

---@param map RID
---@param start Vector3
---@param end_ Vector3
---@param use_collision boolean?  # Default = false
---@return Vector3
function NavigationServer3D.map_get_closest_point_to_segment(map, start, end_, use_collision) end

---@param map RID
---@param to_point Vector3
---@return Vector3
function NavigationServer3D.map_get_closest_point(map, to_point) end

---@param map RID
---@param to_point Vector3
---@return Vector3
function NavigationServer3D.map_get_closest_point_normal(map, to_point) end

---@param map RID
---@param to_point Vector3
---@return RID
function NavigationServer3D.map_get_closest_point_owner(map, to_point) end

---@param map RID
---@return Array<RID>
function NavigationServer3D.map_get_links(map) end

---@param map RID
---@return Array<RID>
function NavigationServer3D.map_get_regions(map) end

---@param map RID
---@return Array<RID>
function NavigationServer3D.map_get_agents(map) end

---@param map RID
---@return Array<RID>
function NavigationServer3D.map_get_obstacles(map) end

---@param map RID
function NavigationServer3D.map_force_update(map) end

---@param map RID
---@return integer
function NavigationServer3D.map_get_iteration_id(map) end

---@param map RID
---@param enabled boolean
function NavigationServer3D.map_set_use_async_iterations(map, enabled) end

---@param map RID
---@return boolean
function NavigationServer3D.map_get_use_async_iterations(map) end

---@param map RID
---@param navigation_layers integer
---@param uniformly boolean
---@return Vector3
function NavigationServer3D.map_get_random_point(map, navigation_layers, uniformly) end

---@param parameters NavigationPathQueryParameters3D
---@param result NavigationPathQueryResult3D
---@param callback (Callable|function)?  # Default = null::null
function NavigationServer3D.query_path(parameters, result, callback) end

---@return RID
function NavigationServer3D.region_create() end

---@param region RID
---@return integer
function NavigationServer3D.region_get_iteration_id(region) end

---@param region RID
---@param enabled boolean
function NavigationServer3D.region_set_use_async_iterations(region, enabled) end

---@param region RID
---@return boolean
function NavigationServer3D.region_get_use_async_iterations(region) end

---@param region RID
---@param enabled boolean
function NavigationServer3D.region_set_enabled(region, enabled) end

---@param region RID
---@return boolean
function NavigationServer3D.region_get_enabled(region) end

---@param region RID
---@param enabled boolean
function NavigationServer3D.region_set_use_edge_connections(region, enabled) end

---@param region RID
---@return boolean
function NavigationServer3D.region_get_use_edge_connections(region) end

---@param region RID
---@param enter_cost number
function NavigationServer3D.region_set_enter_cost(region, enter_cost) end

---@param region RID
---@return number
function NavigationServer3D.region_get_enter_cost(region) end

---@param region RID
---@param travel_cost number
function NavigationServer3D.region_set_travel_cost(region, travel_cost) end

---@param region RID
---@return number
function NavigationServer3D.region_get_travel_cost(region) end

---@param region RID
---@param owner_id integer
function NavigationServer3D.region_set_owner_id(region, owner_id) end

---@param region RID
---@return integer
function NavigationServer3D.region_get_owner_id(region) end

---@param region RID
---@param point Vector3
---@return boolean
function NavigationServer3D.region_owns_point(region, point) end

---@param region RID
---@param map RID
function NavigationServer3D.region_set_map(region, map) end

---@param region RID
---@return RID
function NavigationServer3D.region_get_map(region) end

---@param region RID
---@param navigation_layers integer
function NavigationServer3D.region_set_navigation_layers(region, navigation_layers) end

---@param region RID
---@return integer
function NavigationServer3D.region_get_navigation_layers(region) end

---@param region RID
---@param transform Transform3D
function NavigationServer3D.region_set_transform(region, transform) end

---@param region RID
---@return Transform3D
function NavigationServer3D.region_get_transform(region) end

---@param region RID
---@param navigation_mesh NavigationMesh
function NavigationServer3D.region_set_navigation_mesh(region, navigation_mesh) end

---@param navigation_mesh NavigationMesh
---@param root_node Node
function NavigationServer3D.region_bake_navigation_mesh(navigation_mesh, root_node) end

---@param region RID
---@return integer
function NavigationServer3D.region_get_connections_count(region) end

---@param region RID
---@param connection integer
---@return Vector3
function NavigationServer3D.region_get_connection_pathway_start(region, connection) end

---@param region RID
---@param connection integer
---@return Vector3
function NavigationServer3D.region_get_connection_pathway_end(region, connection) end

---@param region RID
---@param start Vector3
---@param end_ Vector3
---@param use_collision boolean?  # Default = false
---@return Vector3
function NavigationServer3D.region_get_closest_point_to_segment(region, start, end_, use_collision) end

---@param region RID
---@param to_point Vector3
---@return Vector3
function NavigationServer3D.region_get_closest_point(region, to_point) end

---@param region RID
---@param to_point Vector3
---@return Vector3
function NavigationServer3D.region_get_closest_point_normal(region, to_point) end

---@param region RID
---@param navigation_layers integer
---@param uniformly boolean
---@return Vector3
function NavigationServer3D.region_get_random_point(region, navigation_layers, uniformly) end

---@param region RID
---@return AABB
function NavigationServer3D.region_get_bounds(region) end

---@return RID
function NavigationServer3D.link_create() end

---@param link RID
---@return integer
function NavigationServer3D.link_get_iteration_id(link) end

---@param link RID
---@param map RID
function NavigationServer3D.link_set_map(link, map) end

---@param link RID
---@return RID
function NavigationServer3D.link_get_map(link) end

---@param link RID
---@param enabled boolean
function NavigationServer3D.link_set_enabled(link, enabled) end

---@param link RID
---@return boolean
function NavigationServer3D.link_get_enabled(link) end

---@param link RID
---@param bidirectional boolean
function NavigationServer3D.link_set_bidirectional(link, bidirectional) end

---@param link RID
---@return boolean
function NavigationServer3D.link_is_bidirectional(link) end

---@param link RID
---@param navigation_layers integer
function NavigationServer3D.link_set_navigation_layers(link, navigation_layers) end

---@param link RID
---@return integer
function NavigationServer3D.link_get_navigation_layers(link) end

---@param link RID
---@param position Vector3
function NavigationServer3D.link_set_start_position(link, position) end

---@param link RID
---@return Vector3
function NavigationServer3D.link_get_start_position(link) end

---@param link RID
---@param position Vector3
function NavigationServer3D.link_set_end_position(link, position) end

---@param link RID
---@return Vector3
function NavigationServer3D.link_get_end_position(link) end

---@param link RID
---@param enter_cost number
function NavigationServer3D.link_set_enter_cost(link, enter_cost) end

---@param link RID
---@return number
function NavigationServer3D.link_get_enter_cost(link) end

---@param link RID
---@param travel_cost number
function NavigationServer3D.link_set_travel_cost(link, travel_cost) end

---@param link RID
---@return number
function NavigationServer3D.link_get_travel_cost(link) end

---@param link RID
---@param owner_id integer
function NavigationServer3D.link_set_owner_id(link, owner_id) end

---@param link RID
---@return integer
function NavigationServer3D.link_get_owner_id(link) end

---@return RID
function NavigationServer3D.agent_create() end

---@param agent RID
---@param enabled boolean
function NavigationServer3D.agent_set_avoidance_enabled(agent, enabled) end

---@param agent RID
---@return boolean
function NavigationServer3D.agent_get_avoidance_enabled(agent) end

---@param agent RID
---@param enabled boolean
function NavigationServer3D.agent_set_use_3d_avoidance(agent, enabled) end

---@param agent RID
---@return boolean
function NavigationServer3D.agent_get_use_3d_avoidance(agent) end

---@param agent RID
---@param map RID
function NavigationServer3D.agent_set_map(agent, map) end

---@param agent RID
---@return RID
function NavigationServer3D.agent_get_map(agent) end

---@param agent RID
---@param paused boolean
function NavigationServer3D.agent_set_paused(agent, paused) end

---@param agent RID
---@return boolean
function NavigationServer3D.agent_get_paused(agent) end

---@param agent RID
---@param distance number
function NavigationServer3D.agent_set_neighbor_distance(agent, distance) end

---@param agent RID
---@return number
function NavigationServer3D.agent_get_neighbor_distance(agent) end

---@param agent RID
---@param count integer
function NavigationServer3D.agent_set_max_neighbors(agent, count) end

---@param agent RID
---@return integer
function NavigationServer3D.agent_get_max_neighbors(agent) end

---@param agent RID
---@param time_horizon number
function NavigationServer3D.agent_set_time_horizon_agents(agent, time_horizon) end

---@param agent RID
---@return number
function NavigationServer3D.agent_get_time_horizon_agents(agent) end

---@param agent RID
---@param time_horizon number
function NavigationServer3D.agent_set_time_horizon_obstacles(agent, time_horizon) end

---@param agent RID
---@return number
function NavigationServer3D.agent_get_time_horizon_obstacles(agent) end

---@param agent RID
---@param radius number
function NavigationServer3D.agent_set_radius(agent, radius) end

---@param agent RID
---@return number
function NavigationServer3D.agent_get_radius(agent) end

---@param agent RID
---@param height number
function NavigationServer3D.agent_set_height(agent, height) end

---@param agent RID
---@return number
function NavigationServer3D.agent_get_height(agent) end

---@param agent RID
---@param max_speed number
function NavigationServer3D.agent_set_max_speed(agent, max_speed) end

---@param agent RID
---@return number
function NavigationServer3D.agent_get_max_speed(agent) end

---@param agent RID
---@param velocity Vector3
function NavigationServer3D.agent_set_velocity_forced(agent, velocity) end

---@param agent RID
---@param velocity Vector3
function NavigationServer3D.agent_set_velocity(agent, velocity) end

---@param agent RID
---@return Vector3
function NavigationServer3D.agent_get_velocity(agent) end

---@param agent RID
---@param position Vector3
function NavigationServer3D.agent_set_position(agent, position) end

---@param agent RID
---@return Vector3
function NavigationServer3D.agent_get_position(agent) end

---@param agent RID
---@return boolean
function NavigationServer3D.agent_is_map_changed(agent) end

---@param agent RID
---@param callback (Callable|function)
function NavigationServer3D.agent_set_avoidance_callback(agent, callback) end

---@param agent RID
---@return boolean
function NavigationServer3D.agent_has_avoidance_callback(agent) end

---@param agent RID
---@param layers integer
function NavigationServer3D.agent_set_avoidance_layers(agent, layers) end

---@param agent RID
---@return integer
function NavigationServer3D.agent_get_avoidance_layers(agent) end

---@param agent RID
---@param mask integer
function NavigationServer3D.agent_set_avoidance_mask(agent, mask) end

---@param agent RID
---@return integer
function NavigationServer3D.agent_get_avoidance_mask(agent) end

---@param agent RID
---@param priority number
function NavigationServer3D.agent_set_avoidance_priority(agent, priority) end

---@param agent RID
---@return number
function NavigationServer3D.agent_get_avoidance_priority(agent) end

---@return RID
function NavigationServer3D.obstacle_create() end

---@param obstacle RID
---@param enabled boolean
function NavigationServer3D.obstacle_set_avoidance_enabled(obstacle, enabled) end

---@param obstacle RID
---@return boolean
function NavigationServer3D.obstacle_get_avoidance_enabled(obstacle) end

---@param obstacle RID
---@param enabled boolean
function NavigationServer3D.obstacle_set_use_3d_avoidance(obstacle, enabled) end

---@param obstacle RID
---@return boolean
function NavigationServer3D.obstacle_get_use_3d_avoidance(obstacle) end

---@param obstacle RID
---@param map RID
function NavigationServer3D.obstacle_set_map(obstacle, map) end

---@param obstacle RID
---@return RID
function NavigationServer3D.obstacle_get_map(obstacle) end

---@param obstacle RID
---@param paused boolean
function NavigationServer3D.obstacle_set_paused(obstacle, paused) end

---@param obstacle RID
---@return boolean
function NavigationServer3D.obstacle_get_paused(obstacle) end

---@param obstacle RID
---@param radius number
function NavigationServer3D.obstacle_set_radius(obstacle, radius) end

---@param obstacle RID
---@return number
function NavigationServer3D.obstacle_get_radius(obstacle) end

---@param obstacle RID
---@param height number
function NavigationServer3D.obstacle_set_height(obstacle, height) end

---@param obstacle RID
---@return number
function NavigationServer3D.obstacle_get_height(obstacle) end

---@param obstacle RID
---@param velocity Vector3
function NavigationServer3D.obstacle_set_velocity(obstacle, velocity) end

---@param obstacle RID
---@return Vector3
function NavigationServer3D.obstacle_get_velocity(obstacle) end

---@param obstacle RID
---@param position Vector3
function NavigationServer3D.obstacle_set_position(obstacle, position) end

---@param obstacle RID
---@return Vector3
function NavigationServer3D.obstacle_get_position(obstacle) end

---@param obstacle RID
---@param vertices PackedVector3Array
function NavigationServer3D.obstacle_set_vertices(obstacle, vertices) end

---@param obstacle RID
---@return PackedVector3Array
function NavigationServer3D.obstacle_get_vertices(obstacle) end

---@param obstacle RID
---@param layers integer
function NavigationServer3D.obstacle_set_avoidance_layers(obstacle, layers) end

---@param obstacle RID
---@return integer
function NavigationServer3D.obstacle_get_avoidance_layers(obstacle) end

---@param navigation_mesh NavigationMesh
---@param source_geometry_data NavigationMeshSourceGeometryData3D
---@param root_node Node
---@param callback (Callable|function)?  # Default = null::null
function NavigationServer3D.parse_source_geometry_data(navigation_mesh, source_geometry_data, root_node, callback) end

---@param navigation_mesh NavigationMesh
---@param source_geometry_data NavigationMeshSourceGeometryData3D
---@param callback (Callable|function)?  # Default = null::null
function NavigationServer3D.bake_from_source_geometry_data(navigation_mesh, source_geometry_data, callback) end

---@param navigation_mesh NavigationMesh
---@param source_geometry_data NavigationMeshSourceGeometryData3D
---@param callback (Callable|function)?  # Default = null::null
function NavigationServer3D.bake_from_source_geometry_data_async(navigation_mesh, source_geometry_data, callback) end

---@param navigation_mesh NavigationMesh
---@return boolean
function NavigationServer3D.is_baking_navigation_mesh(navigation_mesh) end

---@return RID
function NavigationServer3D.source_geometry_parser_create() end

---@param parser RID
---@param callback (Callable|function)
function NavigationServer3D.source_geometry_parser_set_callback(parser, callback) end

---@param path PackedVector3Array
---@param epsilon number
---@return PackedVector3Array
function NavigationServer3D.simplify_path(path, epsilon) end

---@param rid RID
function NavigationServer3D.free_rid(rid) end

---@param active boolean
function NavigationServer3D.set_active(active) end

---@param enabled boolean
function NavigationServer3D.set_debug_enabled(enabled) end

---@return boolean
function NavigationServer3D.get_debug_enabled() end

---@param process_info NavigationServer3D.ProcessInfo
---@return integer
function NavigationServer3D.get_process_info(process_info) end
