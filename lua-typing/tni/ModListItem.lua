---@meta _
-- Generated API for game version 0.10.11

---@class ModListItem : Panel
---@field manifest ModManifest
---@field icon TextureRect
---@field name_label Label
---@field enable_check CheckButton
---@field issue_label Label
---@field mod_enabled boolean
---@field mod_manager ModManager
---@field is_mouse_within boolean
---@field dragging boolean
---@field dragging_last_mouse_y number
---@field mod_missing boolean
---@field default_index integer
local ModListItem = {}

function ModListItem.update_item() end
