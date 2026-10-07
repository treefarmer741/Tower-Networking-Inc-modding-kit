---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsServer3D : Object
local PhysicsServer3D = {}

---@return RID
function PhysicsServer3D.world_boundary_shape_create() end

---@return RID
function PhysicsServer3D.separation_ray_shape_create() end

---@return RID
function PhysicsServer3D.sphere_shape_create() end

---@return RID
function PhysicsServer3D.box_shape_create() end

---@return RID
function PhysicsServer3D.capsule_shape_create() end

---@return RID
function PhysicsServer3D.cylinder_shape_create() end

---@return RID
function PhysicsServer3D.convex_polygon_shape_create() end

---@return RID
function PhysicsServer3D.concave_polygon_shape_create() end

---@return RID
function PhysicsServer3D.heightmap_shape_create() end

---@return RID
function PhysicsServer3D.custom_shape_create() end

---@param shape RID
---@param data Object
function PhysicsServer3D.shape_set_data(shape, data) end

---@param shape RID
---@param margin number
function PhysicsServer3D.shape_set_margin(shape, margin) end

---@param shape RID
---@return PhysicsServer3D.ShapeType
function PhysicsServer3D.shape_get_type(shape) end

---@param shape RID
---@return Object
function PhysicsServer3D.shape_get_data(shape) end

---@param shape RID
---@return number
function PhysicsServer3D.shape_get_margin(shape) end

---@return RID
function PhysicsServer3D.space_create() end

---@param space RID
---@param active boolean
function PhysicsServer3D.space_set_active(space, active) end

---@param space RID
---@return boolean
function PhysicsServer3D.space_is_active(space) end

---@param space RID
---@param param PhysicsServer3D.SpaceParameter
---@param value number
function PhysicsServer3D.space_set_param(space, param, value) end

---@param space RID
---@param param PhysicsServer3D.SpaceParameter
---@return number
function PhysicsServer3D.space_get_param(space, param) end

---@param space RID
---@return PhysicsDirectSpaceState3D
function PhysicsServer3D.space_get_direct_state(space) end

---@return RID
function PhysicsServer3D.area_create() end

---@param area RID
---@param space RID
function PhysicsServer3D.area_set_space(area, space) end

---@param area RID
---@return RID
function PhysicsServer3D.area_get_space(area) end

---@param area RID
---@param shape RID
---@param transform Transform3D?  # Default = [X: (1.0, 0.0, 0.0), Y: (0.0, 1.0, 0.0), Z: (0.0, 0.0, 1.0), O: (0.0, 0.0, 0.0)]
---@param disabled boolean?  # Default = false
function PhysicsServer3D.area_add_shape(area, shape, transform, disabled) end

---@param area RID
---@param shape_idx integer
---@param shape RID
function PhysicsServer3D.area_set_shape(area, shape_idx, shape) end

---@param area RID
---@param shape_idx integer
---@param transform Transform3D
function PhysicsServer3D.area_set_shape_transform(area, shape_idx, transform) end

---@param area RID
---@param shape_idx integer
---@param disabled boolean
function PhysicsServer3D.area_set_shape_disabled(area, shape_idx, disabled) end

---@param area RID
---@return integer
function PhysicsServer3D.area_get_shape_count(area) end

---@param area RID
---@param shape_idx integer
---@return RID
function PhysicsServer3D.area_get_shape(area, shape_idx) end

---@param area RID
---@param shape_idx integer
---@return Transform3D
function PhysicsServer3D.area_get_shape_transform(area, shape_idx) end

---@param area RID
---@param shape_idx integer
function PhysicsServer3D.area_remove_shape(area, shape_idx) end

---@param area RID
function PhysicsServer3D.area_clear_shapes(area) end

---@param area RID
---@param layer integer
function PhysicsServer3D.area_set_collision_layer(area, layer) end

---@param area RID
---@return integer
function PhysicsServer3D.area_get_collision_layer(area) end

---@param area RID
---@param mask integer
function PhysicsServer3D.area_set_collision_mask(area, mask) end

---@param area RID
---@return integer
function PhysicsServer3D.area_get_collision_mask(area) end

---@param area RID
---@param param PhysicsServer3D.AreaParameter
---@param value Object
function PhysicsServer3D.area_set_param(area, param, value) end

---@param area RID
---@param transform Transform3D
function PhysicsServer3D.area_set_transform(area, transform) end

---@param area RID
---@param param PhysicsServer3D.AreaParameter
---@return Object
function PhysicsServer3D.area_get_param(area, param) end

