---@meta _
-- Generated API for game version 0.9.1

---@class CameraAttributesPhysical : CameraAttributes
---@field frustum_focus_distance number
---@field frustum_focal_length number
---@field frustum_near number
---@field frustum_far number
---@field exposure_aperture number
---@field exposure_shutter_speed number
---@field auto_exposure_min_exposure_value number
---@field auto_exposure_max_exposure_value number
local CameraAttributesPhysical = {}

---@param aperture number
function CameraAttributesPhysical.set_aperture(aperture) end

---@return number
function CameraAttributesPhysical.get_aperture() end

---@param shutter_speed number
function CameraAttributesPhysical.set_shutter_speed(shutter_speed) end

---@return number
function CameraAttributesPhysical.get_shutter_speed() end

---@param focal_length number
function CameraAttributesPhysical.set_focal_length(focal_length) end

---@return number
function CameraAttributesPhysical.get_focal_length() end

---@param focus_distance number
function CameraAttributesPhysical.set_focus_distance(focus_distance) end

---@return number
function CameraAttributesPhysical.get_focus_distance() end

---@param near number
function CameraAttributesPhysical.set_near(near) end

---@return number
function CameraAttributesPhysical.get_near() end

---@param far number
function CameraAttributesPhysical.set_far(far) end

---@return number
function CameraAttributesPhysical.get_far() end

---@return number
function CameraAttributesPhysical.get_fov() end

---@param exposure_value_max number
function CameraAttributesPhysical.set_auto_exposure_max_exposure_value(exposure_value_max) end

---@return number
function CameraAttributesPhysical.get_auto_exposure_max_exposure_value() end

---@param exposure_value_min number
function CameraAttributesPhysical.set_auto_exposure_min_exposure_value(exposure_value_min) end

---@return number
function CameraAttributesPhysical.get_auto_exposure_min_exposure_value() end
