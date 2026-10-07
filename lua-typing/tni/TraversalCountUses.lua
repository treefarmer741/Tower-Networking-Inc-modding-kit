---@meta _
-- Generated API for game version 0.13.1

---@class TraversalCountUses : TraversalBase
---@field counted_use_config UseConfig
---@field counted_uses_last_tick integer
---@field counted_nodes_last_tick integer
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
local TraversalCountUses = {}

---@return NetworkPacketRoot
function TraversalCountUses.make_packet_root() end

---@return NetworkPacketRoot
function TraversalCountUses.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function TraversalCountUses.make_traversal_packet(proot) end

function TraversalCountUses.tick() end

function TraversalCountUses.client_sim() end

---@param ds string
---@return string
function TraversalCountUses.colorize_description(ds) end

function TraversalCountUses.start() end

function TraversalCountUses.stop() end

function TraversalCountUses.uninstall() end

---@param _install_opts Object?  # Default = <null>
function TraversalCountUses.install(_install_opts) end

function TraversalCountUses.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function TraversalCountUses.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function TraversalCountUses.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function TraversalCountUses.test_routing_exemption(packet) end
