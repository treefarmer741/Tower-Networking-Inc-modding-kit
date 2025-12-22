---@meta _
-- Generated API for game version 0.9.1

---@class UserItem : PanelContainer
---@field bhv_scn string # Constant value: <PackedScene>
---@field info_d table<any,any>
local UserItem = {}

---@param hide_known_or_unlocked boolean?  # Default = true
function UserItem.refresh_lock_state(hide_known_or_unlocked) end
