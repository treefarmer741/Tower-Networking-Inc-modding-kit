---@meta _
-- Generated API for game version 0.12.1

---@class PocosiaRaycast3DMouseMapperFeature : Node
local PocosiaRaycast3DMouseMapperFeature = {}
---@enum PocosiaRaycast3DMouseMapperFeature.Result
PocosiaRaycast3DMouseMapperFeature.Result = {
	["BREAK"] = 0,
	["PASS"] = 1,
}

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_right_pressed(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_right_released(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_left_pressed(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_left_released(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_middle_pressed(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseButton
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_middle_released(_collision, _event) end

---@param _collision table<any,any>
---@param _event InputEventMouseMotion
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_mouse_hover(_collision, _event) end

---@param _colliders Array<any>
---@return PocosiaRaycast3DMouseMapperFeature.Result
function PocosiaRaycast3DMouseMapperFeature.on_box_select(_colliders) end
