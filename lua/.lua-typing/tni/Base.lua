---@meta _
-- Generated API for game version 0.9.1

---@class Base : Node
---@field logic_controller LogicController
---@field behaviors Array<Program>
---@field user_application_unlocks Array<any>
---@field consumption_payment_scaling number
---@field allow_hwreset boolean
---@field bandwidth_used_last_tick integer
---@field program_manifest_rolls table<any,any>
---@field bandwidth_used_this_tick integer
---@field consumption_total_this_tick integer
---@field consumption_satiety_this_tick integer
---@field visitation_satiety_last_tick integer
---@field visitation_satiety_this_tick integer
---@field surveyor_messages Array<any>
---@field visitor_stats table<any,any>
---@field visitor_stats_last_tick table<any,any>
---@field surveyor_daily_incidents Array<any>
---@field surveyor_msg_stra Array<any>
---@field payment_calculation_method LogicControllerUser.PaymentCalculationMethod
---@field payment_today integer
---@field user_hostings Array<any>
---@field required_visitation_satiety_per_tick integer
---@field csr number
---@field vsr number
---@field visitor_reset_modulo_n integer
---@field consumption_total_last_tick integer
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
local Base = {}

---@param msg string
function Base.push_surveyor_message(msg) end

---@param release_name string
---@return number
function Base.get_manifest_roll(release_name) end

---@return Object
function Base.debug_monitor_callback() end

---@param utc UserTraversal
function Base.account_intent(utc) end

---@param utc UserTraversal
function Base.unaccount_intent(utc) end

---@param utc UserTraversal
---@param _context TraversalContext
function Base.account_consumption(utc, _context) end

---@param vprog Program
---@param context TraversalContext
---@param _visitor LogicControllerUser
function Base.account_visitation(vprog, context, _visitor) end

---@param time_mult_delta number
function Base.time_mult_updated(time_mult_delta) end

function Base.finish_setup() end

function Base.first_use() end

function Base.periodic_use() end

function Base.down() end
