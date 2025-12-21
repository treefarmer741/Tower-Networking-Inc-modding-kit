---@meta _
-- Generated API for game version 0.9.1

---@class RDPipelineDepthStencilState : RefCounted
---@field enable_depth_test boolean
---@field enable_depth_write boolean
---@field depth_compare_operator integer
---@field enable_depth_range boolean
---@field depth_range_min number
---@field depth_range_max number
---@field enable_stencil boolean
---@field front_op_fail integer
---@field front_op_pass integer
---@field front_op_depth_fail integer
---@field front_op_compare integer
---@field front_op_compare_mask integer
---@field front_op_write_mask integer
---@field front_op_reference integer
---@field back_op_fail integer
---@field back_op_pass integer
---@field back_op_depth_fail integer
---@field back_op_compare integer
---@field back_op_compare_mask integer
---@field back_op_write_mask integer
---@field back_op_reference integer
local RDPipelineDepthStencilState = {}

---@param p_member boolean
function RDPipelineDepthStencilState.set_enable_depth_test(p_member) end

---@return boolean
function RDPipelineDepthStencilState.get_enable_depth_test() end

---@param p_member boolean
function RDPipelineDepthStencilState.set_enable_depth_write(p_member) end

---@return boolean
function RDPipelineDepthStencilState.get_enable_depth_write() end

---@param p_member RenderingDevice.CompareOperator
function RDPipelineDepthStencilState.set_depth_compare_operator(p_member) end

---@return RenderingDevice.CompareOperator
function RDPipelineDepthStencilState.get_depth_compare_operator() end

---@param p_member boolean
function RDPipelineDepthStencilState.set_enable_depth_range(p_member) end

---@return boolean
function RDPipelineDepthStencilState.get_enable_depth_range() end

---@param p_member number
function RDPipelineDepthStencilState.set_depth_range_min(p_member) end

---@return number
function RDPipelineDepthStencilState.get_depth_range_min() end

---@param p_member number
function RDPipelineDepthStencilState.set_depth_range_max(p_member) end

---@return number
function RDPipelineDepthStencilState.get_depth_range_max() end

---@param p_member boolean
function RDPipelineDepthStencilState.set_enable_stencil(p_member) end

---@return boolean
function RDPipelineDepthStencilState.get_enable_stencil() end

---@param p_member RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.set_front_op_fail(p_member) end

---@return RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.get_front_op_fail() end

---@param p_member RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.set_front_op_pass(p_member) end

---@return RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.get_front_op_pass() end

---@param p_member RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.set_front_op_depth_fail(p_member) end

---@return RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.get_front_op_depth_fail() end

---@param p_member RenderingDevice.CompareOperator
function RDPipelineDepthStencilState.set_front_op_compare(p_member) end

---@return RenderingDevice.CompareOperator
function RDPipelineDepthStencilState.get_front_op_compare() end

---@param p_member integer
function RDPipelineDepthStencilState.set_front_op_compare_mask(p_member) end

---@return integer
function RDPipelineDepthStencilState.get_front_op_compare_mask() end

---@param p_member integer
function RDPipelineDepthStencilState.set_front_op_write_mask(p_member) end

---@return integer
function RDPipelineDepthStencilState.get_front_op_write_mask() end

---@param p_member integer
function RDPipelineDepthStencilState.set_front_op_reference(p_member) end

---@return integer
function RDPipelineDepthStencilState.get_front_op_reference() end

---@param p_member RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.set_back_op_fail(p_member) end

---@return RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.get_back_op_fail() end

---@param p_member RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.set_back_op_pass(p_member) end

---@return RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.get_back_op_pass() end

---@param p_member RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.set_back_op_depth_fail(p_member) end

---@return RenderingDevice.StencilOperation
function RDPipelineDepthStencilState.get_back_op_depth_fail() end

---@param p_member RenderingDevice.CompareOperator
function RDPipelineDepthStencilState.set_back_op_compare(p_member) end

---@return RenderingDevice.CompareOperator
function RDPipelineDepthStencilState.get_back_op_compare() end

---@param p_member integer
function RDPipelineDepthStencilState.set_back_op_compare_mask(p_member) end

---@return integer
function RDPipelineDepthStencilState.get_back_op_compare_mask() end

---@param p_member integer
function RDPipelineDepthStencilState.set_back_op_write_mask(p_member) end

---@return integer
function RDPipelineDepthStencilState.get_back_op_write_mask() end

---@param p_member integer
function RDPipelineDepthStencilState.set_back_op_reference(p_member) end

---@return integer
function RDPipelineDepthStencilState.get_back_op_reference() end
