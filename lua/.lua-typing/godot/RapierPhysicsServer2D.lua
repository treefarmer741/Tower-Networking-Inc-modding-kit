---@meta _
-- Generated API for game version 0.9.1

---@class RapierPhysicsServer2D : PhysicsServer2DExtension
local RapierPhysicsServer2D = {}

---@param body RID
---@param param integer
---@param value Object
function RapierPhysicsServer2D.body_set_extra_param(body, param, value) end

---@param body RID
---@param param integer
---@return Object
function RapierPhysicsServer2D.body_get_extra_param(body, param) end

---@return string
function RapierPhysicsServer2D.joints_export_json() end

---@param joint RID
---@return string
function RapierPhysicsServer2D.joint_export_json(joint) end

---@return string
function RapierPhysicsServer2D.shapes_export_json() end

---@param shape RID
---@return string
function RapierPhysicsServer2D.shape_export_json(shape) end

---@param space RID
---@return string
function RapierPhysicsServer2D.space_export_json(space) end

---@return string
function RapierPhysicsServer2D.collision_objects_export_json() end

---@param collision_object RID
---@return string
function RapierPhysicsServer2D.collision_object_export_json(collision_object) end

---@return RID
function RapierPhysicsServer2D.fluid_create() end

---@param fluid_rid RID
---@param space_rid RID
function RapierPhysicsServer2D.fluid_set_space(fluid_rid, space_rid) end

---@param fluid_rid RID
---@param density number
function RapierPhysicsServer2D.fluid_set_density(fluid_rid, density) end

---@param fluid_rid RID
---@param effects Array<Resource>
function RapierPhysicsServer2D.fluid_set_effects(fluid_rid, effects) end

---@param fluid_rid RID
---@return PackedVector2Array
function RapierPhysicsServer2D.fluid_get_points(fluid_rid) end

---@param fluid_rid RID
---@return PackedVector2Array
function RapierPhysicsServer2D.fluid_get_velocities(fluid_rid) end

---@param fluid_rid RID
---@return PackedVector2Array
function RapierPhysicsServer2D.fluid_get_accelerations(fluid_rid) end

---@param fluid_rid RID
---@param points PackedVector2Array
function RapierPhysicsServer2D.fluid_set_points(fluid_rid, points) end

---@param fluid_rid RID
---@param points PackedVector2Array
---@param velocities PackedVector2Array
function RapierPhysicsServer2D.fluid_set_points_and_velocities(fluid_rid, points, velocities) end

---@param fluid_rid RID
---@param points PackedVector2Array
---@param velocities PackedVector2Array
function RapierPhysicsServer2D.fluid_add_points_and_velocities(fluid_rid, points, velocities) end

---@param fluid_rid RID
---@param indices PackedInt32Array
function RapierPhysicsServer2D.fluid_delete_points(fluid_rid, indices) end

---@param body RID
---@param callable (Callable|function)
function RapierPhysicsServer2D.body_set_state_sync_callback(body, callable) end

---@param space RID
---@return Array<RID>
function RapierPhysicsServer2D.space_get_active_bodies(space) end

---@param space RID
---@param bodies Array<RID>
---@return Array<Transform2D>
function RapierPhysicsServer2D.space_get_bodies_transform(space, bodies) end
