---@meta _
-- Generated API for game version 0.10.0

---@class TutorialBoard : Control
---@field LEFT_HIDE_SUBVAL integer # Constant value: 30
---@field s_tutorial_item_container Object
---@field tutorial_item_container Object
---@field main_button Object
---@field quick_reference_container Object
---@field quick_reference_minimize_button Object
---@field complete_guide_container Object
---@field complete_guide_minimize_button Object
---@field tutorial_item_scn PackedScene
---@field s_tutorial_item_scn PackedScene
---@field max_tutorial_items_count integer
---@field last_tutorial_name string
---@field current_tutorial_name string
---@field tutorial_items Array<any>
---@field s_tutorial_items Array<any>
---@field s_scroll_container_max_scroll_length Object
---@field s_scrollbar Object
---@field twn Tween
local TutorialBoard = {}

function TutorialBoard.handle_scrollbar_changed() end

function TutorialBoard.cleanup() end

function TutorialBoard.refresh() end

---@param step string
function TutorialBoard.refresh_items_status_by_action(step) end

---@param title Object
---@param des Object
---@param step Object
---@param fulfill Object
function TutorialBoard.register_item(title, des, step, fulfill) end

function TutorialBoard.pull_right() end

function TutorialBoard.pull_left() end
