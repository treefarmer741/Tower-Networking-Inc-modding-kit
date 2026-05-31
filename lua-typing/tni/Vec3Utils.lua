---@meta _
-- Generated API for game version 0.10.11

---@class Vec3Utils : Object
local Vec3Utils = {}

---@param basis_subj Basis
---@param up_vector Vector3
---@return Basis
function Vec3Utils.align_basis_up(basis_subj, up_vector) end

---@param n3d Node3D
---@param y_normal Vector3
function Vec3Utils.align_y(n3d, y_normal) end

---@param n3d Node3D
---@param z_normal Vector3
function Vec3Utils.align_z(n3d, z_normal) end

---@param seed_ integer
---@return Vector3
function Vec3Utils.get_random_normal_vector3(seed_) end

---@param gpos Vector3
---@param radius number?  # Default = 0.5
---@param color Color?  # Default = (1.0, 0.0, 0.0, 1.0)
---@param lbl_str string?  # Default = 
function Vec3Utils.create_debug_sphere_at_globalpos(gpos, radius, color, lbl_str) end

---@param gpos Vector3
---@param size Vector3
---@param zneg_dir Vector3
---@param color Color?  # Default = (1.0, 0.0, 0.0, 1.0)
---@param lbl_str string?  # Default = 
function Vec3Utils.create_debug_box_at_globalpos(gpos, size, zneg_dir, color, lbl_str) end

---@param near_corners Array<any>
---@param far_corners Array<any>
---@param color Color?  # Default = (1.0, 0.0, 0.0, 1.0)
function Vec3Utils.create_debug_frustum(near_corners, far_corners, color) end

---@param from_camera Camera3D
---@param screen_top_left Vector2
---@param screen_bottom_right Vector2
---@param project_dist number
---@return Array<any>
function Vec3Utils.get_camera_projected_plane4p(from_camera, screen_top_left, screen_bottom_right, project_dist) end

---@param near Array<any>
---@param far Array<any>
---@return Array<any>
function Vec3Utils.make_frustum_planes(near, far) end

---@param shape Shape3D
---@return AABB
function Vec3Utils.get_shape_aabb(shape) end

---@param aabb AABB
---@param plane Plane
---@return boolean
function Vec3Utils.aabb_intersects_plane(aabb, plane) end

---@param body CollisionObject3D
---@param planes Array<any>
---@return boolean
function Vec3Utils.body_within_enclosing_planes(body, planes) end
