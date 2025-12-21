---@meta _
-- Generated API for game version 0.9.1

---@class AudioListener3D : Node3D
---@field doppler_tracking integer
local AudioListener3D = {}

function AudioListener3D.make_current() end

function AudioListener3D.clear_current() end

---@return boolean
function AudioListener3D.is_current() end

---@return Transform3D
function AudioListener3D.get_listener_transform() end

---@param mode AudioListener3D.DopplerTracking
function AudioListener3D.set_doppler_tracking(mode) end

---@return AudioListener3D.DopplerTracking
function AudioListener3D.get_doppler_tracking() end