---@param area RID
---@return Transform3D
function PhysicsServer3D.area_get_transform(area) end

---@param area RID
---@param id integer
function PhysicsServer3D.area_attach_object_instance_id(area, id) end

---@param area RID
---@return integer
function PhysicsServer3D.area_get_object_instance_id(area) end

---@param area RID
---@param callback (Callable|function)
function PhysicsServer3D.area_set_monitor_callback(area, callback) end

---@param area RID
---@param callback (Callable|function)
function PhysicsServer3D.area_set_area_monitor_callback(area, callback) end

---@param area RID
---@param monitorable boolean
function PhysicsServer3D.area_set_monitorable(area, monitorable) end

---@param area RID
---@param enable boolean
function PhysicsServer3D.area_set_ray_pickable(area, enable) end

---@return RID
function PhysicsServer3D.body_create() end

---@param body RID
---@param space RID
function PhysicsServer3D.body_set_space(body, space) end

---@param body RID
---@return RID
function PhysicsServer3D.body_get_space(body) end

---@param body RID
---@param mode PhysicsServer3D.BodyMode
function PhysicsServer3D.body_set_mode(body, mode) end

---@param body RID
---@return PhysicsServer3D.BodyMode
function PhysicsServer3D.body_get_mode(body) end

---@param body RID
---@param layer integer
function PhysicsServer3D.body_set_collision_layer(body, layer) end

---@param body RID
---@return integer
function PhysicsServer3D.body_get_collision_layer(body) end

---@param body RID
---@param mask integer
function PhysicsServer3D.body_set_collision_mask(body, mask) end

---@param body RID
---@return integer
function PhysicsServer3D.body_get_collision_mask(body) end

---@param body RID
---@param priority number
function PhysicsServer3D.body_set_collision_priority(body, priority) end

---@param body RID
---@return number
function PhysicsServer3D.body_get_collision_priority(body) end

---@param body RID
---@param shape RID
---@param transform Transform3D?  # Default = [X: (1.0, 0.0, 0.0), Y: (0.0, 1.0, 0.0), Z: (0.0, 0.0, 1.0), O: (0.0, 0.0, 0.0)]
---@param disabled boolean?  # Default = false
function PhysicsServer3D.body_add_shape(body, shape, transform, disabled) end

---@param body RID
---@param shape_idx integer
---@param shape RID
function PhysicsServer3D.body_set_shape(body, shape_idx, shape) end

---@param body RID
---@param shape_idx integer
---@param transform Transform3D
function PhysicsServer3D.body_set_shape_transform(body, shape_idx, transform) end

---@param body RID
---@param shape_idx integer
---@param disabled boolean
function PhysicsServer3D.body_set_shape_disabled(body, shape_idx, disabled) end

---@param body RID
---@return integer
function PhysicsServer3D.body_get_shape_count(body) end

---@param body RID
---@param shape_idx integer
---@return RID
function PhysicsServer3D.body_get_shape(body, shape_idx) end

---@param body RID
---@param shape_idx integer
---@return Transform3D
function PhysicsServer3D.body_get_shape_transform(body, shape_idx) end

---@param body RID
---@param shape_idx integer
function PhysicsServer3D.body_remove_shape(body, shape_idx) end

---@param body RID
function PhysicsServer3D.body_clear_shapes(body) end

---@param body RID
---@param id integer
function PhysicsServer3D.body_attach_object_instance_id(body, id) end

---@param body RID
---@return integer
function PhysicsServer3D.body_get_object_instance_id(body) end

---@param body RID
---@param enable boolean
function PhysicsServer3D.body_set_enable_continuous_collision_detection(body, enable) end

---@param body RID
---@return boolean
function PhysicsServer3D.body_is_continuous_collision_detection_enabled(body) end

---@param body RID
---@param param PhysicsServer3D.BodyParameter
---@param value Object
function PhysicsServer3D.body_set_param(body, param, value) end

---@param body RID
---@param param PhysicsServer3D.BodyParameter
---@return Object
function PhysicsServer3D.body_get_param(body, param) end

---@param body RID
function PhysicsServer3D.body_reset_mass_properties(body) end

---@param body RID
---@param state PhysicsServer3D.BodyState
---@param value Object
function PhysicsServer3D.body_set_state(body, state, value) end

---@param body RID
---@param state PhysicsServer3D.BodyState
---@return Object
function PhysicsServer3D.body_get_state(body, state) end

