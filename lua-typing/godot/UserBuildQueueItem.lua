---@meta _
-- Generated API for game version 0.12.1

---@class UserBuildQueueItem : VBoxContainer
---@field user_row_item_scene string # Constant value: <PackedScene>
---@field uq_ref table<any,any>
---@field user_row_container Container
---@field group_name_lbl Label
---@field final_date_lbl Label
---@field no_user_lbl Label
---@field extra_descript RichTextLabel
---@field upfront_lbl Label
---@field upfront_ct Container
---@field sla_lbl Label
---@field outlet_spacing number
---@field user_cache table<any,any>
---@field user_scene_paths Array<any>
---@field final_date integer
---@field uq_qid integer
---@field curr_ghosts Array<FixtureOutlet>
---@field placed_ghost FixtureOutlet
---@field placement_panel PanelContainer
---@field select_all_checkbox CheckBox
---@field socketsel OptionButton
---@field placebutton Button
---@field cfmbutton Button
---@field sviewport SubViewport
---@field placeable_outlets Array<any>
local UserBuildQueueItem = {}

---@param breach_timer Timer
function UserBuildQueueItem.start_breach_display(breach_timer) end

---@param rpath string
---@return Object
function UserBuildQueueItem.get_user_ref_from_path(rpath) end

function UserBuildQueueItem.cleanup() end

function UserBuildQueueItem.minimize() end
