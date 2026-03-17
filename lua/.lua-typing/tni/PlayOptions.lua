---@meta _
-- Generated API for game version 0.10.0

---@class PlayOptions : Resource
---@field rng_seed_str string
---@field starting_cash integer
---@field day_period integer
---@field freeplay boolean
---@field waive_power_fee boolean
---@field auto_create_dns_mappings boolean
---@field print_connectivity_troubleshooting_help boolean
---@field see_error_hints_in_world boolean
---@field infinite_bandwidth_mode boolean
---@field netaddr_required_for_requests boolean
---@field max_days_in_debt integer
---@field user_fee_payment_multiplier number
---@field daily_admin_expenses integer
---@field user_grace_days_multiplier number
---@field user_sla_breach_time_factor_multiplier number
---@field proposal_refresh integer
---@field proposal_batch_size integer
---@field device_collisions boolean
---@field debugger_access_costs_bandwidth boolean
---@field local_dns_mapping boolean
---@field program_autostart boolean
---@field socket_installation_cost integer
---@field device_malfunction_occurrence_rate number
---@field power_outage_occurrence_rate number
---@field power_surge_occurrence_rate number
---@field device_warranty_period_multiplier number
---@field floor_build_maximum_floors integer
---@field network_outage_notice_factor integer
---@field admin_fee_scaling_multiplier number
---@field onboarding_max_days_in_q integer
---@field cybattack_occurrence_rate number
---@field user_hwreset_probability number
---@field memento_daily_rate_per_device integer
---@field memento_replacement_rate number
---@field early_floorbuild_bonus_factor integer
---@field max_nwaddr_len integer
---@field ppu_change_fee integer
---@field ph_domain_scaling_factor_1 integer
---@field lab_mode boolean
---@field floor_build_period_multiplier number
---@field tenabolt_penalty integer
---@field start_amount_override integer
local PlayOptions = {}

---@param pod table<any,any>
function PlayOptions.set_vals_from_dict(pod) end

---@return integer
function PlayOptions.get_difficulty_hash() end

function PlayOptions.set_easy_mode() end

function PlayOptions.set_hard_mode() end

function PlayOptions.set_mp_mode() end

function PlayOptions.set_zen_mode() end

function PlayOptions.set_hard_zen_mode() end
