---@meta _
-- Generated API for game version 0.10.0

---@class MeshConvexDecompositionSettings : RefCounted
---@field max_concavity number
---@field symmetry_planes_clipping_bias number
---@field revolution_axes_clipping_bias number
---@field min_volume_per_convex_hull number
---@field resolution integer
---@field max_num_vertices_per_convex_hull integer
---@field plane_downsampling integer
---@field convex_hull_downsampling integer
---@field normalize_mesh boolean
---@field mode integer
---@field convex_hull_approximation boolean
---@field max_convex_hulls integer
---@field project_hull_vertices boolean
local MeshConvexDecompositionSettings = {}

---@param max_concavity number
function MeshConvexDecompositionSettings.set_max_concavity(max_concavity) end

---@return number
function MeshConvexDecompositionSettings.get_max_concavity() end

---@param symmetry_planes_clipping_bias number
function MeshConvexDecompositionSettings.set_symmetry_planes_clipping_bias(symmetry_planes_clipping_bias) end

---@return number
function MeshConvexDecompositionSettings.get_symmetry_planes_clipping_bias() end

---@param revolution_axes_clipping_bias number
function MeshConvexDecompositionSettings.set_revolution_axes_clipping_bias(revolution_axes_clipping_bias) end

---@return number
function MeshConvexDecompositionSettings.get_revolution_axes_clipping_bias() end

---@param min_volume_per_convex_hull number
function MeshConvexDecompositionSettings.set_min_volume_per_convex_hull(min_volume_per_convex_hull) end

---@return number
function MeshConvexDecompositionSettings.get_min_volume_per_convex_hull() end

---@param min_volume_per_convex_hull integer
function MeshConvexDecompositionSettings.set_resolution(min_volume_per_convex_hull) end

---@return integer
function MeshConvexDecompositionSettings.get_resolution() end

---@param max_num_vertices_per_convex_hull integer
function MeshConvexDecompositionSettings.set_max_num_vertices_per_convex_hull(max_num_vertices_per_convex_hull) end

---@return integer
function MeshConvexDecompositionSettings.get_max_num_vertices_per_convex_hull() end

---@param plane_downsampling integer
function MeshConvexDecompositionSettings.set_plane_downsampling(plane_downsampling) end

---@return integer
function MeshConvexDecompositionSettings.get_plane_downsampling() end

---@param convex_hull_downsampling integer
function MeshConvexDecompositionSettings.set_convex_hull_downsampling(convex_hull_downsampling) end

---@return integer
function MeshConvexDecompositionSettings.get_convex_hull_downsampling() end

---@param normalize_mesh boolean
function MeshConvexDecompositionSettings.set_normalize_mesh(normalize_mesh) end

---@return boolean
function MeshConvexDecompositionSettings.get_normalize_mesh() end

---@param mode MeshConvexDecompositionSettings.Mode
function MeshConvexDecompositionSettings.set_mode(mode) end

---@return MeshConvexDecompositionSettings.Mode
function MeshConvexDecompositionSettings.get_mode() end

---@param convex_hull_approximation boolean
function MeshConvexDecompositionSettings.set_convex_hull_approximation(convex_hull_approximation) end

---@return boolean
function MeshConvexDecompositionSettings.get_convex_hull_approximation() end

---@param max_convex_hulls integer
function MeshConvexDecompositionSettings.set_max_convex_hulls(max_convex_hulls) end

---@return integer
function MeshConvexDecompositionSettings.get_max_convex_hulls() end

---@param project_hull_vertices boolean
function MeshConvexDecompositionSettings.set_project_hull_vertices(project_hull_vertices) end

---@return boolean
function MeshConvexDecompositionSettings.get_project_hull_vertices() end
