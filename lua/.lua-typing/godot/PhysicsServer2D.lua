---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsServer2D : Object
local PhysicsServer2D = {}

---@return RID
function PhysicsServer2D.world_boundary_shape_create() end

---@return RID
function PhysicsServer2D.separation_ray_shape_create() end

---@return RID
function PhysicsServer2D.segment_shape_create() end

---@return RID
function PhysicsServer2D.circle_shape_create() end

---@return RID
function PhysicsServer2D.rectangle_shape_create() end

---@return RID
function PhysicsServer2D.capsule_shape_create() end

---@return RID
function PhysicsServer2D.convex_polygon_shape_create() end

---@return RID
function PhysicsServer2D.concave_polygon_shape_create() end

---@param shape RID
---@param data Object
function PhysicsServer2D.shape_set_data(shape, data) end

---@param shape RID
---@return PhysicsServer2D.ShapeType
function PhysicsServer2D.shape_get_type(shape) end

---@param shape RID
---@return Object
function PhysicsServer2D.shape_get_data(shape) end

---@return RID
function PhysicsServer2D.space_create() end

---@param space RID
---@param active boolean
function PhysicsServer2D.space_set_active(space, active) end

---@param space RID
---@return boolean
function PhysicsServer2D.space_is_active(space) end

---@param space RID
---@param param PhysicsServer2D.SpaceParameter
---@param value number
function PhysicsServer2D.space_set_param(space, param, value) end

---@param space RID
---@param param PhysicsServer2D.SpaceParameter
---@return number
function PhysicsServer2D.space_get_param(space, param) end

---@param space RID
---@return PhysicsDirectSpaceState2D
function PhysicsServer2D.space_get_direct_state(space) end

---@return RID
function PhysicsServer2D.area_create() end

---@param area RID
---@param space RID
function PhysicsServer2D.area_set_space(area, space) end

---@param area RID
---@return RID
function PhysicsServer2D.area_get_space(area) end

---@param area RID
---@param shape RID
---@param transform Transform2D?  # Default = [X: (1.0, 0.0), Y: (0.0, 1.0), O: (0.0, 0.0)]
---@param disabled boolean?  # Default = false
function PhysicsServer2D.area_add_shape(area, shape, transform, disabled) end

---@param area RID
---@param shape_idx integer
---@param shape RID
function PhysicsServer2D.area_set_shape(area, shape_idx, shape) end

---@param area RID
---@param shape_idx integer
---@param transform Transform2D
function PhysicsServer2D.area_set_shape_transform(area, shape_idx, transform) end

---@param area RID
---@param shape_idx integer
---@param disabled boolean
function PhysicsServer2D.area_set_shape_disabled(area, shape_idx, disabled) end

---@param area RID
---@return integer
function PhysicsServer2D.area_get_shape_count(area) end

---@param area RID
---@param shape_idx integer
---@return RID
function PhysicsServer2D.area_get_shape(area, shape_idx) end

---@param area RID
---@param shape_idx integer
---@return Transform2D
function PhysicsServer2D.area_get_shape_transform(area, shape_idx) end

---@param area RID
---@param shape_idx integer
function PhysicsServer2D.area_remove_shape(area, shape_idx) end

---@param area RID
function PhysicsServer2D.area_clear_shapes(area) end

---@param area RID
---@param layer integer
function PhysicsServer2D.area_set_collision_layer(area, layer) end

---@param area RID
---@return integer
function PhysicsServer2D.area_get_collision_layer(area) end

---@param area RID
---@param mask integer
function PhysicsServer2D.area_set_collision_mask(area, mask) end

---@param area RID
---@return integer
function PhysicsServer2D.area_get_collision_mask(area) end

---@param area RID
---@param param PhysicsServer2D.AreaParameter
---@param value Object
function PhysicsServer2D.area_set_param(area, param, value) end

---@param area RID
---@param transform Transform2D
function PhysicsServer2D.area_set_transform(area, transform) end

---@param area RID
---@param param PhysicsServer2D.AreaParameter
---@return Object
function PhysicsServer2D.area_get_param(area, param) end

---@param area RID
---@return Transform2D
function PhysicsServer2D.area_get_transform(area) end

---@param area RID
---@param id integer
function PhysicsServer2D.area_attach_object_instance_id(area, id) end

---@param area RID
---@return integer
function PhysicsServer2D.area_get_object_instance_id(area) end

---@param area RID
---@param id integer
function PhysicsServer2D.area_attach_canvas_instance_id(area, id) end

---@param area RID
---@return integer
function PhysicsServer2D.area_get_canvas_instance_id(area) end

---@param area RID
---@param callback (Callable|function)
function PhysicsServer2D.area_set_monitor_callback(area, callback) end

---@param area RID
---@param callback (Callable|function)
function PhysicsServer2D.area_set_area_monitor_callback(area, callback) end

---@param area RID
---@param monitorable boolean
function PhysicsServer2D.area_set_monitorable(area, monitorable) end

