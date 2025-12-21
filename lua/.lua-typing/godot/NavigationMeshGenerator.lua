---@meta _
-- Generated API for game version 0.9.1

---@class NavigationMeshGenerator : Object
local NavigationMeshGenerator = {}

---@param navigation_mesh NavigationMesh
---@param root_node Node
function NavigationMeshGenerator.bake(navigation_mesh, root_node) end

---@param navigation_mesh NavigationMesh
function NavigationMeshGenerator.clear(navigation_mesh) end

---@param navigation_mesh NavigationMesh
---@param source_geometry_data NavigationMeshSourceGeometryData3D
---@param root_node Node
---@param callback (Callable|function)?  # Default = null::null
function NavigationMeshGenerator.parse_source_geometry_data(navigation_mesh, source_geometry_data, root_node, callback) end

---@param navigation_mesh NavigationMesh
---@param source_geometry_data NavigationMeshSourceGeometryData3D
---@param callback (Callable|function)?  # Default = null::null
function NavigationMeshGenerator.bake_from_source_geometry_data(navigation_mesh, source_geometry_data, callback) end
