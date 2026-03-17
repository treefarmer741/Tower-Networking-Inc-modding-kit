---@meta _
-- Generated API for game version 0.10.0

---@class UserBehaviourListItem : Container
---@field u LogicControllerUser
---@field p UserTraversal
---@field histrtf RichTextLabel
---@field sat2lbl Label
---@field twlb Label
---@field trv_container Container
---@field svbox Label
---@field imptlb Label
---@field produces_container Container
---@field produces_lb Label
---@field consumes_container Container
---@field consumes_lb Label
---@field theme_container Container
---@field theme_lb Label
local UserBehaviourListItem = {}

---@param val integer
---@param zval string?  # Default = n/a
---@return string
function UserBehaviourListItem.format_nbr(val, zval) end
