---@meta _
-- Generated API for game version 0.10.0

---@class Program : Node
---@field CONFIG_SIZE integer # Constant value: 1
---@field PROG_DESCRIPT_COLOR string # Constant value: FFB82F
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
local Program = {}
---@enum Program.ControllerModifiers
Program.ControllerModifiers = {
	["ALLOW_REMOTE_DEBUGGING"] = 0,
	["ALLOW_PACKET_SWITCHING"] = 1,
	["ALLOW_PACKET_ROUTING"] = 2,
	["ALLOW_PACKET_INSPECTION"] = 3,
	["ALLOW_PACKET_FILTERING"] = 4,
	["ALLOW_DOMAIN_QUERYING"] = 5,
	["ALLOW_REMOTE_HOST_CONFIGURATION"] = 6,
	["ALLOW_HIGH_AVAILABILITY_SETUP"] = 7,
	["ALLOW_DECENTRO_STORAGE"] = 8,
	["ALLOW_DECENTRO_TRADING"] = 9,
	["ALLOW_VLAN_TAGGING"] = 10,
	["ALLOW_TRAFFIC_SPLITTING"] = 11,
	["ALLOW_STP_PORT_CONTROL"] = 12,
}

---@param ds string
---@return string
function Program.colorize_description(ds) end

function Program.start() end

function Program.stop() end

function Program.uninstall() end

---@param _install_opts Object?  # Default = <null>
function Program.install(_install_opts) end

function Program.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function Program.process_network_packet(pktctl, packet) end
