---@meta _
-- Generated API for game version 0.9.1

---@class LogicControlModule : Node
---@field host_controller LogicController
local LogicControlModule = {}

---@param save_obj Object
function LogicControlModule.handle_save(save_obj) end

---@param save_obj Object
function LogicControlModule.handle_load(save_obj) end

---@return Array<string>
function LogicControlModule.get_save_var_list() end
