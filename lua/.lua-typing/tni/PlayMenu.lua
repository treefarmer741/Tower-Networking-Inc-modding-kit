---@meta _
-- Generated API for game version 0.9.1

---@class PlayMenu : Control
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
---@field last_selected_itemlist ItemList
---@field current_selected_scenario string
local PlayMenu = {}

function PlayMenu.show_lan_joining_options() end

function PlayMenu.hide_lan_joining_options() end

function PlayMenu.reroll_seed() end

---@param index integer
---@param update_last_sel boolean?  # Default = true
function PlayMenu.diffsel(index, update_last_sel) end
