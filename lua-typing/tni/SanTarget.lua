---@meta _
-- Generated API for game version 0.12.1

---@class SanTarget : Program
---@field san_lun_table table<any,any>
---@field connected_luns Array<any>
---@field initiator_seen_ttl integer
---@field exportable_storage integer
---@field exportable_pool integer
---@field committed_storage integer
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
local SanTarget = {}

---@param volume_id string
---@return string
function SanTarget.volume_filekey(volume_id) end

---@param volume_id string
---@return boolean
function SanTarget.has_volume(volume_id) end

---@param volume_id string
---@return Array<any>
function SanTarget.volume_row(volume_id) end

---@param volume_id string
---@return string
function SanTarget.volume_owner(volume_id) end

---@param volume_id string
---@return string
function SanTarget.reservation_label(volume_id) end

---@param volume_id string
---@param row Array<any>
---@return boolean
function SanTarget.provision_volume(volume_id, row) end

---@param volume_id string
---@param row Array<any>
---@return boolean
function SanTarget.write_volume(volume_id, row) end

---@param volume_id string
---@return integer
function SanTarget.destroy_volume(volume_id) end

---@return table<any,any>
function SanTarget.backed_keys() end

---@param volume_id string
---@param requestor string?  # Default = 
---@return integer
function SanTarget.lookup_lun_size(volume_id, requestor) end

---@param volume_id string
---@param size integer
---@param requestor string?  # Default = 
---@param authoritative boolean?  # Default = false
---@return integer
function SanTarget.negotiate_lun(volume_id, size, requestor, authoritative) end

---@param volume_id string
function SanTarget.revoke_lun(volume_id) end

function SanTarget.tick() end

function SanTarget.reconcile_reservation() end

---@param volume_id string
---@return table<any,any>
function SanTarget.volume_contents(volume_id) end

function SanTarget.stop() end

---@param ds string
---@return string
function SanTarget.colorize_description(ds) end

function SanTarget.start() end

function SanTarget.stop() end

function SanTarget.uninstall() end

---@param _install_opts Object?  # Default = <null>
function SanTarget.install(_install_opts) end

function SanTarget.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function SanTarget.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function SanTarget.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function SanTarget.test_routing_exemption(packet) end
