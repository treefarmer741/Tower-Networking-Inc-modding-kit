---@meta _
-- Generated API for game version 0.12.1

---@class PocosiaR3DMMGhostPlacement : PocosiaRaycast3DMouseMapperFeature
---@field placement_ghost Node3D
local PocosiaR3DMMGhostPlacement = {}

---@param final_collision table<any,any>
function PocosiaR3DMMGhostPlacement.on_ghost_placement_confirmed(final_collision) end

function PocosiaR3DMMGhostPlacement.on_ghost_placement_cancelled() end

---@param new_placement_ghost Node3D
---@param alter_material boolean?  # Default = true
---@param alter_material_override StandardMaterial3D?  # Default = <null>
function PocosiaR3DMMGhostPlacement.begin_ghost_placement(new_placement_ghost, alter_material, alter_material_override) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_right_pressed(_collision, _event) end

---@param collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_left_pressed(collision, _event) end

---@param collision table<any,any>
---@param _event InputEventMouseMotion
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_mouse_hover(collision, _event) end

function PocosiaR3DMMGhostPlacement.cancel_ghost_placement() end

---@param final_collision table<any,any>
function PocosiaR3DMMGhostPlacement.confirm_ghost_placement(final_collision) end

---@param hover_collision table<any,any>
function PocosiaR3DMMGhostPlacement.update_ghost_on_hover(hover_collision) end

---@param ghost_subject3d Node3D
---@param alter_material boolean?  # Default = true
---@param alter_material_override StandardMaterial3D?  # Default = <null>
function PocosiaR3DMMGhostPlacement.make_node3d_as_ghost(ghost_subject3d, alter_material, alter_material_override) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_right_pressed(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_right_released(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_left_pressed(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_left_released(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_middle_pressed(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_middle_released(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseMotion
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_mouse_hover(_collision, _event) end

---@param _colliders Array<any>
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaR3DMMGhostPlacement.on_box_select(_colliders) end
