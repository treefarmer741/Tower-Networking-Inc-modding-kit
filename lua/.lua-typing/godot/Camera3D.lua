---@meta _
-- Generated API for game version 0.10.0

---@class Camera3D : Node3D
---@field keep_aspect integer
---@field cull_mask integer
---@field environment Environment
---@field attributes CameraAttributesPractical,CameraAttributesPhysical
---@field compositor Compositor
---@field h_offset number
---@field v_offset number
---@field doppler_tracking integer
---@field projection integer
---@field current boolean
---@field fov number
---@field size number
---@field frustum_offset Vector2
---@field near number
---@field far number
local Camera3D = {}

---@param screen_point Vector2
---@return Vector3
function Camera3D.project_ray_normal(screen_point) end

---@param screen_point Vector2
---@return Vector3
function Camera3D.project_local_ray_normal(screen_point) end

---@param screen_point Vector2
---@return Vector3
function Camera3D.project_ray_origin(screen_point) end

---@param world_point Vector3
---@return Vector2
function Camera3D.unproject_position(world_point) end

---@param world_point Vector3
---@return boolean
function Camera3D.is_position_behind(world_point) end

---@param screen_point Vector2
---@param z_depth number
---@return Vector3
function Camera3D.project_position(screen_point, z_depth) end

---@param fov number
---@param z_near number
---@param z_far number
function Camera3D.set_perspective(fov, z_near, z_far) end

---@param size number
---@param z_near number
---@param z_far number
function Camera3D.set_orthogonal(size, z_near, z_far) end

---@param size number
---@param offset Vector2
---@param z_near number
---@param z_far number
function Camera3D.set_frustum(size, offset, z_near, z_far) end

function Camera3D.make_current() end

---@param enable_next boolean?  # Default = true
function Camera3D.clear_current(enable_next) end

---@param enabled boolean
function Camera3D.set_current(enabled) end

---@return boolean
function Camera3D.is_current() end

---@return Transform3D
function Camera3D.get_camera_transform() end

---@return Projection
function Camera3D.get_camera_projection() end

---@return number
function Camera3D.get_fov() end

---@return Vector2
function Camera3D.get_frustum_offset() end

---@return number
function Camera3D.get_size() end

---@return number
function Camera3D.get_far() end

---@return number
function Camera3D.get_near() end

---@param fov number
function Camera3D.set_fov(fov) end

---@param offset Vector2
function Camera3D.set_frustum_offset(offset) end

---@param size number
function Camera3D.set_size(size) end

---@param far number
function Camera3D.set_far(far) end

---@param near number
function Camera3D.set_near(near) end

---@return Camera3D.ProjectionType
function Camera3D.get_projection() end

---@param mode Camera3D.ProjectionType
function Camera3D.set_projection(mode) end

---@param offset number
function Camera3D.set_h_offset(offset) end

---@return number
function Camera3D.get_h_offset() end

---@param offset number
function Camera3D.set_v_offset(offset) end

---@return number
function Camera3D.get_v_offset() end

---@param mask integer
function Camera3D.set_cull_mask(mask) end

---@return integer
function Camera3D.get_cull_mask() end

---@param env Environment
function Camera3D.set_environment(env) end

---@return Environment
function Camera3D.get_environment() end

---@param env CameraAttributes
function Camera3D.set_attributes(env) end

---@return CameraAttributes
function Camera3D.get_attributes() end

---@param compositor Compositor
function Camera3D.set_compositor(compositor) end

---@return Compositor
function Camera3D.get_compositor() end

---@param mode Camera3D.KeepAspect
function Camera3D.set_keep_aspect_mode(mode) end

---@return Camera3D.KeepAspect
function Camera3D.get_keep_aspect_mode() end

---@param mode Camera3D.DopplerTracking
function Camera3D.set_doppler_tracking(mode) end

---@return Camera3D.DopplerTracking
function Camera3D.get_doppler_tracking() end

---@return Array<Plane>
function Camera3D.get_frustum() end

---@param world_point Vector3
---@return boolean
function Camera3D.is_position_in_frustum(world_point) end

---@return RID
function Camera3D.get_camera_rid() end

---@return RID
function Camera3D.get_pyramid_shape_rid() end

---@param layer_number integer
---@param value boolean
function Camera3D.set_cull_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function Camera3D.get_cull_mask_value(layer_number) end