---@param body RID
---@param impulse Vector3
function PhysicsServer3D.body_apply_central_impulse(body, impulse) end

---@param body RID
---@param impulse Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsServer3D.body_apply_impulse(body, impulse, position) end

---@param body RID
---@param impulse Vector3
function PhysicsServer3D.body_apply_torque_impulse(body, impulse) end

---@param body RID
---@param force Vector3
function PhysicsServer3D.body_apply_central_force(body, force) end

---@param body RID
---@param force Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsServer3D.body_apply_force(body, force, position) end

---@param body RID
---@param torque Vector3
function PhysicsServer3D.body_apply_torque(body, torque) end

---@param body RID
---@param force Vector3
function PhysicsServer3D.body_add_constant_central_force(body, force) end

---@param body RID
---@param force Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsServer3D.body_add_constant_force(body, force, position) end

---@param body RID
---@param torque Vector3
function PhysicsServer3D.body_add_constant_torque(body, torque) end

---@param body RID
---@param force Vector3
function PhysicsServer3D.body_set_constant_force(body, force) end

---@param body RID
---@return Vector3
function PhysicsServer3D.body_get_constant_force(body) end

---@param body RID
---@param torque Vector3
function PhysicsServer3D.body_set_constant_torque(body, torque) end

---@param body RID
---@return Vector3
function PhysicsServer3D.body_get_constant_torque(body) end

---@param body RID
---@param axis_velocity Vector3
function PhysicsServer3D.body_set_axis_velocity(body, axis_velocity) end

---@param body RID
---@param axis PhysicsServer3D.BodyAxis
---@param lock boolean
function PhysicsServer3D.body_set_axis_lock(body, axis, lock) end

---@param body RID
---@param axis PhysicsServer3D.BodyAxis
---@return boolean
function PhysicsServer3D.body_is_axis_locked(body, axis) end

---@param body RID
---@param excepted_body RID
function PhysicsServer3D.body_add_collision_exception(body, excepted_body) end

---@param body RID
---@param excepted_body RID
function PhysicsServer3D.body_remove_collision_exception(body, excepted_body) end

---@param body RID
---@param amount integer
function PhysicsServer3D.body_set_max_contacts_reported(body, amount) end

---@param body RID
---@return integer
function PhysicsServer3D.body_get_max_contacts_reported(body) end

---@param body RID
---@param enable boolean
function PhysicsServer3D.body_set_omit_force_integration(body, enable) end

---@param body RID
---@return boolean
function PhysicsServer3D.body_is_omitting_force_integration(body) end

---@param body RID
---@param callable (Callable|function)
function PhysicsServer3D.body_set_state_sync_callback(body, callable) end

---@param body RID
---@param callable (Callable|function)
---@param userdata Object?  # Default = <null>
function PhysicsServer3D.body_set_force_integration_callback(body, callable, userdata) end

---@param body RID
---@param enable boolean
function PhysicsServer3D.body_set_ray_pickable(body, enable) end

---@param body RID
---@param parameters PhysicsTestMotionParameters3D
---@param result PhysicsTestMotionResult3D?  # Default = <null>
---@return boolean
function PhysicsServer3D.body_test_motion(body, parameters, result) end

---@param body RID
---@return PhysicsDirectBodyState3D
function PhysicsServer3D.body_get_direct_state(body) end

---@return RID
function PhysicsServer3D.soft_body_create() end

---@param body RID
---@param rendering_server_handler PhysicsServer3DRenderingServerHandler
function PhysicsServer3D.soft_body_update_rendering_server(body, rendering_server_handler) end

---@param body RID
---@param space RID
function PhysicsServer3D.soft_body_set_space(body, space) end

---@param body RID
---@return RID
function PhysicsServer3D.soft_body_get_space(body) end

---@param body RID
---@param mesh RID
function PhysicsServer3D.soft_body_set_mesh(body, mesh) end

---@param body RID
---@return AABB
function PhysicsServer3D.soft_body_get_bounds(body) end

---@param body RID
---@param layer integer
function PhysicsServer3D.soft_body_set_collision_layer(body, layer) end

---@param body RID
---@return integer
function PhysicsServer3D.soft_body_get_collision_layer(body) end

---@param body RID
---@param mask integer
function PhysicsServer3D.soft_body_set_collision_mask(body, mask) end

---@param body RID
---@return integer
function PhysicsServer3D.soft_body_get_collision_mask(body) end

---@param body RID
---@param body_b RID
function PhysicsServer3D.soft_body_add_collision_exception(body, body_b) end

