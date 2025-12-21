---@meta _
-- Generated API for game version 0.9.1

---@class BalanceCalc : Object
---@field GLOBAL_USER_DAILY_RATE_MULTIPLIER number # Constant value: 1.3
---@field GLOBAL_WARRANTY_PERIOD_DAYS_PER_CYCLE integer # Constant value: 7
---@field GLOBAL_HWGENERATION_DAYS_PER_CYCLE integer # Constant value: 7
---@field GLOBAL_SLOTPACK_MIN integer # Constant value: 3
local BalanceCalc = {}

---@param device_hardware_class DeviceUnit.DeviceHardwareClass
---@param target_controller LogicController
---@return integer
function BalanceCalc.auto_calculate_logic_controller_powerload(device_hardware_class, target_controller) end

---@param du_with_lgctl DeviceUnit
---@return integer
function BalanceCalc.auto_calculate_device_installed_bw(du_with_lgctl) end
