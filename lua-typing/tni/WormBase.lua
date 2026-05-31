---@meta _
-- Generated API for game version 0.10.11

---@class WormBase : TraversalBase
---@field release_name_template string
---@field max_spread_per_tick integer
---@field signature string
---@field vulnerable_device_types Array<any>
---@field incubation_cycles integer
---@field incubation_ctr integer
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
local WormBase = {}

---@return NetworkPacketRoot
function WormBase.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function WormBase.make_traversal_packet(proot) end

function WormBase.tick() end

---@return NetworkPacketRoot
function WormBase.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function WormBase.make_traversal_packet(proot) end

function WormBase.tick() end

function WormBase.client_sim() end

---@param ds string
---@return string
function WormBase.colorize_description(ds) end

function WormBase.start() end

function WormBase.stop() end

function WormBase.uninstall() end

---@param _install_opts Object?  # Default = <null>
function WormBase.install(_install_opts) end

function WormBase.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function WormBase.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function WormBase.is_pkt_for_self(packet) end
