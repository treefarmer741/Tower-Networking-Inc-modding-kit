---@meta _
-- Generated API for game version 0.13.1

---@class CreditFreezePane : VBoxContainer
---@field BEHAVIOR_KEY string # Constant value: profile-user-behavior
---@field selected_behavior_total integer
---@field payment_method string
local CreditFreezePane = {}

function CreditFreezePane.refresh_devices() end

function CreditFreezePane.start_auto_refresh() end

function CreditFreezePane.stop_auto_refresh() end

---@return Array<any>
function CreditFreezePane.get_selected_device_data() end
