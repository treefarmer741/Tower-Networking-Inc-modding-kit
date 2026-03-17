---@meta _
-- Generated API for game version 0.10.0

---@class CurveTexture : Texture2D
---@field width integer
---@field texture_mode integer
---@field curve Curve
local CurveTexture = {}

---@param width integer
function CurveTexture.set_width(width) end

---@param curve Curve
function CurveTexture.set_curve(curve) end

---@return Curve
function CurveTexture.get_curve() end

---@param texture_mode CurveTexture.TextureMode
function CurveTexture.set_texture_mode(texture_mode) end

---@return CurveTexture.TextureMode
function CurveTexture.get_texture_mode() end
