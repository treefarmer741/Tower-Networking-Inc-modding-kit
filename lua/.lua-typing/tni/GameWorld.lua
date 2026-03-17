---@meta _
-- Generated API for game version 0.10.0

---@class GameWorld : Node2D
---@field mobile_os_scn Object # Constant value: <PackedScene#-9223369052137631579>
---@field BASE_ACCL Array<any> # Constant value: ["using", "from", "with", "rename", "traffic", "/etc/routes.conf", "/etc/dhcpd.conf", "/etc/nftables.conf", "/etc/dns.zone", "/etc/vlan.tags", "/bin/rtkernel", "/bin/vlanfirm", "/bin/wirerat", "/bin/firewatcher"]
---@field phctl_scn Object # Constant value: <PackedScene#-9223369050275361657>
---@field dmctl_scn Object # Constant value: <PackedScene#-9223369049772045160>
---@field is_state_restored boolean
---@field play_options PlayOptions
---@field game_stats GameStatistics
---@field scenario_name string
---@field disable_daycycles boolean
---@field loop_day boolean
---@field default_application_unlocks Array<any>
---@field netsh_default_always boolean
---@field autosave_enabled boolean
---@field consumer_goes_easy_due_to_producer_grace boolean
---@field main_scon SaveController
---@field time_mult number
---@field dns_lookup table<any,any>
---@field nwaddr_lookup table<any,any>
---@field scene_res_path string
---@field elevator_fee_per_floor integer
---@field elevator_time_per_floor number
---@field rng_seed integer
---@field n_days integer
---@field days_in_debt integer
---@field mobile_os_cvl MobileOSLayer
---@field app_licenses Array<any>
---@field day_opening_balance integer
---@field auto_complete_candidate_list Array<any>
---@field just_loaded_in_on_this_day boolean
---@field migration_srack_c integer
---@field difficulty_hash integer
---@field unlocks_or_achievements_allowed boolean
---@field difficulty_level string
---@field n_player_msg integer
---@field player_messages Array<GameMessage>
---@field player_cash_balance integer
---@field player_transactions Array<CreditTransaction>
---@field player_transaction_count integer
---@field daycycle_controller DayCycleController
---@field device_failure_controller RandomEvent
---@field power_outage_controller RandomEvent
---@field power_surge_controller RandomEvent
---@field worm_spawn_controller RandomEvent
---@field loan_controller LoanController
---@field decentromarket_controller DecentroMarketController
---@field playerhosting_controller PlayerHostingController
---@field player_hostings Array<PlayerHosting>
---@field propmod_controller PropModController
---@field available_programs Array<PackedScene>
---@field player_loans Array<CreditLoan>
---@field users Array<User>
---@field user_hostings Array<UserHosting>
---@field user_fqdn_usedescripts Array<string>
---@field registered_domains Array<string>
---@field floor_builders Array<FloorBuilder>
---@field locations Array<Location>
---@field link_controller LinkController
---@field onboarding_controller OnboardingController
---@field device_merchants Array<DeviceMerchant>
---@field players Array<MultiplayerMouse>
---@field device_unit_nodes Node2D
---@field component_nodes Node2D
---@field fixture_nodes Node2D
---@field mp_spawn MultiplayerSpawner
---@field cron_controller CronController
---@field menuconf Object
---@field base_engine_tsms integer
---@field engine_tsms_since_base integer
---@field msand Sandbox
---@field payment_due_today integer
---@field base_payment_breakdown table<any,any>
---@field admin_fee_mult number
---@field power_fee_mult number
---@field network_fee_mult number
---@field link_fee_mult number
---@field save_pathdir string
---@field last_autosave_time number
---@field client_last_node_spawn_ts integer
---@field client_time_since_last_spawn_ms integer
---@field client_spawns_initialized boolean
---@field curr_ts integer
---@field day_period integer
---@field normalized_day_period integer
---@field game_time_str string
---@field game_dt_str string
---@field acquired_techs Array<any>
local GameWorld = {}
---@enum GameWorld.CostStackIndice
GameWorld.CostStackIndice = {
	["PPU"] = 0,
	["REG_COST"] = 1,
}

function GameWorld.recompute_diff_hash() end

---@param msg_id Object
---@param gm GameMessage
function GameWorld.update_player_msg(msg_id, gm) end

---@param msg_id Object
---@return Object
function GameWorld.get_player_msg(msg_id) end

---@param n_date Object
---@param count_map table<any,any>
---@return Object
function GameWorld.get_transactional_sum(n_date, count_map) end

---@param domain Object
---@return Object
function GameWorld.lookup_domain(domain) end

---@param merchant_sfp Object
---@return Object
function GameWorld.test_merchant_existence(merchant_sfp) end

---@param merchant_sfp Object
function GameWorld.try_add_merchant(merchant_sfp) end

---@param prog_scene PackedScene
function GameWorld.try_release_program(prog_scene) end

---@param candid string
function GameWorld.add_autocomplete_candidate(candid) end

---@param candid string
function GameWorld.remove_autocomplete_candidate(candid) end

---@param loc Location
---@return Object
function GameWorld.get_loc_index(loc) end

---@param sfp string
function GameWorld.add_location(sfp) end

---@param peer_id integer
---@return MultiplayerMouse
function GameWorld.add_player(peer_id) end

function GameWorld.try_resume_daycycle() end

function GameWorld.master_timeout() end

function GameWorld.second_elapsed() end

function GameWorld.artifact_timeout() end

---@param peer_id integer
function GameWorld.remove_player(peer_id) end

---@return Object
function GameWorld.debug_monitor_callback() end

---@param itemized boolean?  # Default = false
---@return table<any,any>
function GameWorld.calculate_payment_due_breakdown(itemized) end

---@param subname string
---@return Object
function GameWorld.get_full_savepath(subname) end

---@param msg Object
---@param by_force boolean?  # Default = false
function GameWorld.trigger_game_over(msg, by_force) end

---@param failing_user User
function GameWorld.submit_user_complaint(failing_user) end

---@param s_ptrans Array<any>
function GameWorld.sync_ptrans_delta(s_ptrans) end

---@param s_pmsg Array<any>
function GameWorld.sync_pmsg_delta(s_pmsg) end

function GameWorld.update_last_node_spawn_ts_now() end

---@param curr_day Object
function GameWorld.trigger_day_elapse(curr_day) end

---@param title string
---@param license_cost integer
function GameWorld.acquire_app_license(title, license_cost) end

---@param amount Object
---@param details Object
---@param category CreditTransaction.Category?  # Default = 0
function GameWorld.modify_player_cash(amount, details, category) end

---@param title Object
---@param msg Object
---@param tone_enum integer?  # Default = 0
function GameWorld.send_player_message(title, msg, tone_enum) end

---@param fqdn string
---@param use_spec_csv string
---@param ppu number
function GameWorld.add_player_hosting(fqdn, use_spec_csv, ppu) end

---@param fqdn string
function GameWorld.remove_player_hosting(fqdn) end

---@param fqdn Object
---@param netaddr Object
function GameWorld.put_dns_entry(fqdn, netaddr) end

---@param timescale_arg number
function GameWorld.update_server_timescale(timescale_arg) end

---@param normal_alert_title string
---@param normal_alert_full_msg string
---@param lowpass_alert_title string
---@param lowpass_alert_full_msg string
function GameWorld.submit_alert_with_lowpass(normal_alert_title, normal_alert_full_msg, lowpass_alert_title, lowpass_alert_full_msg) end

function GameWorld.acquire_all_tech() end

function GameWorld.enable_all_listings() end

function GameWorld.enable_all_tech_and_listings() end
