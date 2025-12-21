---@meta _
-- Generated API for game version 0.9.1

---@class XRVRS : Object
---@field vrs_min_radius number
---@field vrs_strength number
---@field vrs_render_region Rect2i
local XRVRS = {}

---@return number
function XRVRS.get_vrs_min_radius() end

---@param radius number
function XRVRS.set_vrs_min_radius(radius) end

---@return number
function XRVRS.get_vrs_strength() end

---@param strength number
function XRVRS.set_vrs_strength(strength) end

---@return Rect2i
function XRVRS.get_vrs_render_region() end

---@param render_region Rect2i
function XRVRS.set_vrs_render_region(render_region) end

---@param target_size Vector2
---@param eye_foci PackedVector2Array
---@return RID
function XRVRS.make_vrs_texture(target_size, eye_foci) end
