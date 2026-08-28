---@meta _
-- Generated API for game version 0.12.1

---@class PlayMenu : Control
---@field SELECT_STARTING_LOCATION_DEFAULT_TEXT string # Constant value: Select starting location
---@field default_description_scn string # Constant value: <PackedScene>
---@field game_scenarios table<any,any>
---@field hostbtn Button
---@field igninp TextEdit
---@field game_type_tab TabContainer
---@field tutorial_itemlist ItemList
---@field scenario_itemlist ItemList
---@field testing_itemlist ItemList
---@field sdcontain Container
---@field gameoptm Container
---@field gocontain Container
---@field joinctl Container
---@field join_inp TextEdit
---@field rngseed_in TextEdit
---@field diffpreset_in OptionButton
---@field advgotogbtn Button
---@field achlbl Label
---@field select_starting_location_row HBoxContainer
---@field select_starting_location_btn Button
---@field datacenter_sel_container MarginContainer
---@field selected_starting_datacenter_scene PackedScene
---@field last_selected_itemlist ItemList
---@field current_selected_scenario string
local PlayMenu = {}

function PlayMenu.show_lan_joining_options() end

function PlayMenu.hide_lan_joining_options() end

function PlayMenu.reroll_seed() end

---@param index integer
---@param update_last_sel boolean?  # Default = true
function PlayMenu.diffsel(index, update_last_sel) end
