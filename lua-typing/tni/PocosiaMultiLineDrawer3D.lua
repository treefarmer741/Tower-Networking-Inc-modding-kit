---@meta _
-- Generated API for game version 0.10.11

---@class PocosiaMultiLineDrawer3D : MeshInstance3D
---@field redraw_frame_interval integer
---@field ref_points table<any,any>
local PocosiaMultiLineDrawer3D = {}

function PocosiaMultiLineDrawer3D.redraw() end

function PocosiaMultiLineDrawer3D.clear_all_lines() end

---@param ref Object
function PocosiaMultiLineDrawer3D.clear_line(ref) end

---@param ref Object
---@param global_a Vector3
---@param global_b Vector3
---@param thickness number?  # Default = 0.3
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
function PocosiaMultiLineDrawer3D.draw_line(ref, global_a, global_b, thickness, color) end

---@return Array<any>
function PocosiaMultiLineDrawer3D.get_references() end
