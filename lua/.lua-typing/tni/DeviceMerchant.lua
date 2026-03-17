---@meta _
-- Generated API for game version 0.10.0

---@class DeviceMerchant : Node
---@field restock_period number
---@field restock_mode DeviceMerchant.RESTOCK_MODE
---@field entry_max_stocks integer
---@field price_multiplier number
---@field price_add_constant integer
---@field warranty_multiplier number
---@field warranty_add_constant integer
---@field listings Array<DeviceListing>
---@field display_name string
---@field description string
---@field display_image Texture2D
local DeviceMerchant = {}
---@enum DeviceMerchant.RESTOCK_MODE
DeviceMerchant.RESTOCK_MODE = {
	["FILL"] = 0,
}

---@param order_list Array<any>
---@param delivery_floor integer?  # Default = 0
---@return boolean
function DeviceMerchant.submit_order(order_list, delivery_floor) end

function DeviceMerchant.restock() end
