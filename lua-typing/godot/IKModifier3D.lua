---@meta _
-- Generated API for game version 0.12.1

---@class IKModifier3D : SkeletonModifier3D
---@field mutable_bone_axes boolean
local IKModifier3D = {}

---@param count integer
function IKModifier3D.set_setting_count(count) end

---@return integer
function IKModifier3D.get_setting_count() end

function IKModifier3D.clear_settings() end

---@param enabled boolean
function IKModifier3D.set_mutable_bone_axes(enabled) end

---@return boolean
function IKModifier3D.are_bone_axes_mutable() end

function IKModifier3D.reset() end
