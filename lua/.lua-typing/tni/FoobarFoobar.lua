---@meta _
-- Generated API for game version 0.9.1

---@class FoobarFoobar : Container
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local FoobarFoobar = {}

function FoobarFoobar.launch() end

function FoobarFoobar.minimize() end

function FoobarFoobar.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function FoobarFoobar.toast(msg, duration) end

---@return Object
function FoobarFoobar.get_main_pane() end

function FoobarFoobar.minimize() end

function FoobarFoobar.launch() end
