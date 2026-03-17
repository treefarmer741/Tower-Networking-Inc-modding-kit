---@meta _
-- Generated API for game version 0.10.0

---@class User : Node
---@field description string
---@field user_profile_name string
---@field base_use_period number
---@field use_period_variance number
---@field downtime_sla_seconds integer
---@field init_grace_days integer
---@field daily_rate integer
---@field eagerness_factor integer
---@field max_satiety_decay_ratio number
---@field satiety_sla_ratio number
---@field active_time_float number
---@field inactive_time_float number
---@field fulfilment_penalty_factor number
---@field icon_texture Texture2D
---@field unknown_user boolean
---@field satiety_ratio number
---@field is_active boolean
---@field average_satiety_ratio_last_tick number
---@field lowest_satiety_ratio number
---@field usage_fulfilment_today number
---@field use_timer Timer
---@field down_timer Timer
---@field grace_days_left integer
---@field rng RandomNumberGenerator
---@field location Location
---@field username_fixed boolean
---@field username string
---@field previous_active_state boolean
local User = {}

---@param time_mult_delta number
function User.time_mult_updated(time_mult_delta) end

function User.finish_setup() end

function User.first_use() end

function User.periodic_use() end

function User.down() end
