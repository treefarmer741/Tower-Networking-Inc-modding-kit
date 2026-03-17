---@meta _
-- Generated API for game version 0.10.0

---@class Surveyor : Container
---@field satiety_per_color_level number # Constant value: 3.0
---@field satiety_level_color Array<any> # Constant value: [(1.0, 0.6, 0.0, 1.0), (1.0, 1.0, 0.0, 1.0), (0.8, 1.0, 0.2, 1.0), (0.6, 1.0, 0.2, 1.0), (0.4, 1.0, 0.2, 1.0), (0.2, 0.8, 0.2, 1.0), (0.0, 1.0, 0.0, 1.0), (0.0, 1.0, 0.6, 1.0), (0.0, 1.0, 0.8, 1.0), (0.0, 0.8, 0.9333, 1.0)]
---@field user_list_item_scene PackedScene
---@field user_detail_panel_scene PackedScene
---@field floor_list_item_scene PackedScene
---@field floor_detail_panel_scene PackedScene
---@field user_total_lbl Label
---@field main_scroll_last_vscroll integer
---@field search_text string
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Surveyor = {}

---@param test_sat_ratio number
---@param min_sat_ratio number
---@return Color
function Surveyor.get_color_on_satiety(test_sat_ratio, min_sat_ratio) end

function Surveyor.launch() end

function Surveyor.show_survey_page() end

function Surveyor.minimize() end

function Surveyor.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Surveyor.toast(msg, duration) end

---@return Object
function Surveyor.get_main_pane() end

function Surveyor.minimize() end

function Surveyor.launch() end
