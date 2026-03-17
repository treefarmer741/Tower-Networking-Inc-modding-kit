---@meta _
-- Generated API for game version 0.9.1

---@class RelxzdistMarkingCircle : MeshInstance3D
---@field MARKER_MAX_THICKNESS number # Constant value: 0.005
---@field RING_MIN_THINNESS number # Constant value: 0.001
---@field POINT_HIDE_MARGIN number # Constant value: 0.3
---@field default_line_width number
---@field default_line_color Color
---@field default_line_material BaseMaterial3D
---@field plane_color Color
---@field mesh_parent Node3D
---@field plane0 MeshInstance3D
---@field plane_radius number
local RelxzdistMarkingCircle = {}

---@param line_width number?  # Default = <null>
---@param line_color Color?  # Default = <null>
function RelxzdistMarkingCircle.mark_x_axis(line_width, line_color) end

---@param line_width number?  # Default = <null>
---@param line_color Color?  # Default = <null>
function RelxzdistMarkingCircle.mark_z_axis(line_width, line_color) end

---@param start Vector2
---@param end_ Vector2
---@param line_material_override BaseMaterial3D?  # Default = <null>
---@param width number?  # Default = <null>
---@param color Color?  # Default = <null>
function RelxzdistMarkingCircle.mark_2drel_line(start, end_, line_material_override, width, color) end

---@param start Vector3
---@param end_ Vector3
---@param line_material_override BaseMaterial3D?  # Default = <null>
---@param width number?  # Default = <null>
---@param color Color?  # Default = <null>
function RelxzdistMarkingCircle.mark_abs_line(start, end_, line_material_override, width, color) end

function RelxzdistMarkingCircle.clear() end

---@param point_id integer
---@param real_origin Vector3
---@param real_point Vector3
---@param real_maxdist number
function RelxzdistMarkingCircle.update_marked_point(point_id, real_origin, real_point, real_maxdist) end

---@param point_id integer
---@param real_origin Vector3
---@param real_point Vector3
---@param real_maxdist number
---@param point_node_override Node3D?  # Default = <null>
---@param point_radius number?  # Default = 0.01
---@param point_color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@return Node3D
function RelxzdistMarkingCircle.mark_point(point_id, real_origin, real_point, real_maxdist, point_node_override, point_radius, point_color) end

---@param ring_floatpos number
---@param ring_material_override BaseMaterial3D?  # Default = <null>
---@param ring_width number?  # Default = 0.005
---@param ring_color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@return MeshInstance3D
function RelxzdistMarkingCircle.mark_ring(ring_floatpos, ring_material_override, ring_width, ring_color) end

---@param wave_period number?  # Default = 0.3
---@param wave_fading boolean?  # Default = true
---@param ring_material_override BaseMaterial3D?  # Default = <null>
---@param ringf_method_cb (Callable|function)?  # Default = <null>
---@param ring_width number?  # Default = 0.005
---@param ring_color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
function RelxzdistMarkingCircle.play_ringwave_animation(wave_period, wave_fading, ring_material_override, ringf_method_cb, ring_width, ring_color) end
