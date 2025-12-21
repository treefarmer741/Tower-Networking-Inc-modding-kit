---@meta _
-- Generated API for game version 0.9.1

---@class CanvasItemMaterial : Material
---@field blend_mode integer
---@field light_mode integer
---@field particles_animation boolean
---@field particles_anim_h_frames integer
---@field particles_anim_v_frames integer
---@field particles_anim_loop boolean
local CanvasItemMaterial = {}

---@param blend_mode CanvasItemMaterial.BlendMode
function CanvasItemMaterial.set_blend_mode(blend_mode) end

---@return CanvasItemMaterial.BlendMode
function CanvasItemMaterial.get_blend_mode() end

---@param light_mode CanvasItemMaterial.LightMode
function CanvasItemMaterial.set_light_mode(light_mode) end

---@return CanvasItemMaterial.LightMode
function CanvasItemMaterial.get_light_mode() end

---@param particles_anim boolean
function CanvasItemMaterial.set_particles_animation(particles_anim) end

---@return boolean
function CanvasItemMaterial.get_particles_animation() end

---@param frames integer
function CanvasItemMaterial.set_particles_anim_h_frames(frames) end

---@return integer
function CanvasItemMaterial.get_particles_anim_h_frames() end

---@param frames integer
function CanvasItemMaterial.set_particles_anim_v_frames(frames) end

---@return integer
function CanvasItemMaterial.get_particles_anim_v_frames() end

---@param loop boolean
function CanvasItemMaterial.set_particles_anim_loop(loop) end

---@return boolean
function CanvasItemMaterial.get_particles_anim_loop() end
