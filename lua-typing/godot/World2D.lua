---@meta _
-- Generated API for game version 0.10.0

---@class World2D : Resource
---@field canvas RID
---@field navigation_map RID
---@field space RID
---@field direct_space_state PhysicsDirectSpaceState2D
local World2D = {}

---@return RID
function World2D.get_canvas() end

---@return RID
function World2D.get_navigation_map() end

---@return RID
function World2D.get_space() end

---@return PhysicsDirectSpaceState2D
function World2D.get_direct_space_state() end
