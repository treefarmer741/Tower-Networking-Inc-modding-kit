---@meta _
-- Generated API for game version 0.10.0

---@class GradientTexture2D : Texture2D
---@field gradient Gradient
---@field width integer
---@field height integer
---@field use_hdr boolean
---@field fill integer
---@field fill_from Vector2
---@field fill_to Vector2
local GradientTexture2D = {
	---@type integer
	["repeat"] = nil,
}

---@param gradient Gradient
function GradientTexture2D.set_gradient(gradient) end

---@return Gradient
function GradientTexture2D.get_gradient() end

---@param width integer
function GradientTexture2D.set_width(width) end

---@param height integer
function GradientTexture2D.set_height(height) end

---@param enabled boolean
function GradientTexture2D.set_use_hdr(enabled) end

---@return boolean
function GradientTexture2D.is_using_hdr() end

---@param fill GradientTexture2D.Fill
function GradientTexture2D.set_fill(fill) end

---@return GradientTexture2D.Fill
function GradientTexture2D.get_fill() end

---@param fill_from Vector2
function GradientTexture2D.set_fill_from(fill_from) end

---@return Vector2
function GradientTexture2D.get_fill_from() end

---@param fill_to Vector2
function GradientTexture2D.set_fill_to(fill_to) end

---@return Vector2
function GradientTexture2D.get_fill_to() end

---@param repeat_ GradientTexture2D.Repeat
function GradientTexture2D.set_repeat(repeat_) end

---@return GradientTexture2D.Repeat
function GradientTexture2D.get_repeat() end
