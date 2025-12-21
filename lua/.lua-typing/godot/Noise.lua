---@meta _
-- Generated API for game version 0.9.1

---@class Noise : Resource
local Noise = {}

---@param x number
---@return number
function Noise.get_noise_1d(x) end

---@param x number
---@param y number
---@return number
function Noise.get_noise_2d(x, y) end

---@param v Vector2
---@return number
function Noise.get_noise_2dv(v) end

---@param x number
---@param y number
---@param z number
---@return number
function Noise.get_noise_3d(x, y, z) end

---@param v Vector3
---@return number
function Noise.get_noise_3dv(v) end

---@param width integer
---@param height integer
---@param invert boolean?  # Default = false
---@param in_3d_space boolean?  # Default = false
---@param normalize boolean?  # Default = true
---@return Image
function Noise.get_image(width, height, invert, in_3d_space, normalize) end

---@param width integer
---@param height integer
---@param invert boolean?  # Default = false
---@param in_3d_space boolean?  # Default = false
---@param skirt number?  # Default = 0.1
---@param normalize boolean?  # Default = true
---@return Image
function Noise.get_seamless_image(width, height, invert, in_3d_space, skirt, normalize) end

---@param width integer
---@param height integer
---@param depth integer
---@param invert boolean?  # Default = false
---@param normalize boolean?  # Default = true
---@return Array<Image>
function Noise.get_image_3d(width, height, depth, invert, normalize) end

---@param width integer
---@param height integer
---@param depth integer
---@param invert boolean?  # Default = false
---@param skirt number?  # Default = 0.1
---@param normalize boolean?  # Default = true
---@return Array<Image>
function Noise.get_seamless_image_3d(width, height, depth, invert, skirt, normalize) end
