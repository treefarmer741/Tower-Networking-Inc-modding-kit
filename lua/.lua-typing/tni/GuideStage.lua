---@meta _
-- Generated API for game version 0.9.1

---@class GuideStage : Resource
---@field text_content string
---@field stage_key string
---@field target_anchor_mode LayoutUtils.AnchorMode
---@field line_color Color
---@field line_width number
---@field origin_guide GuideNode2D
---@field stage_idx integer
local GuideStage = {}

function GuideStage.mark_complete() end

---@param origin GuideNode2D
---@param stage_id integer
function GuideStage.setup_stage(origin, stage_id) end

---@param key string
---@param _target_n CanvasItem
function GuideStage.handle_target_ready(key, _target_n) end

function GuideStage.overwrite_origin_draw_settings() end
