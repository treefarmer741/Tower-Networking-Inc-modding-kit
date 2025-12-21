---@meta _
-- Generated API for game version 0.9.1

---@class NavigationPolygon : Resource
---@field vertices PackedVector2Array
---@field polygons Array<any>
---@field outlines Array<any>
---@field sample_partition_type integer
---@field parsed_geometry_type integer
---@field parsed_collision_mask integer
---@field source_geometry_mode integer
---@field source_geometry_group_name string
---@field cell_size number
---@field border_size number
---@field agent_radius number
---@field baking_rect Rect2
---@field baking_rect_offset Vector2
local NavigationPolygon = {}

---@param vertices PackedVector2Array
function NavigationPolygon.set_vertices(vertices) end

---@return PackedVector2Array
function NavigationPolygon.get_vertices() end

---@param polygon PackedInt32Array
function NavigationPolygon.add_polygon(polygon) end

---@return integer
function NavigationPolygon.get_polygon_count() end

---@param idx integer
---@return PackedInt32Array
function NavigationPolygon.get_polygon(idx) end

function NavigationPolygon.clear_polygons() end

---@return NavigationMesh
function NavigationPolygon.get_navigation_mesh() end

---@param outline PackedVector2Array
function NavigationPolygon.add_outline(outline) end

---@param outline PackedVector2Array
---@param index integer
function NavigationPolygon.add_outline_at_index(outline, index) end

---@return integer
function NavigationPolygon.get_outline_count() end

---@param idx integer
---@param outline PackedVector2Array
function NavigationPolygon.set_outline(idx, outline) end

---@param idx integer
---@return PackedVector2Array
function NavigationPolygon.get_outline(idx) end

---@param idx integer
function NavigationPolygon.remove_outline(idx) end

function NavigationPolygon.clear_outlines() end

function NavigationPolygon.make_polygons_from_outlines() end

---@param cell_size number
function NavigationPolygon.set_cell_size(cell_size) end

---@return number
function NavigationPolygon.get_cell_size() end

---@param border_size number
function NavigationPolygon.set_border_size(border_size) end

---@return number
function NavigationPolygon.get_border_size() end

---@param sample_partition_type NavigationPolygon.SamplePartitionType
function NavigationPolygon.set_sample_partition_type(sample_partition_type) end

---@return NavigationPolygon.SamplePartitionType
function NavigationPolygon.get_sample_partition_type() end

---@param geometry_type NavigationPolygon.ParsedGeometryType
function NavigationPolygon.set_parsed_geometry_type(geometry_type) end

---@return NavigationPolygon.ParsedGeometryType
function NavigationPolygon.get_parsed_geometry_type() end

---@param mask integer
function NavigationPolygon.set_parsed_collision_mask(mask) end

---@return integer
function NavigationPolygon.get_parsed_collision_mask() end

---@param layer_number integer
---@param value boolean
function NavigationPolygon.set_parsed_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function NavigationPolygon.get_parsed_collision_mask_value(layer_number) end

---@param geometry_mode NavigationPolygon.SourceGeometryMode
function NavigationPolygon.set_source_geometry_mode(geometry_mode) end

---@return NavigationPolygon.SourceGeometryMode
function NavigationPolygon.get_source_geometry_mode() end

---@param group_name string
function NavigationPolygon.set_source_geometry_group_name(group_name) end

---@return string
function NavigationPolygon.get_source_geometry_group_name() end

---@param agent_radius number
function NavigationPolygon.set_agent_radius(agent_radius) end

---@return number
function NavigationPolygon.get_agent_radius() end

---@param rect Rect2
function NavigationPolygon.set_baking_rect(rect) end

---@return Rect2
function NavigationPolygon.get_baking_rect() end

---@param rect_offset Vector2
function NavigationPolygon.set_baking_rect_offset(rect_offset) end

---@return Vector2
function NavigationPolygon.get_baking_rect_offset() end

function NavigationPolygon.clear() end
