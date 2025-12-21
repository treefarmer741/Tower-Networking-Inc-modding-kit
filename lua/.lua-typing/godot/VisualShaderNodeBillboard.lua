---@meta _
-- Generated API for game version 0.9.1

---@class VisualShaderNodeBillboard : VisualShaderNode
---@field billboard_type integer
---@field keep_scale boolean
local VisualShaderNodeBillboard = {}

---@param billboard_type VisualShaderNodeBillboard.BillboardType
function VisualShaderNodeBillboard.set_billboard_type(billboard_type) end

---@return VisualShaderNodeBillboard.BillboardType
function VisualShaderNodeBillboard.get_billboard_type() end

---@param enabled boolean
function VisualShaderNodeBillboard.set_keep_scale_enabled(enabled) end

---@return boolean
function VisualShaderNodeBillboard.is_keep_scale_enabled() end
