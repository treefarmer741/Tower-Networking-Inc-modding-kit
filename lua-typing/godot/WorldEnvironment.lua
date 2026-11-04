---@meta _
-- Generated API for game version 0.10.0

---@class WorldEnvironment : Node
---@field environment Environment
---@field camera_attributes CameraAttributesPractical,CameraAttributesPhysical
---@field compositor Compositor
local WorldEnvironment = {}

---@param env Environment
function WorldEnvironment.set_environment(env) end

---@return Environment
function WorldEnvironment.get_environment() end

---@param camera_attributes CameraAttributes
function WorldEnvironment.set_camera_attributes(camera_attributes) end

---@return CameraAttributes
function WorldEnvironment.get_camera_attributes() end

---@param compositor Compositor
function WorldEnvironment.set_compositor(compositor) end

---@return Compositor
function WorldEnvironment.get_compositor() end
