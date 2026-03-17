---@meta _
-- Generated API for game version 0.10.0

---@class GPUParticlesCollisionHeightField3D : GPUParticlesCollision3D
---@field size Vector3
---@field resolution integer
---@field update_mode integer
---@field follow_camera_enabled boolean
---@field heightfield_mask integer
local GPUParticlesCollisionHeightField3D = {}

---@param size Vector3
function GPUParticlesCollisionHeightField3D.set_size(size) end

---@return Vector3
function GPUParticlesCollisionHeightField3D.get_size() end

---@param resolution GPUParticlesCollisionHeightField3D.Resolution
function GPUParticlesCollisionHeightField3D.set_resolution(resolution) end

---@return GPUParticlesCollisionHeightField3D.Resolution
function GPUParticlesCollisionHeightField3D.get_resolution() end

---@param update_mode GPUParticlesCollisionHeightField3D.UpdateMode
function GPUParticlesCollisionHeightField3D.set_update_mode(update_mode) end

---@return GPUParticlesCollisionHeightField3D.UpdateMode
function GPUParticlesCollisionHeightField3D.get_update_mode() end

---@param heightfield_mask integer
function GPUParticlesCollisionHeightField3D.set_heightfield_mask(heightfield_mask) end

---@return integer
function GPUParticlesCollisionHeightField3D.get_heightfield_mask() end

---@param layer_number integer
---@param value boolean
function GPUParticlesCollisionHeightField3D.set_heightfield_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function GPUParticlesCollisionHeightField3D.get_heightfield_mask_value(layer_number) end

---@param enabled boolean
function GPUParticlesCollisionHeightField3D.set_follow_camera_enabled(enabled) end

---@return boolean
function GPUParticlesCollisionHeightField3D.is_follow_camera_enabled() end
