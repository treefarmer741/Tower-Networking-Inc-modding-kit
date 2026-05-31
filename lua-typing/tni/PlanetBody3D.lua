---@meta _
-- Generated API for game version 0.10.11

---@class PlanetBody3D : StaticBody3D
---@field rotation_speed number
---@field orbit_target PlanetBody3D
---@field orbit_period number
---@field orbit_eccentricity number
---@field orbit_axis Vector3
---@field lindragsph_np string
---@field gravsph_np string
---@field cshape_np string
---@field gravity_area GravitySphereArea3D
---@field lindragsph LinearDragSphereArea3D
---@field cshape CollisionShape3D
local PlanetBody3D = {}

---@return number
function PlanetBody3D.get_ground_radius() end

---@return number
function PlanetBody3D.get_safe_orbital_radius() end

---@return number
function PlanetBody3D.get_planet_gravity() end
