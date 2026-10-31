---@meta _
-- Generated API for game version 0.10.0

---@class ConvertTransformModifier3D : BoneConstraint3D
---@field setting_count Settings,settings/
local ConvertTransformModifier3D = {}

---@param index integer
---@param transform_mode ConvertTransformModifier3D.TransformMode
function ConvertTransformModifier3D.set_apply_transform_mode(index, transform_mode) end

---@param index integer
---@return ConvertTransformModifier3D.TransformMode
function ConvertTransformModifier3D.get_apply_transform_mode(index) end

---@param index integer
---@param axis Vector3.Axis
function ConvertTransformModifier3D.set_apply_axis(index, axis) end

---@param index integer
---@return Vector3.Axis
function ConvertTransformModifier3D.get_apply_axis(index) end

---@param index integer
---@param range_min number
function ConvertTransformModifier3D.set_apply_range_min(index, range_min) end

---@param index integer
---@return number
function ConvertTransformModifier3D.get_apply_range_min(index) end

---@param index integer
---@param range_max number
function ConvertTransformModifier3D.set_apply_range_max(index, range_max) end

---@param index integer
---@return number
function ConvertTransformModifier3D.get_apply_range_max(index) end

---@param index integer
---@param transform_mode ConvertTransformModifier3D.TransformMode
function ConvertTransformModifier3D.set_reference_transform_mode(index, transform_mode) end

---@param index integer
---@return ConvertTransformModifier3D.TransformMode
function ConvertTransformModifier3D.get_reference_transform_mode(index) end

---@param index integer
---@param axis Vector3.Axis
function ConvertTransformModifier3D.set_reference_axis(index, axis) end

---@param index integer
---@return Vector3.Axis
function ConvertTransformModifier3D.get_reference_axis(index) end

---@param index integer
---@param range_min number
function ConvertTransformModifier3D.set_reference_range_min(index, range_min) end

---@param index integer
---@return number
function ConvertTransformModifier3D.get_reference_range_min(index) end

---@param index integer
---@param range_max number
function ConvertTransformModifier3D.set_reference_range_max(index, range_max) end

---@param index integer
---@return number
function ConvertTransformModifier3D.get_reference_range_max(index) end

---@param index integer
---@param enabled boolean
function ConvertTransformModifier3D.set_relative(index, enabled) end

---@param index integer
---@return boolean
function ConvertTransformModifier3D.is_relative(index) end

---@param index integer
---@param enabled boolean
function ConvertTransformModifier3D.set_additive(index, enabled) end

---@param index integer
---@return boolean
function ConvertTransformModifier3D.is_additive(index) end
