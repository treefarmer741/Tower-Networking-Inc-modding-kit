---@meta _
-- Generated API for game version 0.9.1

---@class TowerLink : Container
---@field tower_link_itm_scn PackedScene
---@field create_page Container
---@field view_page Container
---@field floorsel_a ItemList
---@field floorsel_b ItemList
---@field socksel_a ItemList
---@field socksel_b ItemList
---@field link_sz_sel OptionButton
---@field link_bw_lbl Label
---@field link_ty_lbl Label
---@field setup_cost_quote_lbl Label
---@field daily_cost_quote_lbl Label
---@field link_req_btn Button
---@field quote_descript Label
---@field view_selector OptionButton
---@field view_root_container Container
---@field view_link_container Container
---@field view_tower_container Container
---@field link_view_item_container Container
---@field view_refresh_timer Timer
---@field view_search TextEdit
---@field view_sortsel OptionButton
---@field same_floor_warning Label
---@field a_link_sock LinkOutlet
---@field b_link_sock LinkOutlet
---@field selected_link_outlets Array<LinkOutlet>
---@field tower_view_handler table<any,any>
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local TowerLink = {}

function TowerLink.launch() end

function TowerLink.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function TowerLink.toast(msg, duration) end

---@return Object
function TowerLink.get_main_pane() end

function TowerLink.minimize() end

function TowerLink.launch() end
