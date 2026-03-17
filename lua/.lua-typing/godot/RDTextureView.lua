---@meta _
-- Generated API for game version 0.10.0

---@class RDTextureView : RefCounted
---@field format_override integer
---@field swizzle_r integer
---@field swizzle_g integer
---@field swizzle_b integer
---@field swizzle_a integer
local RDTextureView = {}

---@param p_member RenderingDevice.DataFormat
function RDTextureView.set_format_override(p_member) end

---@return RenderingDevice.DataFormat
function RDTextureView.get_format_override() end

---@param p_member RenderingDevice.TextureSwizzle
function RDTextureView.set_swizzle_r(p_member) end

---@return RenderingDevice.TextureSwizzle
function RDTextureView.get_swizzle_r() end

---@param p_member RenderingDevice.TextureSwizzle
function RDTextureView.set_swizzle_g(p_member) end

---@return RenderingDevice.TextureSwizzle
function RDTextureView.get_swizzle_g() end

---@param p_member RenderingDevice.TextureSwizzle
function RDTextureView.set_swizzle_b(p_member) end

---@return RenderingDevice.TextureSwizzle
function RDTextureView.get_swizzle_b() end

---@param p_member RenderingDevice.TextureSwizzle
function RDTextureView.set_swizzle_a(p_member) end

---@return RenderingDevice.TextureSwizzle
function RDTextureView.get_swizzle_a() end
