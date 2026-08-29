---@meta _
-- Generated API for game version 0.12.1

---@class SurvivalLoan : ScreenApp
---@field loan_offer_item_scn PackedScene
---@field loan_list_item_scn PackedScene
---@field showing_loanlist boolean
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local SurvivalLoan = {}

function SurvivalLoan.launch() end

function SurvivalLoan.minimize() end

---@param msg string
---@param on_confirm (Callable|function)
function SurvivalLoan.show_pingback(msg, on_confirm) end

function SurvivalLoan.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function SurvivalLoan.toast(msg, duration) end

---@return Object
function SurvivalLoan.get_main_pane() end

function SurvivalLoan.minimize() end

function SurvivalLoan.launch() end
