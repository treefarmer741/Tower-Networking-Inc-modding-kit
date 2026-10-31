---@meta _
-- Generated API for game version 0.10.0

---@class PointLight2D : Light2D
---@field texture Texture2D,-AnimatedTexture,-AtlasTexture,-CameraTexture,-CanvasTexture,-MeshTexture,-Texture2DRD,-ViewportTexture
---@field offset Vector2
---@field texture_scale number
---@field height number
local PointLight2D = {}

---@param texture Texture2D
function PointLight2D.set_texture(texture) end

---@return Texture2D
function PointLight2D.get_texture() end

---@param texture_offset Vector2
function PointLight2D.set_texture_offset(texture_offset) end

---@return Vector2
function PointLight2D.get_texture_offset() end

---@param texture_scale number
function PointLight2D.set_texture_scale(texture_scale) end

---@return number
function PointLight2D.get_texture_scale() end
