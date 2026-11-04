---@meta _
-- Generated API for game version 0.10.0

---@class VoxelGIData : Resource
---@field dynamic_range number
---@field energy number
---@field bias number
---@field normal_bias number
---@field propagation number
---@field use_two_bounces boolean
---@field interior boolean
local VoxelGIData = {}

---@param to_cell_xform Transform3D
---@param aabb AABB
---@param octree_size Vector3
---@param octree_cells PackedByteArray
---@param data_cells PackedByteArray
---@param distance_field PackedByteArray
---@param level_counts PackedInt32Array
function VoxelGIData.allocate(to_cell_xform, aabb, octree_size, octree_cells, data_cells, distance_field, level_counts) end

---@return AABB
function VoxelGIData.get_bounds() end

---@return Vector3
function VoxelGIData.get_octree_size() end

---@return Transform3D
function VoxelGIData.get_to_cell_xform() end

---@return PackedByteArray
function VoxelGIData.get_octree_cells() end

---@return PackedByteArray
function VoxelGIData.get_data_cells() end

---@return PackedInt32Array
function VoxelGIData.get_level_counts() end

---@param dynamic_range number
function VoxelGIData.set_dynamic_range(dynamic_range) end

---@return number
function VoxelGIData.get_dynamic_range() end

---@param energy number
function VoxelGIData.set_energy(energy) end

---@return number
function VoxelGIData.get_energy() end

---@param bias number
function VoxelGIData.set_bias(bias) end

---@return number
function VoxelGIData.get_bias() end

---@param bias number
function VoxelGIData.set_normal_bias(bias) end

---@return number
function VoxelGIData.get_normal_bias() end

---@param propagation number
function VoxelGIData.set_propagation(propagation) end

---@return number
function VoxelGIData.get_propagation() end

---@param interior boolean
function VoxelGIData.set_interior(interior) end

---@return boolean
function VoxelGIData.is_interior() end

---@param enable boolean
function VoxelGIData.set_use_two_bounces(enable) end

---@return boolean
function VoxelGIData.is_using_two_bounces() end
