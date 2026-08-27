---@meta _
-- Generated API for game version 0.12.1

---@class ModEditor : Control
---@field CAMERA_SMOOTH_SPEED number # Constant value: 50.0
---@field SCENE_TREE_BTN_ID_DELETE integer # Constant value: 1000
---@field mod_manifest ModManifest
---@field scene_tree_items table<Node,TreeItem>
---@field scene_tree_nodes table<TreeItem,Node>
---@field scene_tree_specs table<TreeItem,RefCounted>
---@field selected_spec RefCounted
---@field selected_node Node
---@field asset_browser_path Array<string>
---@field dragging_camera_pos Object
---@field target_node Node2D
local ModEditor = {}

function ModEditor.fade_in() end

function ModEditor.fade_out() end
