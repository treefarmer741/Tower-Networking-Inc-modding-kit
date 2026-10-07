---@meta _
-- Generated API for game version 0.10.0

---@class CameraAttributesPractical : CameraAttributes
---@field dof_blur_far_enabled boolean
---@field dof_blur_far_distance number
---@field dof_blur_far_transition number
---@field dof_blur_near_enabled boolean
---@field dof_blur_near_distance number
---@field dof_blur_near_transition number
---@field dof_blur_amount number
---@field auto_exposure_min_sensitivity number
---@field auto_exposure_max_sensitivity number
local CameraAttributesPractical = {}

---@param enabled boolean
function CameraAttributesPractical.set_dof_blur_far_enabled(enabled) end

---@return boolean
function CameraAttributesPractical.is_dof_blur_far_enabled() end

---@param distance number
function CameraAttributesPractical.set_dof_blur_far_distance(distance) end

---@return number
function CameraAttributesPractical.get_dof_blur_far_distance() end

---@param distance number
function CameraAttributesPractical.set_dof_blur_far_transition(distance) end

---@return number
function CameraAttributesPractical.get_dof_blur_far_transition() end

---@param enabled boolean
function CameraAttributesPractical.set_dof_blur_near_enabled(enabled) end

---@return boolean
function CameraAttributesPractical.is_dof_blur_near_enabled() end

---@param distance number
function CameraAttributesPractical.set_dof_blur_near_distance(distance) end

---@return number
function CameraAttributesPractical.get_dof_blur_near_distance() end

---@param distance number
function CameraAttributesPractical.set_dof_blur_near_transition(distance) end

---@return number
function CameraAttributesPractical.get_dof_blur_near_transition() end

---@param amount number
function CameraAttributesPractical.set_dof_blur_amount(amount) end

---@return number
function CameraAttributesPractical.get_dof_blur_amount() end

---@param max_sensitivity number
function CameraAttributesPractical.set_auto_exposure_max_sensitivity(max_sensitivity) end

---@return number
function CameraAttributesPractical.get_auto_exposure_max_sensitivity() end

---@param min_sensitivity number
function CameraAttributesPractical.set_auto_exposure_min_sensitivity(min_sensitivity) end

---@return number
function CameraAttributesPractical.get_auto_exposure_min_sensitivity() end
