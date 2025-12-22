---@meta _
-- Generated API for game version 0.9.1

---@class Registry : Container
---@field di_scn string # Constant value: <PackedScene>
---@field reg_page Container
---@field main_page Container
---@field list_page Container
---@field final_page Container
---@field kbpage_active boolean
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Registry = {}

function Registry.hide_all() end

function Registry.back_to_main() end

function Registry.show_domain_list() end

function Registry.launch() end

function Registry.minimize() end

function Registry.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Registry.toast(msg, duration) end

---@return Object
function Registry.get_main_pane() end

function Registry.minimize() end

function Registry.launch() end
