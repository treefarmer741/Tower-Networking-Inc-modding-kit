---@meta _
-- Generated API for game version 0.10.0

---@class VirtualMachine : Node
---@field LGCTLSCN Object # Constant value: <PackedScene#-9223369173638230611>
---@field VSSCN Object # Constant value: <PackedScene#-9223369173453681258>
---@field vmname string
---@field virtual_machine_controller LogicController
---@field host_device DeviceUnit
---@field host_socket LogicControllerSocket
---@field guest_socket LogicControllerSocket
---@field vm_id integer
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
local VirtualMachine = {}

---@param controller LogicController
---@return integer
function VirtualMachine.get_new_vmid(controller) end

function VirtualMachine.start() end

function VirtualMachine.stop() end

function VirtualMachine.uninstall() end

---@param install_opts Object?  # Default = <null>
function VirtualMachine.install(install_opts) end

function VirtualMachine.create_virtual_sockets() end

function VirtualMachine.link_virtual_sockets() end

function VirtualMachine.tick() end

---@return Object
function VirtualMachine.serialize_as_str() end

---@param sz integer
---@param fdats string
---@param target_controller LogicController
---@return Object
function VirtualMachine.deserialize_from_str(sz, fdats, target_controller) end

---@param ds string
---@return string
function VirtualMachine.colorize_description(ds) end

function VirtualMachine.start() end

function VirtualMachine.stop() end

function VirtualMachine.uninstall() end

---@param _install_opts Object?  # Default = <null>
function VirtualMachine.install(_install_opts) end

function VirtualMachine.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function VirtualMachine.process_network_packet(pktctl, packet) end
