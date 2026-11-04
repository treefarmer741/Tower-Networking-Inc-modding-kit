---@meta _
-- Generated API for game version 0.10.0

---@class MeshInstance3D : GeometryInstance3D
---@field mesh Mesh
---@field skin Skin
---@field skeleton string
local MeshInstance3D = {}

---@param mesh Mesh
function MeshInstance3D.set_mesh(mesh) end

---@return Mesh
function MeshInstance3D.get_mesh() end

---@param skeleton_path string
function MeshInstance3D.set_skeleton_path(skeleton_path) end

---@return string
function MeshInstance3D.get_skeleton_path() end

---@param skin Skin
function MeshInstance3D.set_skin(skin) end

---@return Skin
function MeshInstance3D.get_skin() end

---@return SkinReference
function MeshInstance3D.get_skin_reference() end

---@return integer
function MeshInstance3D.get_surface_override_material_count() end

---@param surface integer
---@param material Material
function MeshInstance3D.set_surface_override_material(surface, material) end

---@param surface integer
---@return Material
function MeshInstance3D.get_surface_override_material(surface) end

---@param surface integer
---@return Material
function MeshInstance3D.get_active_material(surface) end

function MeshInstance3D.create_trimesh_collision() end

---@param clean boolean?  # Default = true
---@param simplify boolean?  # Default = false
function MeshInstance3D.create_convex_collision(clean, simplify) end

---@param settings MeshConvexDecompositionSettings?  # Default = <Object#null>
function MeshInstance3D.create_multiple_convex_collisions(settings) end

---@return integer
function MeshInstance3D.get_blend_shape_count() end

---@param name string
---@return integer
function MeshInstance3D.find_blend_shape_by_name(name) end

---@param blend_shape_idx integer
---@return number
function MeshInstance3D.get_blend_shape_value(blend_shape_idx) end

---@param blend_shape_idx integer
---@param value number
function MeshInstance3D.set_blend_shape_value(blend_shape_idx, value) end

function MeshInstance3D.create_debug_tangents() end

---@param existing ArrayMesh?  # Default = <Object#null>
---@return ArrayMesh
function MeshInstance3D.bake_mesh_from_current_blend_shape_mix(existing) end

---@param existing ArrayMesh?  # Default = <Object#null>
---@return ArrayMesh
function MeshInstance3D.bake_mesh_from_current_skeleton_pose(existing) end
