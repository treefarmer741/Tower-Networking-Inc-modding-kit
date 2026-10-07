---@meta _
-- Generated API for game version 0.13.1

---@class Calendar : ScreenApp
---@field tag_check_scn string # Constant value: <PackedScene>
---@field DAYS_PER_PAGE integer # Constant value: 25
---@field TAG_LIST_MAX_ROWS integer # Constant value: 5
---@field day_entry_scn PackedScene
---@field label_chip_scn PackedScene
---@field range_label Label
---@field prev_button Button
---@field next_button Button
---@field day_grid GridContainer
---@field event_chips Container
---@field my_events_panel Container
---@field label_chips Container
---@field day_title Label
---@field add_tag_button Button
---@field tag_panel Control
---@field tag_scroll ScrollContainer
---@field tag_checks Container
---@field tag_separator Control
---@field label_name_edit LineEdit
---@field hue_preview ColorRect
---@field hue_slider HSlider
---@field labels table<any,any>
---@field day_labels table<any,any>
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Calendar = {}

function Calendar.launch() end

function Calendar.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Calendar.toast(msg, duration) end

---@return Object
function Calendar.get_main_pane() end

function Calendar.minimize() end

function Calendar.launch() end
