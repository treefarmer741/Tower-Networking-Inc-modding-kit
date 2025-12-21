---@meta _
-- Generated API for game version 0.9.1

---@class SpringBoneSimulator3D : SkeletonModifier3D
---@field external_force Vector3
---@field setting_count Settings,settings/
local SpringBoneSimulator3D = {}

---@param index integer
---@param bone_name string
function SpringBoneSimulator3D.set_root_bone_name(index, bone_name) end

---@param index integer
---@return string
function SpringBoneSimulator3D.get_root_bone_name(index) end

---@param index integer
---@param bone integer
function SpringBoneSimulator3D.set_root_bone(index, bone) end

---@param index integer
---@return integer
function SpringBoneSimulator3D.get_root_bone(index) end

---@param index integer
---@param bone_name string
function SpringBoneSimulator3D.set_end_bone_name(index, bone_name) end

---@param index integer
---@return string
function SpringBoneSimulator3D.get_end_bone_name(index) end

---@param index integer
---@param bone integer
function SpringBoneSimulator3D.set_end_bone(index, bone) end

---@param index integer
---@return integer
function SpringBoneSimulator3D.get_end_bone(index) end

---@param index integer
---@param enabled boolean
function SpringBoneSimulator3D.set_extend_end_bone(index, enabled) end

---@param index integer
---@return boolean
function SpringBoneSimulator3D.is_end_bone_extended(index) end

---@param index integer
---@param bone_direction SpringBoneSimulator3D.BoneDirection
function SpringBoneSimulator3D.set_end_bone_direction(index, bone_direction) end

---@param index integer
---@return SpringBoneSimulator3D.BoneDirection
function SpringBoneSimulator3D.get_end_bone_direction(index) end

---@param index integer
---@param length number
function SpringBoneSimulator3D.set_end_bone_length(index, length) end

---@param index integer
---@return number
function SpringBoneSimulator3D.get_end_bone_length(index) end

---@param index integer
---@param center_from SpringBoneSimulator3D.CenterFrom
function SpringBoneSimulator3D.set_center_from(index, center_from) end

---@param index integer
---@return SpringBoneSimulator3D.CenterFrom
function SpringBoneSimulator3D.get_center_from(index) end

---@param index integer
---@param node_path string
function SpringBoneSimulator3D.set_center_node(index, node_path) end

---@param index integer
---@return string
function SpringBoneSimulator3D.get_center_node(index) end

---@param index integer
---@param bone_name string
function SpringBoneSimulator3D.set_center_bone_name(index, bone_name) end

---@param index integer
---@return string
function SpringBoneSimulator3D.get_center_bone_name(index) end

---@param index integer
---@param bone integer
function SpringBoneSimulator3D.set_center_bone(index, bone) end

---@param index integer
---@return integer
function SpringBoneSimulator3D.get_center_bone(index) end

---@param index integer
---@param radius number
function SpringBoneSimulator3D.set_radius(index, radius) end

---@param index integer
---@return number
function SpringBoneSimulator3D.get_radius(index) end

---@param index integer
---@param axis SpringBoneSimulator3D.RotationAxis
function SpringBoneSimulator3D.set_rotation_axis(index, axis) end

---@param index integer
---@return SpringBoneSimulator3D.RotationAxis
function SpringBoneSimulator3D.get_rotation_axis(index) end

---@param index integer
---@param vector Vector3
function SpringBoneSimulator3D.set_rotation_axis_vector(index, vector) end

---@param index integer
---@return Vector3
function SpringBoneSimulator3D.get_rotation_axis_vector(index) end

---@param index integer
---@param curve Curve
function SpringBoneSimulator3D.set_radius_damping_curve(index, curve) end

---@param index integer
---@return Curve
function SpringBoneSimulator3D.get_radius_damping_curve(index) end

---@param index integer
---@param stiffness number
function SpringBoneSimulator3D.set_stiffness(index, stiffness) end

---@param index integer
---@return number
function SpringBoneSimulator3D.get_stiffness(index) end

---@param index integer
---@param curve Curve
function SpringBoneSimulator3D.set_stiffness_damping_curve(index, curve) end

---@param index integer
---@return Curve
function SpringBoneSimulator3D.get_stiffness_damping_curve(index) end

---@param index integer
---@param drag number
function SpringBoneSimulator3D.set_drag(index, drag) end

---@param index integer
---@return number
function SpringBoneSimulator3D.get_drag(index) end

---@param index integer
---@param curve Curve
function SpringBoneSimulator3D.set_drag_damping_curve(index, curve) end

---@param index integer
---@return Curve
function SpringBoneSimulator3D.get_drag_damping_curve(index) end

---@param index integer
---@param gravity number
function SpringBoneSimulator3D.set_gravity(index, gravity) end

---@param index integer
---@return number
function SpringBoneSimulator3D.get_gravity(index) end

