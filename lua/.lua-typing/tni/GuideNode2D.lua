---@meta _
-- Generated API for game version 0.10.0

---@class GuideNode2D : Node2D
---@field fulfill boolean
---@field content_anchor_mode LayoutUtils.AnchorMode
---@field target_anchor_mode LayoutUtils.AnchorMode
---@field hide_content_if_inactive boolean
---@field external_content_text string
---@field content CanvasItem
---@field content_pointers Array<CanvasItem>
---@field target CanvasItem
---@field line_color Color
---@field line_width number
---@field activate_when_ready boolean
---@field upstream_guide GuideNode2D
---@field upstream_guide_name string
---@field auto_upstream_guide boolean
---@field activated boolean
local GuideNode2D = {}

---@param t Object
function GuideNode2D.set_input_target(t) end

function GuideNode2D.mark_complete() end

function GuideNode2D.mark_fulfill() end

function GuideNode2D.mark_previous_incomplete() end

function GuideNode2D.activate_guide() end

---@param event InputEvent
function GuideNode2D.handle_gui_input(event) end

---@param _n Node
---@param event InputEvent
---@param _shape_idx integer
function GuideNode2D.handle_collision_input(_n, event, _shape_idx) end
