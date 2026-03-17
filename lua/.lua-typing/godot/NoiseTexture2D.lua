---@meta _
-- Generated API for game version 0.10.0

---@class NoiseTexture2D : Texture2D
---@field width integer
---@field height integer
---@field generate_mipmaps boolean
---@field noise Noise
---@field color_ramp Gradient
---@field seamless boolean
---@field invert boolean
---@field in_3d_space boolean
---@field as_normal_map boolean
---@field normalize boolean
---@field seamless_blend_skirt number
---@field bump_strength number
local NoiseTexture2D = {}

---@param width integer
function NoiseTexture2D.set_width(width) end

---@param height integer
function NoiseTexture2D.set_height(height) end

---@param invert boolean
function NoiseTexture2D.set_generate_mipmaps(invert) end

---@return boolean
function NoiseTexture2D.is_generating_mipmaps() end

---@param noise Noise
function NoiseTexture2D.set_noise(noise) end

---@return Noise
function NoiseTexture2D.get_noise() end

---@param gradient Gradient
function NoiseTexture2D.set_color_ramp(gradient) end

---@return Gradient
function NoiseTexture2D.get_color_ramp() end

---@param seamless boolean
function NoiseTexture2D.set_seamless(seamless) end

---@return boolean
function NoiseTexture2D.get_seamless() end

---@param invert boolean
function NoiseTexture2D.set_invert(invert) end

---@return boolean
function NoiseTexture2D.get_invert() end

---@param enable boolean
function NoiseTexture2D.set_in_3d_space(enable) end

---@return boolean
function NoiseTexture2D.is_in_3d_space() end

---@param as_normal_map boolean
function NoiseTexture2D.set_as_normal_map(as_normal_map) end

---@return boolean
function NoiseTexture2D.is_normal_map() end

---@param normalize boolean
function NoiseTexture2D.set_normalize(normalize) end

---@return boolean
function NoiseTexture2D.is_normalized() end

---@param seamless_blend_skirt number
function NoiseTexture2D.set_seamless_blend_skirt(seamless_blend_skirt) end

---@return number
function NoiseTexture2D.get_seamless_blend_skirt() end

---@param bump_strength number
function NoiseTexture2D.set_bump_strength(bump_strength) end

---@return number
function NoiseTexture2D.get_bump_strength() end
