---@meta _
-- Generated API for game version 0.10.0

---@class GPUParticlesCollisionSDF3D : GPUParticlesCollision3D
---@field size Vector3
---@field resolution integer
---@field thickness number
---@field bake_mask integer
---@field texture Texture3D
local GPUParticlesCollisionSDF3D = {}

---@param size Vector3
function GPUParticlesCollisionSDF3D.set_size(size) end

---@return Vector3
function GPUParticlesCollisionSDF3D.get_size() end

---@param resolution GPUParticlesCollisionSDF3D.Resolution
function GPUParticlesCollisionSDF3D.set_resolution(resolution) end

---@return GPUParticlesCollisionSDF3D.Resolution
function GPUParticlesCollisionSDF3D.get_resolution() end

---@param texture Texture3D
function GPUParticlesCollisionSDF3D.set_texture(texture) end

---@return Texture3D
function GPUParticlesCollisionSDF3D.get_texture() end

---@param thickness number
function GPUParticlesCollisionSDF3D.set_thickness(thickness) end

---@return number
function GPUParticlesCollisionSDF3D.get_thickness() end

---@param mask integer
function GPUParticlesCollisionSDF3D.set_bake_mask(mask) end

---@return integer
function GPUParticlesCollisionSDF3D.get_bake_mask() end

---@param layer_number integer
---@param value boolean
function GPUParticlesCollisionSDF3D.set_bake_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function GPUParticlesCollisionSDF3D.get_bake_mask_value(layer_number) end
