---@meta _
-- Generated API for game version 0.9.1

---@class NavigationMeshSourceGeometryData3D : Resource
---@field vertices PackedVector3Array
---@field indices PackedInt32Array
---@field projected_obstructions Array<any>
local NavigationMeshSourceGeometryData3D = {}

---@param vertices PackedFloat32Array
function NavigationMeshSourceGeometryData3D.set_vertices(vertices) end

---@return PackedFloat32Array
function NavigationMeshSourceGeometryData3D.get_vertices() end

---@param indices PackedInt32Array
function NavigationMeshSourceGeometryData3D.set_indices(indices) end

---@return PackedInt32Array
function NavigationMeshSourceGeometryData3D.get_indices() end

---@param vertices PackedFloat32Array
---@param indices PackedInt32Array
function NavigationMeshSourceGeometryData3D.append_arrays(vertices, indices) end

function NavigationMeshSourceGeometryData3D.clear() end

---@return boolean
function NavigationMeshSourceGeometryData3D.has_data() end

---@param mesh Mesh
---@param xform Transform3D
function NavigationMeshSourceGeometryData3D.add_mesh(mesh, xform) end

---@param mesh_array Array<any>
---@param xform Transform3D
function NavigationMeshSourceGeometryData3D.add_mesh_array(mesh_array, xform) end

---@param faces PackedVector3Array
---@param xform Transform3D
function NavigationMeshSourceGeometryData3D.add_faces(faces, xform) end

---@param other_geometry NavigationMeshSourceGeometryData3D
function NavigationMeshSourceGeometryData3D.merge(other_geometry) end

---@param vertices PackedVector3Array
---@param elevation number
---@param height number
---@param carve boolean
function NavigationMeshSourceGeometryData3D.add_projected_obstruction(vertices, elevation, height, carve) end

function NavigationMeshSourceGeometryData3D.clear_projected_obstructions() end

---@param projected_obstructions Array<any>
function NavigationMeshSourceGeometryData3D.set_projected_obstructions(projected_obstructions) end

---@return Array<any>
function NavigationMeshSourceGeometryData3D.get_projected_obstructions() end

---@return AABB
function NavigationMeshSourceGeometryData3D.get_bounds() end
