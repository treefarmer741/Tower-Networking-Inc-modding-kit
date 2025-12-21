---@meta _
-- Generated API for game version 0.9.1

---@class Trolley : Area2D
---@field ZINDEX integer # Constant value: 1500
---@field body_tracker Array<any>
---@field product_name string
---@field rendered_description string
---@field price integer
---@field alternate_listing_image Object
---@field target_h number
---@field drag_start_position Object
---@field initial_area_position Object
---@field has_blockage_on_right boolean
---@field has_blockage_on_left boolean
local Trolley = {}

function Trolley.stop_dragging() end

---@param mpos Vector2
function Trolley.update_drag(mpos) end

function Trolley.adjust_height_by_location() end

---@param body Object
function Trolley.accept_body(body) end

---@param mouse_position Vector2
function Trolley.start_dragging(mouse_position) end

---@param new_pos Vector2
function Trolley.elevator_move(new_pos) end

---@param new_pos Object
function Trolley.do_mv(new_pos) end

---@return Object
function Trolley.debug_monitor_callback() end

function Trolley.remove_and_free_object() end
