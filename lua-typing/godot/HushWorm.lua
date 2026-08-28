---@meta _
-- Generated API for game version 0.12.1

---@class HushWorm : WormBase
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
local HushWorm = {}

---@return NetworkPacketRoot
function HushWorm.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function HushWorm.make_traversal_packet(proot) end

function HushWorm.tick() end

---@return NetworkPacketRoot
function HushWorm.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function HushWorm.make_traversal_packet(proot) end

function HushWorm.tick() end

function HushWorm.client_sim() end

---@param ds string
---@return string
function HushWorm.colorize_description(ds) end

function HushWorm.start() end

function HushWorm.stop() end

function HushWorm.uninstall() end

---@param _install_opts Object?  # Default = <null>
function HushWorm.install(_install_opts) end

function HushWorm.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function HushWorm.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function HushWorm.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function HushWorm.test_routing_exemption(packet) end
