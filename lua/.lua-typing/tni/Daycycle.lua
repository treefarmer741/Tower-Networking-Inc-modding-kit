---@meta _
-- Generated API for game version 0.9.1

---@class Daycycle : Node
---@field RESERVED_GROUP_NAME string # Constant value: pocosia_day_cyclers
---@field day_period number
---@field day_offset number
---@field auto_cycle boolean
---@field body_to_rotate Node3D
---@field sample_period number
---@field day_timer Timer
---@field sample_timer Timer
---@field sampled_day_float number
---@field sampled_modulator_float number
local Daycycle = {}

---@param new_float number
function Daycycle.set_day_float(new_float) end

function Daycycle.start_day_cycle() end
