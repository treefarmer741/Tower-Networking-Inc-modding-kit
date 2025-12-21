---@meta _
-- Generated API for game version 0.9.1

---@class SkeletonModifier3D : Node3D
---@field active boolean
---@field influence number
local SkeletonModifier3D = {}

---@return Skeleton3D
function SkeletonModifier3D.get_skeleton() end

---@param active boolean
function SkeletonModifier3D.set_active(active) end

---@return boolean
function SkeletonModifier3D.is_active() end

---@param influence number
function SkeletonModifier3D.set_influence(influence) end

---@return number
function SkeletonModifier3D.get_influence() end
