---@meta _
-- Generated API for game version 0.10.0

---@class AStar3D : RefCounted
---@field neighbor_filter_enabled boolean
local AStar3D = {}

---@return integer
function AStar3D.get_available_point_id() end

---@param id integer
---@param position Vector3
---@param weight_scale number?  # Default = 1.0
function AStar3D.add_point(id, position, weight_scale) end

---@param id integer
---@return Vector3
function AStar3D.get_point_position(id) end

---@param id integer
---@param position Vector3
function AStar3D.set_point_position(id, position) end

---@param id integer
---@return number
function AStar3D.get_point_weight_scale(id) end

---@param id integer
---@param weight_scale number
function AStar3D.set_point_weight_scale(id, weight_scale) end

---@param id integer
function AStar3D.remove_point(id) end

---@param id integer
---@return boolean
function AStar3D.has_point(id) end

---@param id integer
---@return PackedInt64Array
function AStar3D.get_point_connections(id) end

---@return PackedInt64Array
function AStar3D.get_point_ids() end

---@param id integer
---@param disabled boolean?  # Default = true
function AStar3D.set_point_disabled(id, disabled) end

---@param id integer
---@return boolean
function AStar3D.is_point_disabled(id) end

---@param enabled boolean
function AStar3D.set_neighbor_filter_enabled(enabled) end

---@return boolean
function AStar3D.is_neighbor_filter_enabled() end

---@param id integer
---@param to_id integer
---@param bidirectional boolean?  # Default = true
function AStar3D.connect_points(id, to_id, bidirectional) end

---@param id integer
---@param to_id integer
---@param bidirectional boolean?  # Default = true
function AStar3D.disconnect_points(id, to_id, bidirectional) end

---@param id integer
---@param to_id integer
---@param bidirectional boolean?  # Default = true
---@return boolean
function AStar3D.are_points_connected(id, to_id, bidirectional) end

---@return integer
function AStar3D.get_point_count() end

---@return integer
function AStar3D.get_point_capacity() end

---@param num_nodes integer
function AStar3D.reserve_space(num_nodes) end

function AStar3D.clear() end

---@param to_position Vector3
---@param include_disabled boolean?  # Default = false
---@return integer
function AStar3D.get_closest_point(to_position, include_disabled) end

---@param to_position Vector3
---@return Vector3
function AStar3D.get_closest_position_in_segment(to_position) end

---@param from_id integer
---@param to_id integer
---@param allow_partial_path boolean?  # Default = false
---@return PackedVector3Array
function AStar3D.get_point_path(from_id, to_id, allow_partial_path) end

---@param from_id integer
---@param to_id integer
---@param allow_partial_path boolean?  # Default = false
---@return PackedInt64Array
function AStar3D.get_id_path(from_id, to_id, allow_partial_path) end
