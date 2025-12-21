---@meta _
-- Generated API for game version 0.9.1

---@class MeshTexture : Texture2D
---@field mesh Mesh
---@field base_texture Texture2D
---@field image_size Vector2
local MeshTexture = {}

---@param mesh Mesh
function MeshTexture.set_mesh(mesh) end

---@return Mesh
function MeshTexture.get_mesh() end

---@param size Vector2
function MeshTexture.set_image_size(size) end

---@return Vector2
function MeshTexture.get_image_size() end

---@param texture Texture2D
function MeshTexture.set_base_texture(texture) end

---@return Texture2D
function MeshTexture.get_base_texture() end
