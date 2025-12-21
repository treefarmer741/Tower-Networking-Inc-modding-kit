---@meta _
-- Generated API for game version 0.9.1

---@class MeshLibrary : Resource
local MeshLibrary = {}

---@param id integer
function MeshLibrary.create_item(id) end

---@param id integer
---@param name string
function MeshLibrary.set_item_name(id, name) end

---@param id integer
---@param mesh Mesh
function MeshLibrary.set_item_mesh(id, mesh) end

---@param id integer
---@param mesh_transform Transform3D
function MeshLibrary.set_item_mesh_transform(id, mesh_transform) end

---@param id integer
---@param shadow_casting_setting RenderingServer.ShadowCastingSetting
function MeshLibrary.set_item_mesh_cast_shadow(id, shadow_casting_setting) end

---@param id integer
---@param navigation_mesh NavigationMesh
function MeshLibrary.set_item_navigation_mesh(id, navigation_mesh) end

---@param id integer
---@param navigation_mesh Transform3D
function MeshLibrary.set_item_navigation_mesh_transform(id, navigation_mesh) end

---@param id integer
---@param navigation_layers integer
function MeshLibrary.set_item_navigation_layers(id, navigation_layers) end

---@param id integer
---@param shapes Array<any>
function MeshLibrary.set_item_shapes(id, shapes) end

---@param id integer
---@param texture Texture2D
function MeshLibrary.set_item_preview(id, texture) end

---@param id integer
---@return string
function MeshLibrary.get_item_name(id) end

---@param id integer
---@return Mesh
function MeshLibrary.get_item_mesh(id) end

---@param id integer
---@return Transform3D
function MeshLibrary.get_item_mesh_transform(id) end

---@param id integer
---@return RenderingServer.ShadowCastingSetting
function MeshLibrary.get_item_mesh_cast_shadow(id) end

---@param id integer
---@return NavigationMesh
function MeshLibrary.get_item_navigation_mesh(id) end

---@param id integer
---@return Transform3D
function MeshLibrary.get_item_navigation_mesh_transform(id) end

---@param id integer
---@return integer
function MeshLibrary.get_item_navigation_layers(id) end

---@param id integer
---@return Array<any>
function MeshLibrary.get_item_shapes(id) end

---@param id integer
---@return Texture2D
function MeshLibrary.get_item_preview(id) end

---@param id integer
function MeshLibrary.remove_item(id) end

---@param name string
---@return integer
function MeshLibrary.find_item_by_name(name) end

function MeshLibrary.clear() end

---@return PackedInt32Array
function MeshLibrary.get_item_list() end

---@return integer
function MeshLibrary.get_last_unused_item_id() end
