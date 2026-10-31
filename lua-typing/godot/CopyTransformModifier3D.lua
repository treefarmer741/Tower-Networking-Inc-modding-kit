---@meta _
-- Generated API for game version 0.10.0

---@class CopyTransformModifier3D : BoneConstraint3D
---@field setting_count Settings,settings/
local CopyTransformModifier3D = {}

---@param index integer
---@param copy_flags CopyTransformModifier3D.TransformFlag
function CopyTransformModifier3D.set_copy_flags(index, copy_flags) end

---@param index integer
---@return CopyTransformModifier3D.TransformFlag
function CopyTransformModifier3D.get_copy_flags(index) end

---@param index integer
---@param axis_flags CopyTransformModifier3D.AxisFlag
function CopyTransformModifier3D.set_axis_flags(index, axis_flags) end

---@param index integer
---@return CopyTransformModifier3D.AxisFlag
function CopyTransformModifier3D.get_axis_flags(index) end

---@param index integer
---@param axis_flags CopyTransformModifier3D.AxisFlag
function CopyTransformModifier3D.set_invert_flags(index, axis_flags) end

---@param index integer
---@return CopyTransformModifier3D.AxisFlag
function CopyTransformModifier3D.get_invert_flags(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_copy_position(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_position_copying(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_copy_rotation(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_rotation_copying(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_copy_scale(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_scale_copying(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_axis_x_enabled(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_axis_x_enabled(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_axis_y_enabled(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_axis_y_enabled(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_axis_z_enabled(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_axis_z_enabled(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_axis_x_inverted(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_axis_x_inverted(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_axis_y_inverted(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_axis_y_inverted(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_axis_z_inverted(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_axis_z_inverted(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_relative(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_relative(index) end

---@param index integer
---@param enabled boolean
function CopyTransformModifier3D.set_additive(index, enabled) end

---@param index integer
---@return boolean
function CopyTransformModifier3D.is_additive(index) end
