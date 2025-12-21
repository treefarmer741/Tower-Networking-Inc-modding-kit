---@meta _
-- Generated API for game version 0.9.1

---@class VisitorScaledUserHosting : Node
---@field min_visitors integer
---@field max_visitors integer
---@field growth_per_tick integer
---@field shrink_per_tick integer
---@field greed_factor integer
---@field min_visitor_scale_factor number
---@field user LogicControllerUser
---@field satiety_weight integer
---@field advertised_use_config UseConfig
---@field theme_config ThemeConfig
---@field desired_visitors_per_tick integer
---@field self_produce boolean
---@field tld_choice Array<any>
---@field extra_visitor_limit integer
---@field pou_count integer
---@field produced_last_tick integer
---@field produce_factor integer
---@field required_consumes_per_tick integer
---@field cpu_load integer
---@field code_size integer
---@field stack_size integer
---@field release_name string
---@field description string
---@field modifiers Array<any>
---@field application_unlocks Array<any>
---@field required_hardware_device Array<any>
---@field data_size integer
---@field install_size integer
---@field rendered_description string
---@field pkt_processing_priority integer
---@field is_running boolean
---@field host_controller LogicController
local VisitorScaledUserHosting = {}

function VisitorScaledUserHosting.tick() end

---@param exclude_inactive boolean
---@return integer
function VisitorScaledUserHosting.count_possible_users_from_surveys(exclude_inactive) end

---@param mix integer?  # Default = 0
---@return Object
function VisitorScaledUserHosting.try_roll_fqdn(mix) end

---@return Object
function VisitorScaledUserHosting.get_fqdn() end

function VisitorScaledUserHosting.force_fqdn_reroll() end

function VisitorScaledUserHosting.do_self_produce() end

function VisitorScaledUserHosting.tick() end

---@param ds string
---@return string
function VisitorScaledUserHosting.colorize_description(ds) end

function VisitorScaledUserHosting.start() end

function VisitorScaledUserHosting.stop() end

function VisitorScaledUserHosting.uninstall() end

---@param _install_opts Object?  # Default = <null>
function VisitorScaledUserHosting.install(_install_opts) end

function VisitorScaledUserHosting.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
function VisitorScaledUserHosting.process_network_packet(pktctl, packet) end
