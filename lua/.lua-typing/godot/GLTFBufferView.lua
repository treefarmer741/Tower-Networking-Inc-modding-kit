---@meta _
-- Generated API for game version 0.9.1

---@class GLTFBufferView : Resource
---@field buffer integer
---@field byte_offset integer
---@field byte_length integer
---@field byte_stride integer
---@field indices boolean
---@field vertex_attributes boolean
local GLTFBufferView = {}

---@param state GLTFState
---@return PackedByteArray
function GLTFBufferView.load_buffer_view_data(state) end

---@return integer
function GLTFBufferView.get_buffer() end

---@param buffer integer
function GLTFBufferView.set_buffer(buffer) end

---@return integer
function GLTFBufferView.get_byte_offset() end

---@param byte_offset integer
function GLTFBufferView.set_byte_offset(byte_offset) end

---@return integer
function GLTFBufferView.get_byte_length() end

---@param byte_length integer
function GLTFBufferView.set_byte_length(byte_length) end

---@return integer
function GLTFBufferView.get_byte_stride() end

---@param byte_stride integer
function GLTFBufferView.set_byte_stride(byte_stride) end

---@return boolean
function GLTFBufferView.get_indices() end

---@param indices boolean
function GLTFBufferView.set_indices(indices) end

---@return boolean
function GLTFBufferView.get_vertex_attributes() end

---@param is_attributes boolean
function GLTFBufferView.set_vertex_attributes(is_attributes) end
