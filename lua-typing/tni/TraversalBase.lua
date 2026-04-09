---@meta _
-- Generated API for game version 0.10.11

---@class TraversalBase : Program
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
local TraversalBase = {}
---@enum TraversalBase.Context
TraversalBase.Context = {
	["SRC_CONTROLLER"] = 0,
	["BANDWIDTH_USED"] = 1,
	["CONSUMED_TARGET"] = 2,
	["DST_FQDN"] = 3,
	["DST_LADDR"] = 4,
	["TEST"] = 5,
	["INDEX"] = 6,
	["TTL"] = 7,
}

---@return NetworkPacketRoot
function TraversalBase.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function TraversalBase.make_traversal_packet(proot) end

function TraversalBase.tick() end

function TraversalBase.client_sim() end

---@param ds string
---@return string
function TraversalBase.colorize_description(ds) end

function TraversalBase.start() end

function TraversalBase.stop() end

function TraversalBase.uninstall() end

---@param _install_opts Object?  # Default = <null>
function TraversalBase.install(_install_opts) end

function TraversalBase.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function TraversalBase.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function TraversalBase.is_pkt_for_self(packet) end
