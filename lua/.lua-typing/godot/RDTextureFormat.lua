---@meta _
-- Generated API for game version 0.9.1

---@class RDTextureFormat : RefCounted
---@field format integer
---@field width integer
---@field height integer
---@field depth integer
---@field array_layers integer
---@field mipmaps integer
---@field texture_type integer
---@field samples integer
---@field usage_bits integer
---@field is_resolve_buffer boolean
---@field is_discardable boolean
local RDTextureFormat = {}

---@param p_member RenderingDevice.DataFormat
function RDTextureFormat.set_format(p_member) end

---@return RenderingDevice.DataFormat
function RDTextureFormat.get_format() end

---@param p_member integer
function RDTextureFormat.set_width(p_member) end

---@return integer
function RDTextureFormat.get_width() end

---@param p_member integer
function RDTextureFormat.set_height(p_member) end

---@return integer
function RDTextureFormat.get_height() end

---@param p_member integer
function RDTextureFormat.set_depth(p_member) end

---@return integer
function RDTextureFormat.get_depth() end

---@param p_member integer
function RDTextureFormat.set_array_layers(p_member) end

---@return integer
function RDTextureFormat.get_array_layers() end

---@param p_member integer
function RDTextureFormat.set_mipmaps(p_member) end

---@return integer
function RDTextureFormat.get_mipmaps() end

---@param p_member RenderingDevice.TextureType
function RDTextureFormat.set_texture_type(p_member) end

---@return RenderingDevice.TextureType
function RDTextureFormat.get_texture_type() end

---@param p_member RenderingDevice.TextureSamples
function RDTextureFormat.set_samples(p_member) end

---@return RenderingDevice.TextureSamples
function RDTextureFormat.get_samples() end

---@param p_member RenderingDevice.TextureUsageBits
function RDTextureFormat.set_usage_bits(p_member) end

---@return RenderingDevice.TextureUsageBits
function RDTextureFormat.get_usage_bits() end

---@param p_member boolean
function RDTextureFormat.set_is_resolve_buffer(p_member) end

---@return boolean
function RDTextureFormat.get_is_resolve_buffer() end

---@param p_member boolean
function RDTextureFormat.set_is_discardable(p_member) end

---@return boolean
function RDTextureFormat.get_is_discardable() end

---@param format RenderingDevice.DataFormat
function RDTextureFormat.add_shareable_format(format) end

---@param format RenderingDevice.DataFormat
function RDTextureFormat.remove_shareable_format(format) end
