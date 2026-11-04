---@meta _
-- Generated API for game version 0.10.0

---@class PathFollow2D : Node2D
---@field progress number
---@field progress_ratio number
---@field h_offset number
---@field v_offset number
---@field rotates boolean
---@field cubic_interp boolean
---@field loop boolean
local PathFollow2D = {}

---@param progress number
function PathFollow2D.set_progress(progress) end

---@return number
function PathFollow2D.get_progress() end

---@param h_offset number
function PathFollow2D.set_h_offset(h_offset) end

---@return number
function PathFollow2D.get_h_offset() end

---@param v_offset number
function PathFollow2D.set_v_offset(v_offset) end

---@return number
function PathFollow2D.get_v_offset() end

---@param ratio number
function PathFollow2D.set_progress_ratio(ratio) end

---@return number
function PathFollow2D.get_progress_ratio() end

---@param enabled boolean
function PathFollow2D.set_rotates(enabled) end

---@return boolean
function PathFollow2D.is_rotating() end

---@param enabled boolean
function PathFollow2D.set_cubic_interpolation(enabled) end

---@return boolean
function PathFollow2D.get_cubic_interpolation() end

---@param loop boolean
function PathFollow2D.set_loop(loop) end

---@return boolean
function PathFollow2D.has_loop() end