---@param body RID
---@param body_b RID
function PhysicsServer3D.soft_body_remove_collision_exception(body, body_b) end

---@param body RID
---@param state PhysicsServer3D.BodyState
---@param variant Object
function PhysicsServer3D.soft_body_set_state(body, state, variant) end

---@param body RID
---@param state PhysicsServer3D.BodyState
---@return Object
function PhysicsServer3D.soft_body_get_state(body, state) end

---@param body RID
---@param transform Transform3D
function PhysicsServer3D.soft_body_set_transform(body, transform) end

---@param body RID
---@param enable boolean
function PhysicsServer3D.soft_body_set_ray_pickable(body, enable) end

---@param body RID
---@param simulation_precision integer
function PhysicsServer3D.soft_body_set_simulation_precision(body, simulation_precision) end

---@param body RID
---@return integer
function PhysicsServer3D.soft_body_get_simulation_precision(body) end

---@param body RID
---@param total_mass number
function PhysicsServer3D.soft_body_set_total_mass(body, total_mass) end

---@param body RID
---@return number
function PhysicsServer3D.soft_body_get_total_mass(body) end

---@param body RID
---@param stiffness number
function PhysicsServer3D.soft_body_set_linear_stiffness(body, stiffness) end

---@param body RID
---@return number
function PhysicsServer3D.soft_body_get_linear_stiffness(body) end

---@param body RID
---@param shrinking_factor number
function PhysicsServer3D.soft_body_set_shrinking_factor(body, shrinking_factor) end

---@param body RID
---@return number
function PhysicsServer3D.soft_body_get_shrinking_factor(body) end

---@param body RID
---@param pressure_coefficient number
function PhysicsServer3D.soft_body_set_pressure_coefficient(body, pressure_coefficient) end

---@param body RID
---@return number
function PhysicsServer3D.soft_body_get_pressure_coefficient(body) end

---@param body RID
---@param damping_coefficient number
function PhysicsServer3D.soft_body_set_damping_coefficient(body, damping_coefficient) end

---@param body RID
---@return number
function PhysicsServer3D.soft_body_get_damping_coefficient(body) end

---@param body RID
---@param drag_coefficient number
function PhysicsServer3D.soft_body_set_drag_coefficient(body, drag_coefficient) end

---@param body RID
---@return number
function PhysicsServer3D.soft_body_get_drag_coefficient(body) end

---@param body RID
---@param point_index integer
---@param global_position Vector3
function PhysicsServer3D.soft_body_move_point(body, point_index, global_position) end

---@param body RID
---@param point_index integer
---@return Vector3
function PhysicsServer3D.soft_body_get_point_global_position(body, point_index) end

---@param body RID
function PhysicsServer3D.soft_body_remove_all_pinned_points(body) end

---@param body RID
---@param point_index integer
---@param pin boolean
function PhysicsServer3D.soft_body_pin_point(body, point_index, pin) end

---@param body RID
---@param point_index integer
---@return boolean
function PhysicsServer3D.soft_body_is_point_pinned(body, point_index) end

---@param body RID
---@param point_index integer
---@param impulse Vector3
function PhysicsServer3D.soft_body_apply_point_impulse(body, point_index, impulse) end

---@param body RID
---@param point_index integer
---@param force Vector3
function PhysicsServer3D.soft_body_apply_point_force(body, point_index, force) end

---@param body RID
---@param impulse Vector3
function PhysicsServer3D.soft_body_apply_central_impulse(body, impulse) end

---@param body RID
---@param force Vector3
function PhysicsServer3D.soft_body_apply_central_force(body, force) end

---@return RID
function PhysicsServer3D.joint_create() end

---@param joint RID
function PhysicsServer3D.joint_clear(joint) end

---@param joint RID
---@param body_A RID
---@param local_A Vector3
---@param body_B RID
---@param local_B Vector3
function PhysicsServer3D.joint_make_pin(joint, body_A, local_A, body_B, local_B) end

---@param joint RID
---@param param PhysicsServer3D.PinJointParam
---@param value number
function PhysicsServer3D.pin_joint_set_param(joint, param, value) end

---@param joint RID
---@param param PhysicsServer3D.PinJointParam
---@return number
function PhysicsServer3D.pin_joint_get_param(joint, param) end

---@param joint RID
---@param local_A Vector3
function PhysicsServer3D.pin_joint_set_local_a(joint, local_A) end

---@param joint RID
---@return Vector3
function PhysicsServer3D.pin_joint_get_local_a(joint) end

