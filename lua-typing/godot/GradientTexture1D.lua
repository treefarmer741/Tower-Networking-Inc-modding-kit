---@meta _
-- Generated API for game version 0.10.0

---@class GradientTexture1D : Texture2D
---@field gradient Gradient
---@field width integer
---@field use_hdr boolean
local GradientTexture1D = {}

---@param gradient Gradient
function GradientTexture1D.set_gradient(gradient) end

---@return Gradient
function GradientTexture1D.get_gradient() end

---@param width integer
function GradientTexture1D.set_width(width) end

---@param enabled boolean
function GradientTexture1D.set_use_hdr(enabled) end

---@return boolean
function GradientTexture1D.is_using_hdr() end
