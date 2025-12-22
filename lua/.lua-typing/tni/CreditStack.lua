---@meta _
-- Generated API for game version 0.9.1

---@class CreditStack : Container
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local CreditStack = {}

function CreditStack.launch() end

function CreditStack.minimize() end

function CreditStack.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function CreditStack.toast(msg, duration) end

---@return Object
function CreditStack.get_main_pane() end

function CreditStack.minimize() end

function CreditStack.launch() end
