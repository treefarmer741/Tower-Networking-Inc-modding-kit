---@meta _
-- Generated API for game version 0.10.0

---@class SpringArm3D : Node3D
---@field collision_mask integer
---@field shape Shape3D
---@field spring_length number
---@field margin number
local SpringArm3D = {}

---@return number
function SpringArm3D.get_hit_length() end

---@param length number
function SpringArm3D.set_length(length) end

---@return number
function SpringArm3D.get_length() end

---@param shape Shape3D
function SpringArm3D.set_shape(shape) end

---@return Shape3D
function SpringArm3D.get_shape() end

---@param RID RID
function SpringArm3D.add_excluded_object(RID) end

---@param RID RID
---@return boolean
function SpringArm3D.remove_excluded_object(RID) end

function SpringArm3D.clear_excluded_objects() end

---@param mask integer
function SpringArm3D.set_collision_mask(mask) end

---@return integer
function SpringArm3D.get_collision_mask() end

---@param margin number
function SpringArm3D.set_margin(margin) end

---@return number
function SpringArm3D.get_margin() end
