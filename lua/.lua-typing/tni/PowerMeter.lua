---@meta _
-- Generated API for game version 0.9.1

---@class PowerMeter : Area2D
---@field metering_target PowerController
---@field kwh_price_ratio_base integer
---@field title string
---@field kwh_now number
---@field kwh_price_ratio integer
---@field payment_title string
---@field bill_due integer
---@field logic_controller LogicController
---@field power_controller PowerController
local PowerMeter = {}

---@return Object
function PowerMeter.debug_monitor_callback() end

function PowerMeter.play_surge_effects() end

---@return Object
function PowerMeter.debug_monitor_callback() end
