---@meta _
-- Generated API for game version 0.13.1

---@class DayCycleController : CanvasModulate
---@field DEFAULT_DARKNESS number # Constant value: 0.6
---@field DEFAULT_TINT_STRENGTH number # Constant value: 0.5
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
---@field dark_mode boolean
---@field lighting_darkness number
---@field lamp_mode DayCycleController.LampMode
---@field tint_hue number
---@field tint_strength number
---@field sampled_time_str string
---@field sampled_day_time_float number
---@field sunrise_happened boolean
---@field sunset_happened boolean
---@field normal_clock number
local DayCycleController = {}
---@enum DayCycleController.LampMode
DayCycleController.LampMode = {
	["DEFAULT"] = 0,
	["OFF"] = 1,
	["ON"] = 2,
}

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

---@param dark boolean
---@param darkness number
---@param lamps DayCycleController.LampMode
function DayCycleController.set_lighting(dark, darkness, lamps) end

---@param hue number
---@param strength number
function DayCycleController.set_tint(hue, strength) end

function DayCycleController.reset_lighting() end

---@param dark boolean
---@param darkness number
---@param hue number
---@param strength number
---@return Color
function DayCycleController.lumen_color(dark, darkness, hue, strength) end
