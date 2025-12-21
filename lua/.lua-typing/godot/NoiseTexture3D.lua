---@meta _
-- Generated API for game version 0.9.1

---@class NoiseTexture3D : Texture3D
---@field width integer
---@field height integer
---@field depth integer
---@field noise Noise
---@field color_ramp Gradient
---@field seamless boolean
---@field invert boolean
---@field normalize boolean
---@field seamless_blend_skirt number
local NoiseTexture3D = {}

---@param width integer
function NoiseTexture3D.set_width(width) end

---@param height integer
function NoiseTexture3D.set_height(height) end

---@param depth integer
function NoiseTexture3D.set_depth(depth) end

---@param noise Noise
function NoiseTexture3D.set_noise(noise) end

---@return Noise
function NoiseTexture3D.get_noise() end

---@param gradient Gradient
function NoiseTexture3D.set_color_ramp(gradient) end

---@return Gradient
function NoiseTexture3D.get_color_ramp() end

---@param seamless boolean
function NoiseTexture3D.set_seamless(seamless) end

---@return boolean
function NoiseTexture3D.get_seamless() end

---@param invert boolean
function NoiseTexture3D.set_invert(invert) end

---@return boolean
function NoiseTexture3D.get_invert() end

---@param normalize boolean
function NoiseTexture3D.set_normalize(normalize) end

---@return boolean
function NoiseTexture3D.is_normalized() end

---@param seamless_blend_skirt number
function NoiseTexture3D.set_seamless_blend_skirt(seamless_blend_skirt) end

---@return number
function NoiseTexture3D.get_seamless_blend_skirt() end
