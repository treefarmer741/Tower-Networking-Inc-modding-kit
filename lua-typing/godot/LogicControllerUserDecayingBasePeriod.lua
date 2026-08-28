---@meta _
-- Generated API for game version 0.12.1

---@class LogicControllerUserDecayingBasePeriod : LogicControllerUser
---@field unlock_conditions Array<any>
---@field base_period_decay_ratio number
---@field logic_controller LogicController
---@field behaviors Array<Program>
---@field hosting_behaviors Array<Program>
---@field public_client_behaviors Array<Program>
---@field user_application_unlocks Array<any>
---@field consumption_payment_scaling number
---@field allow_hwreset boolean
---@field bandwidth_used_last_tick integer
---@field ot_probability number
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
---@field consumption_satiety_last_tick integer
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
---@field custom_user_note string
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
local LogicControllerUserDecayingBasePeriod = {}

---@param min_mult number
---@param max_mult number
---@param duration_secs integer
---@return table<any,any>
function LogicControllerUserDecayingBasePeriod.apply_data_spike(min_mult, max_mult, duration_secs) end

---@param msg string
function LogicControllerUserDecayingBasePeriod.push_surveyor_message(msg) end

---@param release_name string
---@return number
function LogicControllerUserDecayingBasePeriod.get_manifest_roll(release_name) end

---@return Object
function LogicControllerUserDecayingBasePeriod.debug_monitor_callback() end

---@param utc UserTraversal
function LogicControllerUserDecayingBasePeriod.account_intent(utc) end

---@param utc UserTraversal
function LogicControllerUserDecayingBasePeriod.unaccount_intent(utc) end

---@param utc UserTraversal
---@param _ctx_or_pkt Object
function LogicControllerUserDecayingBasePeriod.account_consumption(utc, _ctx_or_pkt) end

---@param vprog Program
---@param ctx_or_pkt Object
---@param _visitor LogicControllerUser
function LogicControllerUserDecayingBasePeriod.account_visitation(vprog, ctx_or_pkt, _visitor) end

---@param time_mult_delta number
function LogicControllerUserDecayingBasePeriod.time_mult_updated(time_mult_delta) end

function LogicControllerUserDecayingBasePeriod.finish_setup() end

function LogicControllerUserDecayingBasePeriod.first_use() end

function LogicControllerUserDecayingBasePeriod.periodic_use() end

function LogicControllerUserDecayingBasePeriod.down() end

---@param new_value string
function LogicControllerUserDecayingBasePeriod.update_user_note(new_value) end
