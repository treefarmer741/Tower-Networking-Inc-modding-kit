---@meta _
-- Generated API for game version 0.10.0

---@class MultiMesh : Resource
---@field transform_format integer
---@field use_colors boolean
---@field use_custom_data boolean
---@field custom_aabb AABB
---@field instance_count integer
---@field visible_instance_count integer
---@field mesh Mesh
---@field buffer PackedFloat32Array
---@field transform_array PackedVector3Array
---@field transform_2d_array PackedVector2Array
---@field color_array PackedColorArray
---@field custom_data_array PackedColorArray
---@field physics_interpolation_quality integer
local MultiMesh = {}

---@param mesh Mesh
function MultiMesh.set_mesh(mesh) end

---@return Mesh
function MultiMesh.get_mesh() end

---@param enable boolean
function MultiMesh.set_use_colors(enable) end

---@return boolean
function MultiMesh.is_using_colors() end

---@param enable boolean
function MultiMesh.set_use_custom_data(enable) end

---@return boolean
function MultiMesh.is_using_custom_data() end

---@param format MultiMesh.TransformFormat
function MultiMesh.set_transform_format(format) end

---@return MultiMesh.TransformFormat
function MultiMesh.get_transform_format() end

---@param count integer
function MultiMesh.set_instance_count(count) end

---@return integer
function MultiMesh.get_instance_count() end

---@param count integer
function MultiMesh.set_visible_instance_count(count) end

---@return integer
function MultiMesh.get_visible_instance_count() end

---@param quality MultiMesh.PhysicsInterpolationQuality
function MultiMesh.set_physics_interpolation_quality(quality) end

---@return MultiMesh.PhysicsInterpolationQuality
function MultiMesh.get_physics_interpolation_quality() end

---@param instance integer
---@param transform Transform3D
function MultiMesh.set_instance_transform(instance, transform) end

---@param instance integer
---@param transform Transform2D
function MultiMesh.set_instance_transform_2d(instance, transform) end

---@param instance integer
---@return Transform3D
function MultiMesh.get_instance_transform(instance) end

---@param instance integer
---@return Transform2D
function MultiMesh.get_instance_transform_2d(instance) end

---@param instance integer
---@param color Color
function MultiMesh.set_instance_color(instance, color) end

---@param instance integer
---@return Color
function MultiMesh.get_instance_color(instance) end

---@param instance integer
---@param custom_data Color
function MultiMesh.set_instance_custom_data(instance, custom_data) end

---@param instance integer
---@return Color
function MultiMesh.get_instance_custom_data(instance) end

---@param instance integer
function MultiMesh.reset_instance_physics_interpolation(instance) end

---@param aabb AABB
function MultiMesh.set_custom_aabb(aabb) end

---@return AABB
function MultiMesh.get_custom_aabb() end

---@return AABB
function MultiMesh.get_aabb() end

---@return PackedFloat32Array
function MultiMesh.get_buffer() end

---@param buffer PackedFloat32Array
function MultiMesh.set_buffer(buffer) end

---@param buffer_curr PackedFloat32Array
---@param buffer_prev PackedFloat32Array
function MultiMesh.set_buffer_interpolated(buffer_curr, buffer_prev) end
