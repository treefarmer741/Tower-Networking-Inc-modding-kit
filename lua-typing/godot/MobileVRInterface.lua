---@meta _
-- Generated API for game version 0.10.0

---@class MobileVRInterface : XRInterface
---@field eye_height number
---@field iod number
---@field display_width number
---@field display_to_lens number
---@field offset_rect Rect2
---@field oversample number
---@field k1 number
---@field k2 number
---@field vrs_min_radius number
---@field vrs_strength number
local MobileVRInterface = {}

---@param eye_height number
function MobileVRInterface.set_eye_height(eye_height) end

---@return number
function MobileVRInterface.get_eye_height() end

---@param iod number
function MobileVRInterface.set_iod(iod) end

---@return number
function MobileVRInterface.get_iod() end

---@param display_width number
function MobileVRInterface.set_display_width(display_width) end

---@return number
function MobileVRInterface.get_display_width() end

---@param display_to_lens number
function MobileVRInterface.set_display_to_lens(display_to_lens) end

---@return number
function MobileVRInterface.get_display_to_lens() end

---@param offset_rect Rect2
function MobileVRInterface.set_offset_rect(offset_rect) end

---@return Rect2
function MobileVRInterface.get_offset_rect() end

---@param oversample number
function MobileVRInterface.set_oversample(oversample) end

---@return number
function MobileVRInterface.get_oversample() end

---@param k number
function MobileVRInterface.set_k1(k) end

---@return number
function MobileVRInterface.get_k1() end

---@param k number
function MobileVRInterface.set_k2(k) end

---@return number
function MobileVRInterface.get_k2() end

---@return number
function MobileVRInterface.get_vrs_min_radius() end

---@param radius number
function MobileVRInterface.set_vrs_min_radius(radius) end

---@return number
function MobileVRInterface.get_vrs_strength() end

---@param strength number
function MobileVRInterface.set_vrs_strength(strength) end
