---@meta _
-- Generated API for game version 0.10.0

---@class NavigationMesh : Resource
---@field vertices PackedVector3Array
---@field polygons Array<any>
---@field sample_partition_type integer
---@field geometry_parsed_geometry_type integer
---@field geometry_collision_mask integer
---@field geometry_source_geometry_mode integer
---@field geometry_source_group_name string
---@field cell_size number
---@field cell_height number
---@field border_size number
---@field agent_height number
---@field agent_radius number
---@field agent_max_climb number
---@field agent_max_slope number
---@field region_min_size number
---@field region_merge_size number
---@field edge_max_length number
---@field edge_max_error number
---@field vertices_per_polygon number
---@field detail_sample_distance number
---@field detail_sample_max_error number
---@field filter_low_hanging_obstacles boolean
---@field filter_ledge_spans boolean
---@field filter_walkable_low_height_spans boolean
---@field filter_baking_aabb AABB
---@field filter_baking_aabb_offset Vector3
local NavigationMesh = {}

---@param sample_partition_type NavigationMesh.SamplePartitionType
function NavigationMesh.set_sample_partition_type(sample_partition_type) end

---@return NavigationMesh.SamplePartitionType
function NavigationMesh.get_sample_partition_type() end

---@param geometry_type NavigationMesh.ParsedGeometryType
function NavigationMesh.set_parsed_geometry_type(geometry_type) end

---@return NavigationMesh.ParsedGeometryType
function NavigationMesh.get_parsed_geometry_type() end

---@param mask integer
function NavigationMesh.set_collision_mask(mask) end

---@return integer
function NavigationMesh.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function NavigationMesh.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationMesh.get_collision_mask_value(layer_number) end

---@param mask NavigationMesh.SourceGeometryMode
function NavigationMesh.set_source_geometry_mode(mask) end

---@return NavigationMesh.SourceGeometryMode
function NavigationMesh.get_source_geometry_mode() end

---@param mask string
function NavigationMesh.set_source_group_name(mask) end

---@return string
function NavigationMesh.get_source_group_name() end

---@param cell_size number
function NavigationMesh.set_cell_size(cell_size) end

---@return number
function NavigationMesh.get_cell_size() end

---@param cell_height number
function NavigationMesh.set_cell_height(cell_height) end

---@return number
function NavigationMesh.get_cell_height() end

---@param border_size number
function NavigationMesh.set_border_size(border_size) end

---@return number
function NavigationMesh.get_border_size() end

---@param agent_height number
function NavigationMesh.set_agent_height(agent_height) end

---@return number
function NavigationMesh.get_agent_height() end

---@param agent_radius number
function NavigationMesh.set_agent_radius(agent_radius) end

---@return number
function NavigationMesh.get_agent_radius() end

---@param agent_max_climb number
function NavigationMesh.set_agent_max_climb(agent_max_climb) end

---@return number
function NavigationMesh.get_agent_max_climb() end

---@param agent_max_slope number
function NavigationMesh.set_agent_max_slope(agent_max_slope) end

---@return number
function NavigationMesh.get_agent_max_slope() end

---@param region_min_size number
function NavigationMesh.set_region_min_size(region_min_size) end

---@return number
function NavigationMesh.get_region_min_size() end

---@param region_merge_size number
function NavigationMesh.set_region_merge_size(region_merge_size) end

---@return number
function NavigationMesh.get_region_merge_size() end

---@param edge_max_length number
function NavigationMesh.set_edge_max_length(edge_max_length) end

---@return number
function NavigationMesh.get_edge_max_length() end

---@param edge_max_error number
function NavigationMesh.set_edge_max_error(edge_max_error) end

---@return number
function NavigationMesh.get_edge_max_error() end

---@param vertices_per_polygon number
function NavigationMesh.set_vertices_per_polygon(vertices_per_polygon) end

---@return number
function NavigationMesh.get_vertices_per_polygon() end

---@param detail_sample_dist number
function NavigationMesh.set_detail_sample_distance(detail_sample_dist) end

---@return number
function NavigationMesh.get_detail_sample_distance() end

---@param detail_sample_max_error number
function NavigationMesh.set_detail_sample_max_error(detail_sample_max_error) end

---@return number
function NavigationMesh.get_detail_sample_max_error() end

---@param filter_low_hanging_obstacles boolean
function NavigationMesh.set_filter_low_hanging_obstacles(filter_low_hanging_obstacles) end

---@return boolean
function NavigationMesh.get_filter_low_hanging_obstacles() end

---@param filter_ledge_spans boolean
function NavigationMesh.set_filter_ledge_spans(filter_ledge_spans) end

---@return boolean
function NavigationMesh.get_filter_ledge_spans() end

---@param filter_walkable_low_height_spans boolean
function NavigationMesh.set_filter_walkable_low_height_spans(filter_walkable_low_height_spans) end

---@return boolean
function NavigationMesh.get_filter_walkable_low_height_spans() end

---@param baking_aabb AABB
function NavigationMesh.set_filter_baking_aabb(baking_aabb) end

---@return AABB
function NavigationMesh.get_filter_baking_aabb() end

---@param baking_aabb_offset Vector3
function NavigationMesh.set_filter_baking_aabb_offset(baking_aabb_offset) end

---@return Vector3
function NavigationMesh.get_filter_baking_aabb_offset() end

---@param vertices PackedVector3Array
function NavigationMesh.set_vertices(vertices) end

---@return PackedVector3Array
function NavigationMesh.get_vertices() end

---@param polygon PackedInt32Array
function NavigationMesh.add_polygon(polygon) end

---@return integer
function NavigationMesh.get_polygon_count() end

---@param idx integer
---@return PackedInt32Array
function NavigationMesh.get_polygon(idx) end

function NavigationMesh.clear_polygons() end

---@param mesh Mesh
function NavigationMesh.create_from_mesh(mesh) end

function NavigationMesh.clear() end
