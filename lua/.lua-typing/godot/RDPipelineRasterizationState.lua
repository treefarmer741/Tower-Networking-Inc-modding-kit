---@meta _
-- Generated API for game version 0.9.1

---@class RDPipelineRasterizationState : RefCounted
---@field enable_depth_clamp boolean
---@field discard_primitives boolean
---@field wireframe boolean
---@field cull_mode integer
---@field front_face integer
---@field depth_bias_enabled boolean
---@field depth_bias_constant_factor number
---@field depth_bias_clamp number
---@field depth_bias_slope_factor number
---@field line_width number
---@field patch_control_points integer
local RDPipelineRasterizationState = {}

---@param p_member boolean
function RDPipelineRasterizationState.set_enable_depth_clamp(p_member) end

---@return boolean
function RDPipelineRasterizationState.get_enable_depth_clamp() end

---@param p_member boolean
function RDPipelineRasterizationState.set_discard_primitives(p_member) end

---@return boolean
function RDPipelineRasterizationState.get_discard_primitives() end

---@param p_member boolean
function RDPipelineRasterizationState.set_wireframe(p_member) end

---@return boolean
function RDPipelineRasterizationState.get_wireframe() end

---@param p_member RenderingDevice.PolygonCullMode
function RDPipelineRasterizationState.set_cull_mode(p_member) end

---@return RenderingDevice.PolygonCullMode
function RDPipelineRasterizationState.get_cull_mode() end

---@param p_member RenderingDevice.PolygonFrontFace
function RDPipelineRasterizationState.set_front_face(p_member) end

---@return RenderingDevice.PolygonFrontFace
function RDPipelineRasterizationState.get_front_face() end

---@param p_member boolean
function RDPipelineRasterizationState.set_depth_bias_enabled(p_member) end

---@return boolean
function RDPipelineRasterizationState.get_depth_bias_enabled() end

---@param p_member number
function RDPipelineRasterizationState.set_depth_bias_constant_factor(p_member) end

---@return number
function RDPipelineRasterizationState.get_depth_bias_constant_factor() end

---@param p_member number
function RDPipelineRasterizationState.set_depth_bias_clamp(p_member) end

---@return number
function RDPipelineRasterizationState.get_depth_bias_clamp() end

---@param p_member number
function RDPipelineRasterizationState.set_depth_bias_slope_factor(p_member) end

---@return number
function RDPipelineRasterizationState.get_depth_bias_slope_factor() end

---@param p_member number
function RDPipelineRasterizationState.set_line_width(p_member) end

---@return number
function RDPipelineRasterizationState.get_line_width() end

---@param p_member integer
function RDPipelineRasterizationState.set_patch_control_points(p_member) end

---@return integer
function RDPipelineRasterizationState.get_patch_control_points() end
