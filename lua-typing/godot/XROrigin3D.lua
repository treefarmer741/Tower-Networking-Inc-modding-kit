---@meta _
-- Generated API for game version 0.10.0

---@class XROrigin3D : Node3D
---@field world_scale number
---@field current boolean
local XROrigin3D = {}

---@param world_scale number
function XROrigin3D.set_world_scale(world_scale) end

---@return number
function XROrigin3D.get_world_scale() end

---@param enabled boolean
function XROrigin3D.set_current(enabled) end

---@return boolean
function XROrigin3D.is_current() end
