---@meta _
-- Generated API for game version 0.10.11

---@class UnlockableFloorItem : PanelContainer
---@field upn_scn string # Constant value: <PackedScene>
---@field info_d table<any,any>
local UnlockableFloorItem = {}

---@param hide_known_or_unlocked boolean?  # Default = true
function UnlockableFloorItem.refresh_lock_state(hide_known_or_unlocked) end
