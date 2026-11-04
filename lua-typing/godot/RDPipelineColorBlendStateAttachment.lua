---@meta _
-- Generated API for game version 0.10.0

---@class RDPipelineColorBlendStateAttachment : RefCounted
---@field enable_blend boolean
---@field src_color_blend_factor integer
---@field dst_color_blend_factor integer
---@field color_blend_op integer
---@field src_alpha_blend_factor integer
---@field dst_alpha_blend_factor integer
---@field alpha_blend_op integer
---@field write_r boolean
---@field write_g boolean
---@field write_b boolean
---@field write_a boolean
local RDPipelineColorBlendStateAttachment = {}

function RDPipelineColorBlendStateAttachment.set_as_mix() end

---@param p_member boolean
function RDPipelineColorBlendStateAttachment.set_enable_blend(p_member) end

---@return boolean
function RDPipelineColorBlendStateAttachment.get_enable_blend() end

---@param p_member RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.set_src_color_blend_factor(p_member) end

---@return RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.get_src_color_blend_factor() end

---@param p_member RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.set_dst_color_blend_factor(p_member) end

---@return RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.get_dst_color_blend_factor() end

---@param p_member RenderingDevice.BlendOperation
function RDPipelineColorBlendStateAttachment.set_color_blend_op(p_member) end

---@return RenderingDevice.BlendOperation
function RDPipelineColorBlendStateAttachment.get_color_blend_op() end

---@param p_member RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.set_src_alpha_blend_factor(p_member) end

---@return RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.get_src_alpha_blend_factor() end

---@param p_member RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.set_dst_alpha_blend_factor(p_member) end

---@return RenderingDevice.BlendFactor
function RDPipelineColorBlendStateAttachment.get_dst_alpha_blend_factor() end

---@param p_member RenderingDevice.BlendOperation
function RDPipelineColorBlendStateAttachment.set_alpha_blend_op(p_member) end

---@return RenderingDevice.BlendOperation
function RDPipelineColorBlendStateAttachment.get_alpha_blend_op() end

---@param p_member boolean
function RDPipelineColorBlendStateAttachment.set_write_r(p_member) end

---@return boolean
function RDPipelineColorBlendStateAttachment.get_write_r() end

---@param p_member boolean
function RDPipelineColorBlendStateAttachment.set_write_g(p_member) end

---@return boolean
function RDPipelineColorBlendStateAttachment.get_write_g() end

---@param p_member boolean
function RDPipelineColorBlendStateAttachment.set_write_b(p_member) end

---@return boolean
function RDPipelineColorBlendStateAttachment.get_write_b() end

---@param p_member boolean
function RDPipelineColorBlendStateAttachment.set_write_a(p_member) end

---@return boolean
function RDPipelineColorBlendStateAttachment.get_write_a() end
