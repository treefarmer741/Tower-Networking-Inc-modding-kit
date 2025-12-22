---@meta _
-- Generated API for game version 0.9.1

---@class AppEntryItem : Container
---@field SAL_scene string # Constant value: <PackedScene>
---@field app_scene PackedScene
---@field icon_texture Texture2D
---@field title string
---@field description string
---@field license_cost integer
---@field main_pane MainPane
---@field locally_installed boolean
local AppEntryItem = {}

function AppEntryItem.update_status() end
