---@meta _
-- Generated API for game version 0.10.0

---@class World3D : Resource
---@field environment Environment
---@field fallback_environment Environment
---@field camera_attributes CameraAttributesPractical,CameraAttributesPhysical
---@field space RID
---@field navigation_map RID
---@field scenario RID
---@field direct_space_state PhysicsDirectSpaceState3D
local World3D = {}

---@return RID
function World3D.get_space() end

---@return RID
function World3D.get_navigation_map() end

---@return RID
function World3D.get_scenario() end

---@param env Environment
function World3D.set_environment(env) end

---@return Environment
function World3D.get_environment() end

---@param env Environment
function World3D.set_fallback_environment(env) end

---@return Environment
function World3D.get_fallback_environment() end

---@param attributes CameraAttributes
function World3D.set_camera_attributes(attributes) end

---@return CameraAttributes
function World3D.get_camera_attributes() end

---@return PhysicsDirectSpaceState3D
function World3D.get_direct_space_state() end
