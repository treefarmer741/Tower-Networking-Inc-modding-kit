---@meta _
-- Generated API for game version 0.9.1

---@class RDPipelineColorBlendState : RefCounted
---@field enable_logic_op boolean
---@field logic_op integer
---@field blend_constant Color
---@field attachments Array<RDPipelineColorBlendStateAttachment>
local RDPipelineColorBlendState = {}

---@param p_member boolean
function RDPipelineColorBlendState.set_enable_logic_op(p_member) end

---@return boolean
function RDPipelineColorBlendState.get_enable_logic_op() end

---@param p_member RenderingDevice.LogicOperation
function RDPipelineColorBlendState.set_logic_op(p_member) end

---@return RenderingDevice.LogicOperation
function RDPipelineColorBlendState.get_logic_op() end

---@param p_member Color
function RDPipelineColorBlendState.set_blend_constant(p_member) end

---@return Color
function RDPipelineColorBlendState.get_blend_constant() end

---@param attachments Array<RDPipelineColorBlendStateAttachment>
function RDPipelineColorBlendState.set_attachments(attachments) end

---@return Array<RDPipelineColorBlendStateAttachment>
function RDPipelineColorBlendState.get_attachments() end
