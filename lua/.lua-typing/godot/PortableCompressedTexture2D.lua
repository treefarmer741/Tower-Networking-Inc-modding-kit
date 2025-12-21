---@meta _
-- Generated API for game version 0.9.1

---@class PortableCompressedTexture2D : Texture2D
---@field size_override Vector2
---@field keep_compressed_buffer boolean
local PortableCompressedTexture2D = {}

---@param image Image
---@param compression_mode PortableCompressedTexture2D.CompressionMode
---@param normal_map boolean?  # Default = false
---@param lossy_quality number?  # Default = 0.8
function PortableCompressedTexture2D.create_from_image(image, compression_mode, normal_map, lossy_quality) end

---@return Image.Format
function PortableCompressedTexture2D.get_format() end

---@return PortableCompressedTexture2D.CompressionMode
function PortableCompressedTexture2D.get_compression_mode() end

---@param size Vector2
function PortableCompressedTexture2D.set_size_override(size) end

---@return Vector2
function PortableCompressedTexture2D.get_size_override() end

---@param keep boolean
function PortableCompressedTexture2D.set_keep_compressed_buffer(keep) end

---@return boolean
function PortableCompressedTexture2D.is_keeping_compressed_buffer() end

---@param uastc_level integer
---@param rdo_quality_loss number
function PortableCompressedTexture2D.set_basisu_compressor_params(uastc_level, rdo_quality_loss) end

---@param keep boolean
function PortableCompressedTexture2D.set_keep_all_compressed_buffers(keep) end

---@return boolean
function PortableCompressedTexture2D.is_keeping_all_compressed_buffers() end
