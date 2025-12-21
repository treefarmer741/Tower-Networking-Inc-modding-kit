---@meta _
-- Generated API for game version 0.9.1

---@class GizmoUtils : Object
local GizmoUtils = {}
---@enum GizmoUtils.T
GizmoUtils.T = {
	["arbitrary_code"] = 0,
	["left_clicked"] = 1,
	["left_button_held"] = 2,
	["left_released"] = 3,
}

---@param g Node3D
---@return Object
function GizmoUtils.is_gizmo_input(g) end

---@param g Node3D
---@return Object
function GizmoUtils.is_gizmo_output(g) end

---@param p Node3D
---@param callback (Callable|function)
---@param inputs table<any,any>
---@param outputs table<any,any>
function GizmoUtils.register_gizmo_signals(p, callback, inputs, outputs) end

---@param inputs table<any,any>
---@param outputs table<any,any>
---@param ensure_inputs Array<string>?  # Default = <null>
---@param ensure_outputs Array<string>?  # Default = <null>
function GizmoUtils.ensure_gizmos(inputs, outputs, ensure_inputs, ensure_outputs) end
