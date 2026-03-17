---@meta _
-- Generated API for game version 0.9.1

---@class Decentrometer : Container
---@field node_item_scn PackedScene
---@field an_container Container
---@field sf_container Container
---@field ex_amt_display Label
---@field ex_tot_display Label
---@field ex_buy_price_display Label
---@field ex_sell_price_display Label
---@field ex_arb_price_display Label
---@field ex_exec_button Button
---@field ex_opt_button OptionButton
---@field ex_amt_slider HSlider
---@field ex_refresh_tim Timer
---@field ex_ordcd_tim Timer
---@field ndsel_button OptionButton
---@field ndtot_label Label
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Decentrometer = {}

function Decentrometer.launch() end

function Decentrometer.minimize() end

function Decentrometer.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Decentrometer.toast(msg, duration) end

---@return Object
function Decentrometer.get_main_pane() end

function Decentrometer.minimize() end

function Decentrometer.launch() end
