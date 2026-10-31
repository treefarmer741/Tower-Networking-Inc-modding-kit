---@meta _
-- Generated API for game version 0.13.4

---@class Towersatietybar : DashboardApp
---@field WARNING_FONT_COLOR Color # Constant value: (0.5922, 0.0, 0.0, 1.0)
---@field HEATMAP_GRID_WIDTH integer # Constant value: 230
---@field HEATMAP_CELL_MAX integer # Constant value: 32
---@field HEATMAP_CELL_MIN integer # Constant value: 16
---@field refresh_timer Timer
---@field chart_panel PanelContainer
---@field barline_chart Node2D
---@field page_label Label
---@field avg_value Label
---@field fulfilled_value Label
---@field warnings_value Label
---@field next_button Button
---@field heatmap_toggle Button
---@field heatmap_legend HBoxContainer
---@field heatmap_scale TextureRect
---@field heatmap_panel PanelContainer
---@field heatmap_rows VBoxContainer
---@field heatmap_timer Timer
---@field floors_per_group integer
---@field floor_heatmap_row_scene PackedScene
---@field current_floor_group Object
---@field main_pane MainDashboard
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Towersatietybar = {}

function Towersatietybar.launch() end

function Towersatietybar.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Towersatietybar.toast(msg, duration) end

---@return Object
function Towersatietybar.get_main_pane() end

function Towersatietybar.minimize() end

function Towersatietybar.launch() end
