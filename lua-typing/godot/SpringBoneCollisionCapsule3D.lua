---@meta _
-- Generated API for game version 0.10.0

---@class SpringBoneCollisionCapsule3D : SpringBoneCollision3D
---@field radius number
---@field height number
---@field mid_height number
---@field inside boolean
local SpringBoneCollisionCapsule3D = {}

---@param radius number
function SpringBoneCollisionCapsule3D.set_radius(radius) end

---@return number
function SpringBoneCollisionCapsule3D.get_radius() end

---@param height number
function SpringBoneCollisionCapsule3D.set_height(height) end

---@return number
function SpringBoneCollisionCapsule3D.get_height() end

---@param mid_height number
function SpringBoneCollisionCapsule3D.set_mid_height(mid_height) end

---@return number
function SpringBoneCollisionCapsule3D.get_mid_height() end

---@param enabled boolean
function SpringBoneCollisionCapsule3D.set_inside(enabled) end

---@return boolean
function SpringBoneCollisionCapsule3D.is_inside() end
