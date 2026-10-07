---@meta _
-- Generated API for game version 0.13.1

---@class WormModifier : WormBase
---@field target_modifier Program.ControllerModifiers
---@field release_name_template string
---@field max_spread_per_tick integer
---@field signature string
---@field vulnerable_device_types Array<any>
---@field incubation_cycles integer
---@field force_hint_hide boolean
---@field incubation_ctr integer
---@field traffic_class string
---@field traffic_weight integer
---@field cpu_load integer
---@field gpu_load integer
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
---@field gw_playopt PlayOptions
---@field host_controller LogicController
local WormModifier = {}

---@return NetworkPacketRoot
function WormModifier.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function WormModifier.make_traversal_packet(proot) end

function WormModifier.tick() end

---@return NetworkPacketRoot
function WormModifier.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function WormModifier.make_traversal_packet(proot) end

function WormModifier.tick() end

function WormModifier.client_sim() end

---@param ds string
---@return string
function WormModifier.colorize_description(ds) end

function WormModifier.start() end

function WormModifier.stop() end

function WormModifier.uninstall() end

---@param _install_opts Object?  # Default = <null>
function WormModifier.install(_install_opts) end

function WormModifier.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function WormModifier.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function WormModifier.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function WormModifier.test_routing_exemption(packet) end
