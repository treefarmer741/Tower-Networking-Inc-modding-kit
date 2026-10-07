---@meta _
-- Generated API for game version 0.13.1

---@class PanopMouthpiece : TraversalCountUses
---@field influence_per_boost_pct number
---@field target_addr string
---@field last_result PanopMouthpiece.LastResult
---@field last_boost_pct number
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
local PanopMouthpiece = {}
---@enum PanopMouthpiece.LastResult
PanopMouthpiece.LastResult = {
	["NONE"] = 0,
	["REACHED"] = 1,
	["NOT_CONSUMER"] = 2,
	["NO_REPLY"] = 3,
	["NO_INFLUENCE"] = 4,
}

---@param addr string
function PanopMouthpiece.set_target(addr) end

---@return string
function PanopMouthpiece.get_configstr() end

---@param cfg string
function PanopMouthpiece.set_with_configstr(cfg) end

---@return NetworkPacketRoot
function PanopMouthpiece.make_packet_root() end

---@return NetworkPacketRoot
function PanopMouthpiece.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function PanopMouthpiece.make_traversal_packet(proot) end

function PanopMouthpiece.tick() end

function PanopMouthpiece.client_sim() end

---@param ds string
---@return string
function PanopMouthpiece.colorize_description(ds) end

function PanopMouthpiece.start() end

function PanopMouthpiece.stop() end

function PanopMouthpiece.uninstall() end

---@param _install_opts Object?  # Default = <null>
function PanopMouthpiece.install(_install_opts) end

function PanopMouthpiece.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function PanopMouthpiece.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function PanopMouthpiece.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function PanopMouthpiece.test_routing_exemption(packet) end
