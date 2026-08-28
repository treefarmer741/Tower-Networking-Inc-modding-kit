---@meta _
-- Generated API for game version 0.12.1

---@class PlayOptions : Resource
---@field EASIER_EPSILON number # Constant value: 0.0001
---@field rng_seed_str string
---@field starting_cash integer
---@field day_period integer
---@field freeplay boolean
---@field limitless_money boolean
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
---@field tower_wide_user_dhcp_default string
---@field tower_wide_device_dhcp_default string
---@field dhcp_origin_ignores_routing boolean
---@field starting_datacenter_path string
local PlayOptions = {}
---@enum PlayOptions.DiffDir
PlayOptions.DiffDir = {
	["NEUTRAL"] = 0,
	["LOWER_HARDER"] = 1,
	["HIGHER_HARDER"] = 2,
}
---@enum PlayOptions.DIFFICULTY_DIRECTIONS
PlayOptions.DIFFICULTY_DIRECTIONS = {
	["rng_seed_str"] = 0,
	["print_connectivity_troubleshooting_help"] = 0,
	["max_nwaddr_len"] = 0,
	["day_period"] = 0,
	["netaddr_required_for_requests"] = 0,
	["local_dns_mapping"] = 0,
	["debugger_access_costs_bandwidth"] = 0,
	["device_collisions"] = 0,
	["program_autostart"] = 0,
	["user_hwreset_probability"] = 0,
	["tower_wide_user_dhcp_default"] = 0,
	["tower_wide_device_dhcp_default"] = 0,
	["dhcp_origin_ignores_routing"] = 0,
	["starting_datacenter_path"] = 0,
	["early_floorbuild_bonus_factor"] = 0,
	["ppu_change_fee"] = 0,
	["ph_domain_scaling_factor_1"] = 0,
	["tenabolt_penalty"] = 0,
	["lab_mode"] = 0,
	["start_amount_override"] = 0,
	["resource_local_to_scene"] = 0,
	["locked_game_options"] = 0,
	["scenario_name"] = 0,
	["deprecated"] = 0,
	["only_available_in_editor"] = 0,
	["randomize_seed_on_menu"] = 0,
	["is_user_onboarding"] = 0,
	["floor_build_maximum_floors"] = 1,
	["onboarding_max_days_in_q"] = 1,
	["floor_build_period_multiplier"] = 1,
	["freeplay"] = 1,
	["limitless_money"] = 1,
	["waive_power_fee"] = 1,
	["auto_create_dns_mappings"] = 1,
	["infinite_bandwidth_mode"] = 1,
	["see_error_hints_in_world"] = 1,
	["memento_replacement_rate"] = 2,
	["starting_cash"] = 1,
	["max_days_in_debt"] = 1,
	["user_grace_days_multiplier"] = 1,
	["user_sla_breach_time_factor_multiplier"] = 1,
	["proposal_refresh"] = 1,
	["proposal_batch_size"] = 1,
	["socket_installation_cost"] = 2,
	["device_warranty_period_multiplier"] = 1,
	["network_outage_notice_factor"] = 1,
	["memento_daily_rate_per_device"] = 2,
	["user_fee_payment_multiplier"] = 2,
	["daily_admin_expenses"] = 2,
	["admin_fee_scaling_multiplier"] = 2,
	["device_malfunction_occurrence_rate"] = 2,
	["power_outage_occurrence_rate"] = 2,
	["power_surge_occurrence_rate"] = 2,
	["cybattack_occurrence_rate"] = 2,
}

---@param pod table<any,any>
function PlayOptions.set_vals_from_dict(pod) end

---@param baseline PlayOptions
---@return PackedStringArray
function PlayOptions.get_easier_deviations(baseline) end

---@param baseline PlayOptions
---@return boolean
function PlayOptions.is_no_easier_than(baseline) end

function PlayOptions.verify_direction_coverage() end

---@return integer
function PlayOptions.get_difficulty_hash() end

function PlayOptions.set_easy_mode() end

function PlayOptions.set_hard_mode() end

function PlayOptions.set_mp_mode() end

function PlayOptions.set_zen_mode() end

function PlayOptions.set_hard_zen_mode() end
