---@meta _
-- Generated API for game version 0.9.1

---@class FishLoan : Container
---@field loan_offer_item_scn PackedScene
---@field loan_list_item_scn PackedScene
---@field showing_loanlist boolean
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local FishLoan = {}

function FishLoan.launch() end

function FishLoan.minimize() end

---@param msg string
---@param on_confirm (Callable|function)
function FishLoan.show_pingback(msg, on_confirm) end

function FishLoan.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function FishLoan.toast(msg, duration) end

---@return Object
function FishLoan.get_main_pane() end

function FishLoan.minimize() end

function FishLoan.launch() end
