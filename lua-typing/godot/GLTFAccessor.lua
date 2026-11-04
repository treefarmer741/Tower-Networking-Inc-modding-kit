---@meta _
-- Generated API for game version 0.10.0

---@class GLTFAccessor : Resource
---@field buffer_view integer
---@field byte_offset integer
---@field component_type integer
---@field normalized boolean
---@field count integer
---@field accessor_type integer
---@field type integer
---@field min PackedFloat64Array
---@field max PackedFloat64Array
---@field sparse_count integer
---@field sparse_indices_buffer_view integer
---@field sparse_indices_byte_offset integer
---@field sparse_indices_component_type integer
---@field sparse_values_buffer_view integer
---@field sparse_values_byte_offset integer
local GLTFAccessor = {}

---@return integer
function GLTFAccessor.get_buffer_view() end

---@param buffer_view integer
function GLTFAccessor.set_buffer_view(buffer_view) end

---@return integer
function GLTFAccessor.get_byte_offset() end

---@param byte_offset integer
function GLTFAccessor.set_byte_offset(byte_offset) end

---@return GLTFAccessor.GLTFComponentType
function GLTFAccessor.get_component_type() end

---@param component_type GLTFAccessor.GLTFComponentType
function GLTFAccessor.set_component_type(component_type) end

---@return boolean
function GLTFAccessor.get_normalized() end

---@param normalized boolean
function GLTFAccessor.set_normalized(normalized) end

---@return integer
function GLTFAccessor.get_count() end

---@param count integer
function GLTFAccessor.set_count(count) end

---@return GLTFAccessor.GLTFAccessorType
function GLTFAccessor.get_accessor_type() end

---@param accessor_type GLTFAccessor.GLTFAccessorType
function GLTFAccessor.set_accessor_type(accessor_type) end

---@return integer
function GLTFAccessor.get_type() end

---@param type integer
function GLTFAccessor.set_type(type) end

---@return PackedFloat64Array
function GLTFAccessor.get_min() end

---@param min PackedFloat64Array
function GLTFAccessor.set_min(min) end

---@return PackedFloat64Array
function GLTFAccessor.get_max() end

---@param max PackedFloat64Array
function GLTFAccessor.set_max(max) end

---@return integer
function GLTFAccessor.get_sparse_count() end

---@param sparse_count integer
function GLTFAccessor.set_sparse_count(sparse_count) end

---@return integer
function GLTFAccessor.get_sparse_indices_buffer_view() end

---@param sparse_indices_buffer_view integer
function GLTFAccessor.set_sparse_indices_buffer_view(sparse_indices_buffer_view) end

---@return integer
function GLTFAccessor.get_sparse_indices_byte_offset() end

---@param sparse_indices_byte_offset integer
function GLTFAccessor.set_sparse_indices_byte_offset(sparse_indices_byte_offset) end

---@return GLTFAccessor.GLTFComponentType
function GLTFAccessor.get_sparse_indices_component_type() end

---@param sparse_indices_component_type GLTFAccessor.GLTFComponentType
function GLTFAccessor.set_sparse_indices_component_type(sparse_indices_component_type) end

---@return integer
function GLTFAccessor.get_sparse_values_buffer_view() end

---@param sparse_values_buffer_view integer
function GLTFAccessor.set_sparse_values_buffer_view(sparse_values_buffer_view) end

---@return integer
function GLTFAccessor.get_sparse_values_byte_offset() end

---@param sparse_values_byte_offset integer
function GLTFAccessor.set_sparse_values_byte_offset(sparse_values_byte_offset) end
