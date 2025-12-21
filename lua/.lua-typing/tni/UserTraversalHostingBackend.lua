---@meta _
-- Generated API for game version 0.9.1

---@class UserTraversalHostingBackend : Node
---@field user_hosting_frontend UserHosting
---@field warning_checks_uses_or_condition boolean
---@field manifest_probability number
---@field never_manifest_without_any_provider boolean
---@field host_selection_algorithm UserTraversal.HostSelMethod
---@field user LogicControllerUser
---@field satiety_weight integer
---@field producer_satiety_change_on_consume integer
---@field consumer_satiety_change_on_consume integer
---@field hidden_from_surveys boolean
---@field will_select_player_providers boolean
---@field max_acceptable_ppu number
---@field surveyor_dialog_target TraversalConsume.ProductTarget
---@field add_dialog_text_on_success boolean
---@field dialog_text string
---@field surveyor_dialog_ptype string
---@field theme_affinity ThemeConfig
---@field consumption_history table<any,any>
---@field successfully_consumed_this_tick boolean
---@field will_manifest boolean
---@field reqshare_accept_hash integer
---@field reqshare_weight_index Array<integer>
---@field produce_use_config UseConfig
---@field produce_target TraversalConsume.ProductTarget
---@field produce_factor integer
---@field conversion_policy TraversalConsume.ConversionPolicy
---@field produce_limit_type AlwaysProduce.ProduceLimitType
---@field limit_factor integer
---@field consumption_policy TraversalConsume.ConsumptionPolicy
---@field consume_use_config UseConfig
---@field consume_factor integer
---@field allow_localhost_consumption boolean
---@field allow_user_consumption boolean
---@field produced_last_tick integer
---@field will_produce boolean
---@field traffic_class string
---@field traffic_weight integer
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
local UserTraversalHostingBackend = {}

---@param _node LogicController
---@return Object
function UserTraversalHostingBackend.compute_produce_limit(_node) end

function UserTraversalHostingBackend.tick() end

function UserTraversalHostingBackend.tick() end

function UserTraversalHostingBackend.tick() end

---@param msg string
function UserTraversalHostingBackend.add_surveyor_msg(msg) end

---@return Array<any>
function UserTraversalHostingBackend.get_compatible_hostings() end

---@param initial_candids Array<any>
---@return Array<any>
function UserTraversalHostingBackend.filter_acceptable_hostings(initial_candids) end

---@param acceptable_candidates Array<any>
---@param selection_method UserTraversal.HostSelMethod
function UserTraversalHostingBackend.select_host_from_hostings(acceptable_candidates, selection_method) end

---@param node LogicController
---@return Object
function UserTraversalHostingBackend.produce_limit_reached(node) end

---@param node LogicController
---@return Object
function UserTraversalHostingBackend.compute_produce_limit(node) end

---@param from_node LogicController
---@param via_port LogicControllerSocket
---@param context TraversalContext
---@return boolean
function UserTraversalHostingBackend.check_routability(from_node, via_port, context) end

---@param next_node LogicController
---@param context TraversalContext
---@return Object
function UserTraversalHostingBackend.check_filter_passage(next_node, context) end

---@param context TraversalContext
---@param from_node LogicController
---@param via_port Object
---@param current_depth Object
---@return boolean
function UserTraversalHostingBackend.check_traversibility(context, from_node, via_port, current_depth) end

---@param context TraversalContext
---@param node LogicController
---@param via_port Object
---@param current_index Object
---@param current_depth Object
---@return GraphController.Traversal
function UserTraversalHostingBackend.precallback_process(context, node, via_port, current_index, current_depth) end

function UserTraversalHostingBackend.tick() end

---@param ds string
---@return string
function UserTraversalHostingBackend.colorize_description(ds) end

function UserTraversalHostingBackend.start() end

function UserTraversalHostingBackend.stop() end

function UserTraversalHostingBackend.uninstall() end

---@param _install_opts Object?  # Default = <null>
function UserTraversalHostingBackend.install(_install_opts) end

function UserTraversalHostingBackend.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
function UserTraversalHostingBackend.process_network_packet(pktctl, packet) end
