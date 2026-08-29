---@meta _
-- Generated API for game version 0.12.1

---@class PocosiaRaycast3DMouseMapper : Node3D
---@field hover_events_every_frame boolean
---@field input_type string
---@field input_disabled boolean
---@field visual_enabled boolean
---@field visual_color Color
---@field visual_length number
---@field raycast_mask integer
---@field raycast_distance number
---@field raycast_hit_areas boolean
---@field raycast_hit_bodies boolean
---@field allow_empty_collision_on_signal_or_callback boolean
---@field drag_box_selectable_group string
---@field drag_threshold number
---@field box_visual_color Color
---@field is_drag_boxing_enabled boolean
local PocosiaRaycast3DMouseMapper = {}

---@param collision_res table<any,any>
---@param event InputEventMouseButton
function PocosiaRaycast3DMouseMapper.handle_right_pressed(collision_res, event) end

---@param collision_res table<any,any>
---@param event InputEventMouseButton
function PocosiaRaycast3DMouseMapper.handle_right_released(collision_res, event) end

---@param collision_res table<any,any>
---@param event InputEventMouseButton
function PocosiaRaycast3DMouseMapper.handle_left_pressed(collision_res, event) end

---@param collision_res table<any,any>
---@param event InputEventMouseButton
function PocosiaRaycast3DMouseMapper.handle_left_released(collision_res, event) end

---@param collision_res table<any,any>
---@param event InputEventMouseButton
function PocosiaRaycast3DMouseMapper.handle_middle_pressed(collision_res, event) end

---@param collision_res table<any,any>
---@param event InputEventMouseButton
function PocosiaRaycast3DMouseMapper.handle_middle_released(collision_res, event) end

---@param collision_res table<any,any>
---@param event InputEventMouseMotion
function PocosiaRaycast3DMouseMapper.handle_mouse_hovers(collision_res, event) end

---@param box_sel_colliders Array<any>
function PocosiaRaycast3DMouseMapper.handle_box_select(box_sel_colliders) end

---@param event InputEvent
function PocosiaRaycast3DMouseMapper.handle_input(event) end

---@param layer integer
---@param value boolean
function PocosiaRaycast3DMouseMapper.set_raycast_mask_layer_value(layer, value) end
