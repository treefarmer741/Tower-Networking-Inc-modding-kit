---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRActionSet : Resource
---@field localized_name string
---@field priority integer
---@field actions OpenXRAction
local OpenXRActionSet = {}

---@param localized_name string
function OpenXRActionSet.set_localized_name(localized_name) end

---@return string
function OpenXRActionSet.get_localized_name() end

---@param priority integer
function OpenXRActionSet.set_priority(priority) end

---@return integer
function OpenXRActionSet.get_priority() end

---@return integer
function OpenXRActionSet.get_action_count() end

---@param actions Array<any>
function OpenXRActionSet.set_actions(actions) end

---@return Array<any>
function OpenXRActionSet.get_actions() end

---@param action OpenXRAction
function OpenXRActionSet.add_action(action) end

---@param action OpenXRAction
function OpenXRActionSet.remove_action(action) end
