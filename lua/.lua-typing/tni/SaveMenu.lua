---@meta _
-- Generated API for game version 0.9.1

---@class SaveMenu : Container
---@field is_in_game_menu boolean
---@field save_itemlist ItemList
---@field load_controls Container
---@field delete_button Button
---@field save_controls Container
---@field save_textin TextEdit
---@field save_button Button
---@field back_button Button
---@field disp_label Label
---@field scon SaveController
---@field mphost_button Button
---@field filter_textin TextEdit
---@field current_selected_save string
---@field existing_saves Array<string>
local SaveMenu = {}

---@param contain_s string?  # Default = 
function SaveMenu.rescan_saves(contain_s) end
