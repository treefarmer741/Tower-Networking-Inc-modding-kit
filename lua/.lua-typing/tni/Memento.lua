---@meta _
-- Generated API for game version 0.9.1

---@class Memento : Container
---@field main_tab TabContainer
---@field dns_entries_ctl Container
---@field netaddr_assigns Container
---@field devunit_tracker Container
---@field ri_scn PackedScene
---@field dut_scn PackedScene
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Memento = {}

function Memento.launch() end

function Memento.minimize() end

function Memento.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Memento.toast(msg, duration) end

---@return Object
function Memento.get_main_pane() end

function Memento.minimize() end

function Memento.launch() end