---@return RID
function PhysicsServer2D.body_create() end

---@param body RID
---@param space RID
function PhysicsServer2D.body_set_space(body, space) end

---@param body RID
---@return RID
function PhysicsServer2D.body_get_space(body) end

---@param body RID
---@param mode PhysicsServer2D.BodyMode
function PhysicsServer2D.body_set_mode(body, mode) end

---@param body RID
---@return PhysicsServer2D.BodyMode
function PhysicsServer2D.body_get_mode(body) end

---@param body RID
---@param shape RID
---@param transform Transform2D?  # Default = [X: (1.0, 0.0), Y: (0.0, 1.0), O: (0.0, 0.0)]
---@param disabled boolean?  # Default = false
function PhysicsServer2D.body_add_shape(body, shape, transform, disabled) end

---@param body RID
---@param shape_idx integer
---@param shape RID
function PhysicsServer2D.body_set_shape(body, shape_idx, shape) end

---@param body RID
---@param shape_idx integer
---@param transform Transform2D
function PhysicsServer2D.body_set_shape_transform(body, shape_idx, transform) end

---@param body RID
---@return integer
function PhysicsServer2D.body_get_shape_count(body) end

---@param body RID
---@param shape_idx integer
---@return RID
function PhysicsServer2D.body_get_shape(body, shape_idx) end

---@param body RID
---@param shape_idx integer
---@return Transform2D
function PhysicsServer2D.body_get_shape_transform(body, shape_idx) end

---@param body RID
---@param shape_idx integer
function PhysicsServer2D.body_remove_shape(body, shape_idx) end

---@param body RID
function PhysicsServer2D.body_clear_shapes(body) end

---@param body RID
---@param shape_idx integer
---@param disabled boolean
function PhysicsServer2D.body_set_shape_disabled(body, shape_idx, disabled) end

---@param body RID
---@param shape_idx integer
---@param enable boolean
---@param margin number
function PhysicsServer2D.body_set_shape_as_one_way_collision(body, shape_idx, enable, margin) end

---@param body RID
---@param id integer
function PhysicsServer2D.body_attach_object_instance_id(body, id) end

---@param body RID
---@return integer
function PhysicsServer2D.body_get_object_instance_id(body) end

---@param body RID
---@param id integer
function PhysicsServer2D.body_attach_canvas_instance_id(body, id) end

---@param body RID
---@return integer
function PhysicsServer2D.body_get_canvas_instance_id(body) end

---@param body RID
---@param mode PhysicsServer2D.CCDMode
function PhysicsServer2D.body_set_continuous_collision_detection_mode(body, mode) end

---@param body RID
---@return PhysicsServer2D.CCDMode
function PhysicsServer2D.body_get_continuous_collision_detection_mode(body) end

---@param body RID
---@param layer integer
function PhysicsServer2D.body_set_collision_layer(body, layer) end

---@param body RID
---@return integer
function PhysicsServer2D.body_get_collision_layer(body) end

---@param body RID
---@param mask integer
function PhysicsServer2D.body_set_collision_mask(body, mask) end

---@param body RID
---@return integer
function PhysicsServer2D.body_get_collision_mask(body) end

---@param body RID
---@param priority number
function PhysicsServer2D.body_set_collision_priority(body, priority) end

---@param body RID
---@return number
function PhysicsServer2D.body_get_collision_priority(body) end

---@param body RID
---@param param PhysicsServer2D.BodyParameter
---@param value Object
function PhysicsServer2D.body_set_param(body, param, value) end

---@param body RID
---@param param PhysicsServer2D.BodyParameter
---@return Object
function PhysicsServer2D.body_get_param(body, param) end

---@param body RID
function PhysicsServer2D.body_reset_mass_properties(body) end

---@param body RID
---@param state PhysicsServer2D.BodyState
---@param value Object
function PhysicsServer2D.body_set_state(body, state, value) end

---@param body RID
---@param state PhysicsServer2D.BodyState
---@return Object
function PhysicsServer2D.body_get_state(body, state) end

---@param body RID
---@param impulse Vector2
function PhysicsServer2D.body_apply_central_impulse(body, impulse) end

---@param body RID
---@param impulse number
function PhysicsServer2D.body_apply_torque_impulse(body, impulse) end

---@param body RID
---@param impulse Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function PhysicsServer2D.body_apply_impulse(body, impulse, position) end

---@param body RID
---@param force Vector2
function PhysicsServer2D.body_apply_central_force(body, force) end

---@param body RID
---@param force Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function PhysicsServer2D.body_apply_force(body, force, position) end

---@param body RID
---@param torque number
function PhysicsServer2D.body_apply_torque(body, torque) end

---@param body RID
---@param force Vector2
function PhysicsServer2D.body_add_constant_central_force(body, force) end

---@param body RID
---@param force Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function PhysicsServer2D.body_add_constant_force(body, force, position) end

