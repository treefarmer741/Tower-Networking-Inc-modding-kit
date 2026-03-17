---@meta _
-- Generated API for game version 0.9.1

---@class IngameNotificationSystem : Control
---@field ign_scn Object
local IngameNotificationSystem = {}

---@param msg string
---@param linger_seconds integer?  # Default = 10
---@param style_type string?  # Default = default
function IngameNotificationSystem.display(msg, linger_seconds, style_type) end

function IngameNotificationSystem.clear_notifications() end
