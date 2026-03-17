---@meta _
-- Generated API for game version 0.10.0

---@class BoneConstraint3D : SkeletonModifier3D
local BoneConstraint3D = {}

---@param index integer
---@param amount number
function BoneConstraint3D.set_amount(index, amount) end

---@param index integer
---@return number
function BoneConstraint3D.get_amount(index) end

---@param index integer
---@param bone_name string
function BoneConstraint3D.set_apply_bone_name(index, bone_name) end

---@param index integer
---@return string
function BoneConstraint3D.get_apply_bone_name(index) end

---@param index integer
---@param bone integer
function BoneConstraint3D.set_apply_bone(index, bone) end

---@param index integer
---@return integer
function BoneConstraint3D.get_apply_bone(index) end

---@param index integer
---@param bone_name string
function BoneConstraint3D.set_reference_bone_name(index, bone_name) end

---@param index integer
---@return string
function BoneConstraint3D.get_reference_bone_name(index) end

---@param index integer
---@param bone integer
function BoneConstraint3D.set_reference_bone(index, bone) end

---@param index integer
---@return integer
function BoneConstraint3D.get_reference_bone(index) end

---@param count integer
function BoneConstraint3D.set_setting_count(count) end

---@return integer
function BoneConstraint3D.get_setting_count() end

function BoneConstraint3D.clear_setting() end