---@param body RID
---@param torque number
function PhysicsServer2D.body_add_constant_torque(body, torque) end

---@param body RID
---@param force Vector2
function PhysicsServer2D.body_set_constant_force(body, force) end

---@param body RID
---@return Vector2
function PhysicsServer2D.body_get_constant_force(body) end

---@param body RID
---@param torque number
function PhysicsServer2D.body_set_constant_torque(body, torque) end

---@param body RID
---@return number
function PhysicsServer2D.body_get_constant_torque(body) end

---@param body RID
---@param axis_velocity Vector2
function PhysicsServer2D.body_set_axis_velocity(body, axis_velocity) end

---@param body RID
---@param excepted_body RID
function PhysicsServer2D.body_add_collision_exception(body, excepted_body) end

---@param body RID
---@param excepted_body RID
function PhysicsServer2D.body_remove_collision_exception(body, excepted_body) end

---@param body RID
---@param amount integer
function PhysicsServer2D.body_set_max_contacts_reported(body, amount) end

---@param body RID
---@return integer
function PhysicsServer2D.body_get_max_contacts_reported(body) end

---@param body RID
---@param enable boolean
function PhysicsServer2D.body_set_omit_force_integration(body, enable) end

---@param body RID
---@return boolean
function PhysicsServer2D.body_is_omitting_force_integration(body) end

---@param body RID
---@param callable (Callable|function)
function PhysicsServer2D.body_set_state_sync_callback(body, callable) end

---@param body RID
---@param callable (Callable|function)
---@param userdata Object?  # Default = <null>
function PhysicsServer2D.body_set_force_integration_callback(body, callable, userdata) end

---@param body RID
---@param parameters PhysicsTestMotionParameters2D
---@param result PhysicsTestMotionResult2D?  # Default = <null>
---@return boolean
function PhysicsServer2D.body_test_motion(body, parameters, result) end

---@param body RID
---@return PhysicsDirectBodyState2D
function PhysicsServer2D.body_get_direct_state(body) end

---@return RID
function PhysicsServer2D.joint_create() end

---@param joint RID
function PhysicsServer2D.joint_clear(joint) end

---@param joint RID
---@param param PhysicsServer2D.JointParam
---@param value number
function PhysicsServer2D.joint_set_param(joint, param, value) end

---@param joint RID
---@param param PhysicsServer2D.JointParam
---@return number
function PhysicsServer2D.joint_get_param(joint, param) end

---@param joint RID
---@param disable boolean
function PhysicsServer2D.joint_disable_collisions_between_bodies(joint, disable) end

---@param joint RID
---@return boolean
function PhysicsServer2D.joint_is_disabled_collisions_between_bodies(joint) end

---@param joint RID
---@param anchor Vector2
---@param body_a RID
---@param body_b RID?  # Default = RID(0)
function PhysicsServer2D.joint_make_pin(joint, anchor, body_a, body_b) end

---@param joint RID
---@param groove1_a Vector2
---@param groove2_a Vector2
---@param anchor_b Vector2
---@param body_a RID?  # Default = RID(0)
---@param body_b RID?  # Default = RID(0)
function PhysicsServer2D.joint_make_groove(joint, groove1_a, groove2_a, anchor_b, body_a, body_b) end

---@param joint RID
---@param anchor_a Vector2
---@param anchor_b Vector2
---@param body_a RID
---@param body_b RID?  # Default = RID(0)
function PhysicsServer2D.joint_make_damped_spring(joint, anchor_a, anchor_b, body_a, body_b) end

---@param joint RID
---@param flag PhysicsServer2D.PinJointFlag
---@param enabled boolean
function PhysicsServer2D.pin_joint_set_flag(joint, flag, enabled) end

---@param joint RID
---@param flag PhysicsServer2D.PinJointFlag
---@return boolean
function PhysicsServer2D.pin_joint_get_flag(joint, flag) end

---@param joint RID
---@param param PhysicsServer2D.PinJointParam
---@param value number
function PhysicsServer2D.pin_joint_set_param(joint, param, value) end

---@param joint RID
---@param param PhysicsServer2D.PinJointParam
---@return number
function PhysicsServer2D.pin_joint_get_param(joint, param) end

---@param joint RID
---@param param PhysicsServer2D.DampedSpringParam
---@param value number
function PhysicsServer2D.damped_spring_joint_set_param(joint, param, value) end

---@param joint RID
---@param param PhysicsServer2D.DampedSpringParam
---@return number
function PhysicsServer2D.damped_spring_joint_get_param(joint, param) end

---@param joint RID
---@return PhysicsServer2D.JointType
function PhysicsServer2D.joint_get_type(joint) end

---@param rid RID
function PhysicsServer2D.free_rid(rid) end

---@param active boolean
function PhysicsServer2D.set_active(active) end

---@param process_info PhysicsServer2D.ProcessInfo
---@return integer
function PhysicsServer2D.get_process_info(process_info) end
