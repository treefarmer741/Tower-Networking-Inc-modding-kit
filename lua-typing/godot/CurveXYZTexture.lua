---@meta _
-- Generated API for game version 0.10.0

---@class CurveXYZTexture : Texture2D
---@field width integer
---@field curve_x Curve
---@field curve_y Curve
---@field curve_z Curve
local CurveXYZTexture = {}

---@param width integer
function CurveXYZTexture.set_width(width) end

---@param curve Curve
function CurveXYZTexture.set_curve_x(curve) end

---@return Curve
function CurveXYZTexture.get_curve_x() end

---@param curve Curve
function CurveXYZTexture.set_curve_y(curve) end

---@return Curve
function CurveXYZTexture.get_curve_y() end

---@param curve Curve
function CurveXYZTexture.set_curve_z(curve) end

---@return Curve
function CurveXYZTexture.get_curve_z() end
