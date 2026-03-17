---@meta _
-- Generated API for game version 0.10.0

---@class VoxelGI : VisualInstance3D
---@field subdiv integer
---@field size Vector3
---@field camera_attributes CameraAttributesPractical,CameraAttributesPhysical
---@field data VoxelGIData
local VoxelGI = {}

---@param data VoxelGIData
function VoxelGI.set_probe_data(data) end

---@return VoxelGIData
function VoxelGI.get_probe_data() end

---@param subdiv VoxelGI.Subdiv
function VoxelGI.set_subdiv(subdiv) end

---@return VoxelGI.Subdiv
function VoxelGI.get_subdiv() end

---@param size Vector3
function VoxelGI.set_size(size) end

---@return Vector3
function VoxelGI.get_size() end

---@param camera_attributes CameraAttributes
function VoxelGI.set_camera_attributes(camera_attributes) end

---@return CameraAttributes
function VoxelGI.get_camera_attributes() end

---@param from_node Node?  # Default = <null>
---@param create_visual_debug boolean?  # Default = false
function VoxelGI.bake(from_node, create_visual_debug) end

function VoxelGI.debug_bake() end
