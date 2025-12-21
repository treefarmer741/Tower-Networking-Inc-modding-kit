---@meta _
-- Generated API for game version 0.9.1

---@class PathFollow3D : Node3D
---@field progress number
---@field progress_ratio number
---@field h_offset number
---@field v_offset number
---@field rotation_mode integer
---@field use_model_front boolean
---@field cubic_interp boolean
---@field loop boolean
---@field tilt_enabled boolean
local PathFollow3D = {}

---@param progress number
function PathFollow3D.set_progress(progress) end

---@return number
function PathFollow3D.get_progress() end

---@param h_offset number
function PathFollow3D.set_h_offset(h_offset) end

---@return number
function PathFollow3D.get_h_offset() end

---@param v_offset number
function PathFollow3D.set_v_offset(v_offset) end

---@return number
function PathFollow3D.get_v_offset() end

---@param ratio number
function PathFollow3D.set_progress_ratio(ratio) end

---@return number
function PathFollow3D.get_progress_ratio() end

---@param rotation_mode PathFollow3D.RotationMode
function PathFollow3D.set_rotation_mode(rotation_mode) end

---@return PathFollow3D.RotationMode
function PathFollow3D.get_rotation_mode() end

---@param enabled boolean
function PathFollow3D.set_cubic_interpolation(enabled) end

---@return boolean
function PathFollow3D.get_cubic_interpolation() end

---@param enabled boolean
function PathFollow3D.set_use_model_front(enabled) end

---@return boolean
function PathFollow3D.is_using_model_front() end

---@param loop boolean
function PathFollow3D.set_loop(loop) end

---@return boolean
function PathFollow3D.has_loop() end

---@param enabled boolean
function PathFollow3D.set_tilt_enabled(enabled) end

---@return boolean
function PathFollow3D.is_tilt_enabled() end

---@param transform Transform3D
---@param rotation_mode PathFollow3D.RotationMode
---@return Transform3D
function PathFollow3D.correct_posture(transform, rotation_mode) end
