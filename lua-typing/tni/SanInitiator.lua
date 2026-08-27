---@meta _
-- Generated API for game version 0.12.1

---@class SanInitiator : TraversalBase
---@field VOL_MOUNTED string # Constant value: mounted
---@field VOL_MOUNTING string # Constant value: mounting
---@field VOL_OFFLINE string # Constant value: offline
---@field VOL_NO_VOLUME string # Constant value: no volume
---@field VOL_UNBACKED string # Constant value: no storage
---@field granted_capacity integer
---@field reserved_blocks table<any,any>
---@field at_risk_preview Array<any>
---@field requires_reprovision Array<any>
---@field resolved_paths table<any,any>
---@field target_blocks table<any,any>
---@field lun_claims table<any,any>
---@field seed_addrs table<any,any>
---@field volume_states table<any,any>
---@field storage_per_bw_unit integer
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
local SanInitiator = {}

---@return string
function SanInitiator.get_configstr() end

---@param cfgs string
function SanInitiator.set_with_configstr(cfgs) end

---@param addr string
---@return string
function SanInitiator.volume_for_addr(addr) end

---@param _install_opts Object?  # Default = <null>
function SanInitiator.install(_install_opts) end

---@return integer
function SanInitiator.volume_count() end

---@param idx integer
---@return string
function SanInitiator.volume_vid(idx) end

---@param idx integer
---@return string
function SanInitiator.volume_addr(idx) end

---@param idx integer
---@return string
function SanInitiator.volume_state(idx) end

---@param idx integer
---@return integer
function SanInitiator.volume_capacity(idx) end

---@param idx integer
---@return integer
function SanInitiator.volume_reserved(idx) end

---@param idx integer
---@return table<any,any>
function SanInitiator.volume_claims(idx) end

---@param idx integer
---@return StorageVolumeLedger
function SanInitiator.volume_ledger(idx) end

---@param idx integer
---@return integer
function SanInitiator.volume_used(idx) end

---@param vid string
---@return integer
function SanInitiator.volume_used_of(vid) end

---@param idx integer
---@return integer
function SanInitiator.volume_free(idx) end

---@param filekey string
---@return integer
function SanInitiator.volume_of(filekey) end

---@param idx integer
---@param filekey string
---@param ignore_current_holder boolean?  # Default = false
---@return Array<any>
function SanInitiator.can_claim(idx, filekey, ignore_current_holder) end

---@param idx integer
---@param filekey string
function SanInitiator.claim_file(idx, filekey) end

---@param idx integer
---@param filekey string
---@return Array<any>
function SanInitiator.can_release(idx, filekey) end

---@param idx integer
---@param filekey string
function SanInitiator.release_file(idx, filekey) end

---@param filekey string
---@return boolean
function SanInitiator.release_filekey(filekey) end

---@param idx integer
function SanInitiator.wipe_volume(idx) end

---@param idx integer
---@return string
function SanInitiator.volume_label(idx) end

---@param token string
---@return integer
function SanInitiator.parse_volume_label(token) end

---@param vid string
---@return boolean
function SanInitiator.volume_established(vid) end

---@return NetworkPacketRoot
function SanInitiator.make_packet_root() end

function SanInitiator.tick() end

---@param taken Array<any>
---@return string
function SanInitiator.mint_volume_token(taken) end

---@param body string
---@return table<any,any>
function SanInitiator.unpack_volume(body) end

function SanInitiator.recompute_grant_now() end

---@param vid string
---@param size integer
---@param seed_addr string
---@param new_round boolean?  # Default = true
function SanInitiator.set_reservation(vid, size, seed_addr, new_round) end

---@param vids Array<any>
function SanInitiator.remove_volumes(vids) end

function SanInitiator.full_reset() end

---@return integer
function SanInitiator.total_established_blocks() end

---@return integer
function SanInitiator.access_traffic_weight() end

---@param proot NetworkPacketRoot
---@return Object
function SanInitiator.make_traversal_packet(proot) end

function SanInitiator.stop() end

---@return NetworkPacketRoot
function SanInitiator.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function SanInitiator.make_traversal_packet(proot) end

function SanInitiator.tick() end

function SanInitiator.client_sim() end

---@param ds string
---@return string
function SanInitiator.colorize_description(ds) end

function SanInitiator.start() end

function SanInitiator.stop() end

function SanInitiator.uninstall() end

---@param _install_opts Object?  # Default = <null>
function SanInitiator.install(_install_opts) end

function SanInitiator.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function SanInitiator.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function SanInitiator.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function SanInitiator.test_routing_exemption(packet) end
