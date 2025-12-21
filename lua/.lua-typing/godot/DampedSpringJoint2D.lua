---@meta _
-- Generated API for game version 0.9.1

---@class DampedSpringJoint2D : Joint2D
---@field length number
---@field rest_length number
---@field stiffness number
---@field damping number
local DampedSpringJoint2D = {}

---@param length number
function DampedSpringJoint2D.set_length(length) end

---@return number
function DampedSpringJoint2D.get_length() end

---@param rest_length number
function DampedSpringJoint2D.set_rest_length(rest_length) end

---@return number
function DampedSpringJoint2D.get_rest_length() end

---@param stiffness number
function DampedSpringJoint2D.set_stiffness(stiffness) end

---@return number
function DampedSpringJoint2D.get_stiffness() end

---@param damping number
function DampedSpringJoint2D.set_damping(damping) end

---@return number
function DampedSpringJoint2D.get_damping() end
