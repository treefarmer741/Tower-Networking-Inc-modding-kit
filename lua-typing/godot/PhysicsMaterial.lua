---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsMaterial : Resource
---@field friction number
---@field rough boolean
---@field bounce number
---@field absorbent boolean
local PhysicsMaterial = {}

---@param friction number
function PhysicsMaterial.set_friction(friction) end

---@return number
function PhysicsMaterial.get_friction() end

---@param rough boolean
function PhysicsMaterial.set_rough(rough) end

---@return boolean
function PhysicsMaterial.is_rough() end

---@param bounce number
function PhysicsMaterial.set_bounce(bounce) end

---@return number
function PhysicsMaterial.get_bounce() end

---@param absorbent boolean
function PhysicsMaterial.set_absorbent(absorbent) end

---@return boolean
function PhysicsMaterial.is_absorbent() end
