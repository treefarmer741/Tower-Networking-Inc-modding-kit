---@meta _
-- Generated API for game version 0.10.0

---@class RDSamplerState : RefCounted
---@field mag_filter integer
---@field min_filter integer
---@field mip_filter integer
---@field repeat_u integer
---@field repeat_v integer
---@field repeat_w integer
---@field lod_bias number
---@field use_anisotropy boolean
---@field anisotropy_max number
---@field enable_compare boolean
---@field compare_op integer
---@field min_lod number
---@field max_lod number
---@field border_color integer
---@field unnormalized_uvw boolean
local RDSamplerState = {}

---@param p_member RenderingDevice.SamplerFilter
function RDSamplerState.set_mag_filter(p_member) end

---@return RenderingDevice.SamplerFilter
function RDSamplerState.get_mag_filter() end

---@param p_member RenderingDevice.SamplerFilter
function RDSamplerState.set_min_filter(p_member) end

---@return RenderingDevice.SamplerFilter
function RDSamplerState.get_min_filter() end

---@param p_member RenderingDevice.SamplerFilter
function RDSamplerState.set_mip_filter(p_member) end

---@return RenderingDevice.SamplerFilter
function RDSamplerState.get_mip_filter() end

---@param p_member RenderingDevice.SamplerRepeatMode
function RDSamplerState.set_repeat_u(p_member) end

---@return RenderingDevice.SamplerRepeatMode
function RDSamplerState.get_repeat_u() end

---@param p_member RenderingDevice.SamplerRepeatMode
function RDSamplerState.set_repeat_v(p_member) end

---@return RenderingDevice.SamplerRepeatMode
function RDSamplerState.get_repeat_v() end

---@param p_member RenderingDevice.SamplerRepeatMode
function RDSamplerState.set_repeat_w(p_member) end

---@return RenderingDevice.SamplerRepeatMode
function RDSamplerState.get_repeat_w() end

---@param p_member number
function RDSamplerState.set_lod_bias(p_member) end

---@return number
function RDSamplerState.get_lod_bias() end

---@param p_member boolean
function RDSamplerState.set_use_anisotropy(p_member) end

---@return boolean
function RDSamplerState.get_use_anisotropy() end

---@param p_member number
function RDSamplerState.set_anisotropy_max(p_member) end

---@return number
function RDSamplerState.get_anisotropy_max() end

---@param p_member boolean
function RDSamplerState.set_enable_compare(p_member) end

---@return boolean
function RDSamplerState.get_enable_compare() end

---@param p_member RenderingDevice.CompareOperator
function RDSamplerState.set_compare_op(p_member) end

---@return RenderingDevice.CompareOperator
function RDSamplerState.get_compare_op() end

---@param p_member number
function RDSamplerState.set_min_lod(p_member) end

---@return number
function RDSamplerState.get_min_lod() end

---@param p_member number
function RDSamplerState.set_max_lod(p_member) end

---@return number
function RDSamplerState.get_max_lod() end

---@param p_member RenderingDevice.SamplerBorderColor
function RDSamplerState.set_border_color(p_member) end

---@return RenderingDevice.SamplerBorderColor
function RDSamplerState.get_border_color() end

---@param p_member boolean
function RDSamplerState.set_unnormalized_uvw(p_member) end

---@return boolean
function RDSamplerState.get_unnormalized_uvw() end
