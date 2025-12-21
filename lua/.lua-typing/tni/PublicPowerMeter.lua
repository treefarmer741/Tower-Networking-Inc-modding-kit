---@meta _
-- Generated API for game version 0.9.1

---@class PublicPowerMeter : Area2D
---@field fine_lbl Label
---@field fine_threshold_kwh number
---@field metering_target PowerController
---@field kwh_price_ratio_base integer
---@field title string
---@field kwh_now number
---@field kwh_price_ratio integer
---@field payment_title string
---@field bill_due integer
---@field logic_controller LogicController
---@field power_controller PowerController
local PublicPowerMeter = {}

---@return Object
function PublicPowerMeter.debug_monitor_callback() end

function PublicPowerMeter.play_surge_effects() end

---@return Object
function PublicPowerMeter.debug_monitor_callback() end
