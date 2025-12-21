---@meta _
-- Generated API for game version 0.9.1

---@class Node3D : Node
---@field transform Transform3D
---@field global_transform Transform3D
---@field position Vector3
---@field rotation Vector3
---@field rotation_degrees Vector3
---@field quaternion Quaternion
---@field basis Basis
---@field scale Vector3
---@field rotation_edit_mode integer
---@field rotation_order integer
---@field top_level boolean
---@field global_position Vector3
---@field global_basis Basis
---@field global_rotation Vector3
---@field global_rotation_degrees Vector3
---@field visible boolean
---@field visibility_parent string
local Node3D = {}

---@param local_ Transform3D
function Node3D.set_transform(local_) end

---@return Transform3D
function Node3D.get_transform() end

---@param position Vector3
function Node3D.set_position(position) end

---@return Vector3
function Node3D.get_position() end

---@param euler_radians Vector3
function Node3D.set_rotation(euler_radians) end

---@return Vector3
function Node3D.get_rotation() end

---@param euler_degrees Vector3
function Node3D.set_rotation_degrees(euler_degrees) end

---@return Vector3
function Node3D.get_rotation_degrees() end

---@param order EulerOrder
function Node3D.set_rotation_order(order) end

---@return EulerOrder
function Node3D.get_rotation_order() end

---@param edit_mode Node3D.RotationEditMode
function Node3D.set_rotation_edit_mode(edit_mode) end

---@return Node3D.RotationEditMode
function Node3D.get_rotation_edit_mode() end

---@param scale Vector3
function Node3D.set_scale(scale) end

---@return Vector3
function Node3D.get_scale() end

---@param quaternion Quaternion
function Node3D.set_quaternion(quaternion) end

---@return Quaternion
function Node3D.get_quaternion() end

---@param basis Basis
function Node3D.set_basis(basis) end

---@return Basis
function Node3D.get_basis() end

---@param global Transform3D
function Node3D.set_global_transform(global) end

---@return Transform3D
function Node3D.get_global_transform() end

---@return Transform3D
function Node3D.get_global_transform_interpolated() end

---@param position Vector3
function Node3D.set_global_position(position) end

---@return Vector3
function Node3D.get_global_position() end

---@param basis Basis
function Node3D.set_global_basis(basis) end

---@return Basis
function Node3D.get_global_basis() end

---@param euler_radians Vector3
function Node3D.set_global_rotation(euler_radians) end

---@return Vector3
function Node3D.get_global_rotation() end

---@param euler_degrees Vector3
function Node3D.set_global_rotation_degrees(euler_degrees) end

---@return Vector3
function Node3D.get_global_rotation_degrees() end

---@return Node3D
function Node3D.get_parent_node_3d() end

---@param enabled boolean
function Node3D.set_ignore_transform_notification(enabled) end

---@param enable boolean
function Node3D.set_as_top_level(enable) end

---@return boolean
function Node3D.is_set_as_top_level() end

---@param disable boolean
function Node3D.set_disable_scale(disable) end

---@return boolean
function Node3D.is_scale_disabled() end

---@return World3D
function Node3D.get_world_3d() end

function Node3D.force_update_transform() end

---@param path string
function Node3D.set_visibility_parent(path) end

---@return string
function Node3D.get_visibility_parent() end

function Node3D.update_gizmos() end

---@param gizmo Node3DGizmo
function Node3D.add_gizmo(gizmo) end

---@return Array<Node3DGizmo>
function Node3D.get_gizmos() end

function Node3D.clear_gizmos() end

---@param gizmo Node3DGizmo
---@param id integer
---@param transform Transform3D
function Node3D.set_subgizmo_selection(gizmo, id, transform) end

function Node3D.clear_subgizmo_selection() end

---@param visible boolean
function Node3D.set_visible(visible) end

---@return boolean
function Node3D.is_visible() end

---@return boolean
function Node3D.is_visible_in_tree() end

function Node3D.show() end

function Node3D.hide() end

---@param enable boolean
function Node3D.set_notify_local_transform(enable) end

---@return boolean
function Node3D.is_local_transform_notification_enabled() end

---@param enable boolean
function Node3D.set_notify_transform(enable) end

---@return boolean
function Node3D.is_transform_notification_enabled() end

---@param axis Vector3
---@param angle number
function Node3D.rotate(axis, angle) end

---@param axis Vector3
---@param angle number
function Node3D.global_rotate(axis, angle) end

---@param scale Vector3
function Node3D.global_scale(scale) end

---@param offset Vector3
function Node3D.global_translate(offset) end

---@param axis Vector3
---@param angle number
function Node3D.rotate_object_local(axis, angle) end

---@param scale Vector3
function Node3D.scale_object_local(scale) end

---@param offset Vector3
function Node3D.translate_object_local(offset) end

---@param angle number
function Node3D.rotate_x(angle) end

---@param angle number
function Node3D.rotate_y(angle) end

---@param angle number
function Node3D.rotate_z(angle) end

---@param offset Vector3
function Node3D.translate(offset) end

function Node3D.orthonormalize() end

function Node3D.set_identity() end

---@param target Vector3
---@param up Vector3?  # Default = (0.0, 1.0, 0.0)
---@param use_model_front boolean?  # Default = false
function Node3D.look_at(target, up, use_model_front) end

---@param position Vector3
---@param target Vector3
---@param up Vector3?  # Default = (0.0, 1.0, 0.0)
---@param use_model_front boolean?  # Default = false
function Node3D.look_at_from_position(position, target, up, use_model_front) end

---@param global_point Vector3
---@return Vector3
function Node3D.to_local(global_point) end

---@param local_point Vector3
---@return Vector3
function Node3D.to_global(local_point) end
