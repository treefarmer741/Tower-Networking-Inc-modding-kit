---@meta _
-- Generated API for game version 0.10.0

---@class RDPipelineMultisampleState : RefCounted
---@field sample_count integer
---@field enable_sample_shading boolean
---@field min_sample_shading number
---@field enable_alpha_to_coverage boolean
---@field enable_alpha_to_one boolean
---@field sample_masks Array<integer>
local RDPipelineMultisampleState = {}

---@param p_member RenderingDevice.TextureSamples
function RDPipelineMultisampleState.set_sample_count(p_member) end

---@return RenderingDevice.TextureSamples
function RDPipelineMultisampleState.get_sample_count() end

---@param p_member boolean
function RDPipelineMultisampleState.set_enable_sample_shading(p_member) end

---@return boolean
function RDPipelineMultisampleState.get_enable_sample_shading() end

---@param p_member number
function RDPipelineMultisampleState.set_min_sample_shading(p_member) end

---@return number
function RDPipelineMultisampleState.get_min_sample_shading() end

---@param p_member boolean
function RDPipelineMultisampleState.set_enable_alpha_to_coverage(p_member) end

---@return boolean
function RDPipelineMultisampleState.get_enable_alpha_to_coverage() end

---@param p_member boolean
function RDPipelineMultisampleState.set_enable_alpha_to_one(p_member) end

---@return boolean
function RDPipelineMultisampleState.get_enable_alpha_to_one() end

---@param masks Array<integer>
function RDPipelineMultisampleState.set_sample_masks(masks) end

---@return Array<integer>
function RDPipelineMultisampleState.get_sample_masks() end
