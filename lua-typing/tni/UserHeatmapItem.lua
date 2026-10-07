---@meta _
-- Generated API for game version 0.13.1

---@class UserHeatmapItem : HBoxContainer
---@field heatmap_container GridContainer
---@field texture_placeholder TextureRect
---@field sla_count_lbl Label
local UserHeatmapItem = {}

---@param users Array<any>
function UserHeatmapItem.set_users(users) end

function UserHeatmapItem.refresh() end

function UserHeatmapItem.set_as_legend() end
