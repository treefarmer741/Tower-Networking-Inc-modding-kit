---@meta _
-- Generated API for game version 0.10.0

---@class DayCycleController : CanvasModulate
---@field day_period integer
---@field day_offset number
---@field modulation_gradient GradientTexture1D
---@field day_clock number
---@field sunrise_time_float number
---@field sunset_time_float number
---@field main_timer Timer
---@field sampler Timer
---@field day_period_float number
---@field paused boolean
---@field modval number
---@field sampled_time_str string
---@field sampled_day_time_float number
---@field sunrise_happened boolean
---@field sunset_happened boolean
---@field normal_clock number
local DayCycleController = {}

---@param time_mult_delta number
function DayCycleController.time_mult_updated(time_mult_delta) end

---@param new_clk number
function DayCycleController.force_day_clock(new_clk) end

---@param new_clk number
function DayCycleController.force_normal_clock(new_clk) end

---@param dayclk number
---@return Object
function DayCycleController.calculate_day_clock_from_normal_clock(dayclk) end

function DayCycleController.pause_timer() end

function DayCycleController.resume_timer() end

---@return Object
function DayCycleController.debug_monitor_callback() end
