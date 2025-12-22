---@meta _
-- Generated API for game version 0.9.1

---@class Statspie : Container
---@field refresh_timer Timer
---@field pie_chart Sprite2D
---@field domain_name_label Label
---@field producer_label Label
---@field users Array<User>
---@field selected_domain_num Object
---@field domain_names Object
---@field domains_with_consumption Object
---@field domains_with_producer Object
---@field consumption_data Object
---@field main_pane MainDashboard
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Statspie = {}

function Statspie.launch() end

function Statspie.collect_domain_data() end

function Statspie.update_display() end

function Statspie.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Statspie.toast(msg, duration) end

---@return Object
function Statspie.get_main_pane() end

function Statspie.minimize() end

function Statspie.launch() end
