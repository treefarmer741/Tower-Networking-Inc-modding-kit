---@meta _
-- Generated API for game version 0.10.0

---@class SkeletonModification2D : Resource
---@field enabled boolean
---@field execution_mode integer
local SkeletonModification2D = {}

---@param enabled boolean
function SkeletonModification2D.set_enabled(enabled) end

---@return boolean
function SkeletonModification2D.get_enabled() end

---@return SkeletonModificationStack2D
function SkeletonModification2D.get_modification_stack() end

---@param is_setup boolean
function SkeletonModification2D.set_is_setup(is_setup) end

---@return boolean
function SkeletonModification2D.get_is_setup() end

---@param execution_mode integer
function SkeletonModification2D.set_execution_mode(execution_mode) end

---@return integer
function SkeletonModification2D.get_execution_mode() end

---@param angle number
---@param min number
---@param max number
---@param invert boolean
---@return number
function SkeletonModification2D.clamp_angle(angle, min, max, invert) end

---@param draw_gizmo boolean
function SkeletonModification2D.set_editor_draw_gizmo(draw_gizmo) end

---@return boolean
function SkeletonModification2D.get_editor_draw_gizmo() end
