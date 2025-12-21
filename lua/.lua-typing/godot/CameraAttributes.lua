---@meta _
-- Generated API for game version 0.9.1

---@class CameraAttributes : Resource
---@field exposure_sensitivity number
---@field exposure_multiplier number
---@field auto_exposure_enabled boolean
---@field auto_exposure_scale number
---@field auto_exposure_speed number
local CameraAttributes = {}

---@param multiplier number
function CameraAttributes.set_exposure_multiplier(multiplier) end

---@return number
function CameraAttributes.get_exposure_multiplier() end

---@param sensitivity number
function CameraAttributes.set_exposure_sensitivity(sensitivity) end

---@return number
function CameraAttributes.get_exposure_sensitivity() end

---@param enabled boolean
function CameraAttributes.set_auto_exposure_enabled(enabled) end

---@return boolean
function CameraAttributes.is_auto_exposure_enabled() end

---@param exposure_speed number
function CameraAttributes.set_auto_exposure_speed(exposure_speed) end

---@return number
function CameraAttributes.get_auto_exposure_speed() end

---@param exposure_grey number
function CameraAttributes.set_auto_exposure_scale(exposure_grey) end

---@return number
function CameraAttributes.get_auto_exposure_scale() end
