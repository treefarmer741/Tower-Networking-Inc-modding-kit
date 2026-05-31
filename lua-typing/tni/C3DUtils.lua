---@meta _
-- Generated API for game version 0.10.11

---@class C3DUtils : Object
local C3DUtils = {}

---@param n Node
---@return Array<RID>
function C3DUtils.get_recursive_rids(n) end

---@param packing_area Area3D
---@param to_pack Array<any>
---@param grid_step number?  # Default = 0.1
---@param additional_excludes Object?  # Default = <null>
function C3DUtils.naive_box_packing(packing_area, to_pack, grid_step, additional_excludes) end