---@param joint RID
---@param local_B Vector3
function PhysicsServer3D.pin_joint_set_local_b(joint, local_B) end

---@param joint RID
---@return Vector3
function PhysicsServer3D.pin_joint_get_local_b(joint) end

---@param joint RID
---@param body_A RID
---@param hinge_A Transform3D
---@param body_B RID
---@param hinge_B Transform3D
function PhysicsServer3D.joint_make_hinge(joint, body_A, hinge_A, body_B, hinge_B) end

---@param joint RID
---@param param PhysicsServer3D.HingeJointParam
---@param value number
function PhysicsServer3D.hinge_joint_set_param(joint, param, value) end

---@param joint RID
---@param param PhysicsServer3D.HingeJointParam
---@return number
function PhysicsServer3D.hinge_joint_get_param(joint, param) end

---@param joint RID
---@param flag PhysicsServer3D.HingeJointFlag
---@param enabled boolean
function PhysicsServer3D.hinge_joint_set_flag(joint, flag, enabled) end

---@param joint RID
---@param flag PhysicsServer3D.HingeJointFlag
---@return boolean
function PhysicsServer3D.hinge_joint_get_flag(joint, flag) end

---@param joint RID
---@param body_A RID
---@param local_ref_A Transform3D
---@param body_B RID
---@param local_ref_B Transform3D
function PhysicsServer3D.joint_make_slider(joint, body_A, local_ref_A, body_B, local_ref_B) end

---@param joint RID
---@param param PhysicsServer3D.SliderJointParam
---@param value number
function PhysicsServer3D.slider_joint_set_param(joint, param, value) end

---@param joint RID
---@param param PhysicsServer3D.SliderJointParam
---@return number
function PhysicsServer3D.slider_joint_get_param(joint, param) end

---@param joint RID
---@param body_A RID
---@param local_ref_A Transform3D
---@param body_B RID
---@param local_ref_B Transform3D
function PhysicsServer3D.joint_make_cone_twist(joint, body_A, local_ref_A, body_B, local_ref_B) end

---@param joint RID
---@param param PhysicsServer3D.ConeTwistJointParam
---@param value number
function PhysicsServer3D.cone_twist_joint_set_param(joint, param, value) end

---@param joint RID
---@param param PhysicsServer3D.ConeTwistJointParam
---@return number
function PhysicsServer3D.cone_twist_joint_get_param(joint, param) end

---@param joint RID
---@return PhysicsServer3D.JointType
function PhysicsServer3D.joint_get_type(joint) end

---@param joint RID
---@param priority integer
function PhysicsServer3D.joint_set_solver_priority(joint, priority) end

---@param joint RID
---@return integer
function PhysicsServer3D.joint_get_solver_priority(joint) end

---@param joint RID
---@param disable boolean
function PhysicsServer3D.joint_disable_collisions_between_bodies(joint, disable) end

---@param joint RID
---@return boolean
function PhysicsServer3D.joint_is_disabled_collisions_between_bodies(joint) end

---@param joint RID
---@param body_A RID
---@param local_ref_A Transform3D
---@param body_B RID
---@param local_ref_B Transform3D
function PhysicsServer3D.joint_make_generic_6dof(joint, body_A, local_ref_A, body_B, local_ref_B) end

---@param joint RID
---@param axis Vector3.Axis
---@param param PhysicsServer3D.G6DOFJointAxisParam
---@param value number
function PhysicsServer3D.generic_6dof_joint_set_param(joint, axis, param, value) end

---@param joint RID
---@param axis Vector3.Axis
---@param param PhysicsServer3D.G6DOFJointAxisParam
---@return number
function PhysicsServer3D.generic_6dof_joint_get_param(joint, axis, param) end

---@param joint RID
---@param axis Vector3.Axis
---@param flag PhysicsServer3D.G6DOFJointAxisFlag
---@param enable boolean
function PhysicsServer3D.generic_6dof_joint_set_flag(joint, axis, flag, enable) end

---@param joint RID
---@param axis Vector3.Axis
---@param flag PhysicsServer3D.G6DOFJointAxisFlag
---@return boolean
function PhysicsServer3D.generic_6dof_joint_get_flag(joint, axis, flag) end

---@param rid RID
function PhysicsServer3D.free_rid(rid) end

---@param active boolean
function PhysicsServer3D.set_active(active) end

---@param process_info PhysicsServer3D.ProcessInfo
---@return integer
function PhysicsServer3D.get_process_info(process_info) end