---@param index integer
---@param curve Curve
function SpringBoneSimulator3D.set_gravity_damping_curve(index, curve) end

---@param index integer
---@return Curve
function SpringBoneSimulator3D.get_gravity_damping_curve(index) end

---@param index integer
---@param gravity_direction Vector3
function SpringBoneSimulator3D.set_gravity_direction(index, gravity_direction) end

---@param index integer
---@return Vector3
function SpringBoneSimulator3D.get_gravity_direction(index) end

---@param count integer
function SpringBoneSimulator3D.set_setting_count(count) end

---@return integer
function SpringBoneSimulator3D.get_setting_count() end

function SpringBoneSimulator3D.clear_settings() end

---@param index integer
---@param enabled boolean
function SpringBoneSimulator3D.set_individual_config(index, enabled) end

---@param index integer
---@return boolean
function SpringBoneSimulator3D.is_config_individual(index) end

---@param index integer
---@param joint integer
---@return string
function SpringBoneSimulator3D.get_joint_bone_name(index, joint) end

---@param index integer
---@param joint integer
---@return integer
function SpringBoneSimulator3D.get_joint_bone(index, joint) end

---@param index integer
---@param joint integer
---@param axis SpringBoneSimulator3D.RotationAxis
function SpringBoneSimulator3D.set_joint_rotation_axis(index, joint, axis) end

---@param index integer
---@param joint integer
---@return SpringBoneSimulator3D.RotationAxis
function SpringBoneSimulator3D.get_joint_rotation_axis(index, joint) end

---@param index integer
---@param joint integer
---@param vector Vector3
function SpringBoneSimulator3D.set_joint_rotation_axis_vector(index, joint, vector) end

---@param index integer
---@param joint integer
---@return Vector3
function SpringBoneSimulator3D.get_joint_rotation_axis_vector(index, joint) end

---@param index integer
---@param joint integer
---@param radius number
function SpringBoneSimulator3D.set_joint_radius(index, joint, radius) end

---@param index integer
---@param joint integer
---@return number
function SpringBoneSimulator3D.get_joint_radius(index, joint) end

---@param index integer
---@param joint integer
---@param stiffness number
function SpringBoneSimulator3D.set_joint_stiffness(index, joint, stiffness) end

---@param index integer
---@param joint integer
---@return number
function SpringBoneSimulator3D.get_joint_stiffness(index, joint) end

---@param index integer
---@param joint integer
---@param drag number
function SpringBoneSimulator3D.set_joint_drag(index, joint, drag) end

---@param index integer
---@param joint integer
---@return number
function SpringBoneSimulator3D.get_joint_drag(index, joint) end

---@param index integer
---@param joint integer
---@param gravity number
function SpringBoneSimulator3D.set_joint_gravity(index, joint, gravity) end

---@param index integer
---@param joint integer
---@return number
function SpringBoneSimulator3D.get_joint_gravity(index, joint) end

---@param index integer
---@param joint integer
---@param gravity_direction Vector3
function SpringBoneSimulator3D.set_joint_gravity_direction(index, joint, gravity_direction) end

---@param index integer
---@param joint integer
---@return Vector3
function SpringBoneSimulator3D.get_joint_gravity_direction(index, joint) end

---@param index integer
---@return integer
function SpringBoneSimulator3D.get_joint_count(index) end

---@param index integer
---@param enabled boolean
function SpringBoneSimulator3D.set_enable_all_child_collisions(index, enabled) end

---@param index integer
---@return boolean
function SpringBoneSimulator3D.are_all_child_collisions_enabled(index) end

---@param index integer
---@param collision integer
---@param node_path string
function SpringBoneSimulator3D.set_exclude_collision_path(index, collision, node_path) end

---@param index integer
---@param collision integer
---@return string
function SpringBoneSimulator3D.get_exclude_collision_path(index, collision) end

---@param index integer
---@param count integer
function SpringBoneSimulator3D.set_exclude_collision_count(index, count) end

---@param index integer
---@return integer
function SpringBoneSimulator3D.get_exclude_collision_count(index) end

---@param index integer
function SpringBoneSimulator3D.clear_exclude_collisions(index) end

---@param index integer
---@param collision integer
---@param node_path string
function SpringBoneSimulator3D.set_collision_path(index, collision, node_path) end

---@param index integer
---@param collision integer
---@return string
function SpringBoneSimulator3D.get_collision_path(index, collision) end

---@param index integer
---@param count integer
function SpringBoneSimulator3D.set_collision_count(index, count) end

---@param index integer
---@return integer
function SpringBoneSimulator3D.get_collision_count(index) end

---@param index integer
function SpringBoneSimulator3D.clear_collisions(index) end

---@param force Vector3
function SpringBoneSimulator3D.set_external_force(force) end

---@return Vector3
function SpringBoneSimulator3D.get_external_force() end

function SpringBoneSimulator3D.reset() end
