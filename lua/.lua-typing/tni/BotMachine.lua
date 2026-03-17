---@meta _
-- Generated API for game version 0.10.0

---@class BotMachine : Node
---@field VISIT_TRAFFIC string # Constant value: tcp/80
---@field opcode string
---@field oparg string
---@field oplogs Array<any>
---@field bot_id integer
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
local BotMachine = {}

---@param controller LogicController
---@return integer
function BotMachine.get_new_botid(controller) end

function BotMachine.start() end

function BotMachine.stop() end

---@return string
function BotMachine.get_operation_s() end

function BotMachine.tick() end

function BotMachine.rotate_output() end

function BotMachine.uninstall() end

---@param install_opts Object?  # Default = <null>
function BotMachine.install(install_opts) end

---@return Object
function BotMachine.serialize_as_str() end

---@param _sz integer
---@param fdats string
---@param target_controller LogicController
---@return Object
function BotMachine.deserialize_from_str(_sz, fdats, target_controller) end

---@param ds string
---@return string
function BotMachine.colorize_description(ds) end

function BotMachine.start() end

function BotMachine.stop() end

function BotMachine.uninstall() end

---@param _install_opts Object?  # Default = <null>
function BotMachine.install(_install_opts) end

function BotMachine.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function BotMachine.process_network_packet(pktctl, packet) end
