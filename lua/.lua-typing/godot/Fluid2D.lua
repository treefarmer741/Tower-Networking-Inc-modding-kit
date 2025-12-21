---@meta _
-- Generated API for game version 0.9.1

---@class Fluid2D : Node2D
---@field rid RID
---@field radius number
---@field debug_draw boolean
---@field density number
---@field lifetime number
---@field effects Array<any>
---@field points PackedVector2Array
local Fluid2D = {}

---@param points PackedVector2Array
function Fluid2D.set_points(points) end

---@param density number
function Fluid2D.set_density(density) end

---@param lifetime number
function Fluid2D.set_lifetime(lifetime) end

---@param debug_draw boolean
function Fluid2D.set_debug_draw(debug_draw) end

---@return PackedVector2Array
function Fluid2D.get_accelerations() end

---@return PackedVector2Array
function Fluid2D.get_velocities() end

---@return PackedVector2Array
function Fluid2D.get_points() end

---@param width integer
---@param height integer
---@return PackedVector2Array
function Fluid2D.create_rectangle_points(width, height) end

---@param radius integer
---@return PackedVector2Array
function Fluid2D.create_circle_points(radius) end

---@param points PackedVector2Array
---@param velocities PackedVector2Array
function Fluid2D.add_points_and_velocities(points, velocities) end

---@param points PackedVector2Array
---@param velocities PackedVector2Array
function Fluid2D.set_points_and_velocities(points, velocities) end

---@param indices PackedInt32Array
function Fluid2D.delete_points(indices) end

---@param effects Array<Resource>
function Fluid2D.set_effects(effects) end

---@return RID
function Fluid2D.get_rid() end

---@return number
function Fluid2D.get_radius() end

---@return boolean
function Fluid2D.get_debug_draw() end

---@return number
function Fluid2D.get_density() end

---@return number
function Fluid2D.get_lifetime() end

---@return Array<Resource>
function Fluid2D.get_effects() end
