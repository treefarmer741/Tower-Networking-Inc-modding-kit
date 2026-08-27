---@meta _
-- Generated API for game version 0.12.1

---@class SplineIK3D : ChainIK3D
---@field setting_count Settings,settings/
local SplineIK3D = {}

---@param index integer
---@param path_3d string
function SplineIK3D.set_path_3d(index, path_3d) end

---@param index integer
---@return string
function SplineIK3D.get_path_3d(index) end

---@param index integer
---@param enabled boolean
function SplineIK3D.set_tilt_enabled(index, enabled) end

---@param index integer
---@return boolean
function SplineIK3D.is_tilt_enabled(index) end

---@param index integer
---@param size integer
function SplineIK3D.set_tilt_fade_in(index, size) end

---@param index integer
---@return integer
function SplineIK3D.get_tilt_fade_in(index) end

---@param index integer
---@param size integer
function SplineIK3D.set_tilt_fade_out(index, size) end

---@param index integer
---@return integer
function SplineIK3D.get_tilt_fade_out(index) end
