---@meta _
-- Generated API for game version 0.12.1

---@class FileSystemControlModule : LogicControlModule
---@field RESTRICTED_FILENAMES Array<any> # Constant value: ["on", "to", "rename", "using"]
---@field ROUTER_CONF_FILE string # Constant value: /etc/routes.conf
---@field DHCPD_CONF_FILE string # Constant value: /etc/dhcpd.conf
---@field FW_CONF_FILE string # Constant value: /etc/nftables.conf
---@field DNS_ZONE_FILE string # Constant value: /etc/dns.zone
---@field VLAN_CONF_FILE string # Constant value: /etc/vlan.tags
---@field MBOX_CONF_FILE string # Constant value: /etc/mangling.conf
---@field SAN_CONF_FILE string # Constant value: /etc/iscsid.conf
---@field CONFIG_FILENAMES Array<any> # Constant value: ["/etc/routes.conf", "/etc/dhcpd.conf", "/etc/nftables.conf", "/etc/dns.zone", "/etc/vlan.tags", "/etc/mangling.conf", "/etc/iscsid.conf"]
---@field LUN_PREFIX string # Constant value: /lun/
---@field PROGRAM_STATE_PREFIX string # Constant value: s:
---@field VOLUME_PREFIX string # Constant value: v:
---@field files table<any,any>
---@field total_used_size integer
---@field host_controller LogicController
local FileSystemControlModule = {}

---@return Array<string>
function FileSystemControlModule.get_save_var_list() end

---@param volume_name string
---@return string
function FileSystemControlModule.lun_key(volume_name) end

---@return string
function FileSystemControlModule.free_lun_key() end

---@param body Object
---@return boolean
function FileSystemControlModule.is_volume_body(body) end

---@param row Object
---@return boolean
function FileSystemControlModule.is_volume_row(row) end

---@param body Object
---@return string
function FileSystemControlModule.volume_token(body) end

---@param token string
---@param payload string
---@return string
function FileSystemControlModule.make_volume_body(token, payload) end

---@param body Object
---@return string
function FileSystemControlModule.volume_payload(body) end

---@param cand string
---@return boolean
function FileSystemControlModule.is_valid_filename(cand) end

---@param filename string
---@param file Array<any>
---@return boolean
function FileSystemControlModule.can_add_file(filename, file) end

---@param filename string
---@param with_state boolean?  # Default = false
---@return Array<any>
function FileSystemControlModule.get_file(filename, with_state) end

---@return table<any,any>
function FileSystemControlModule.get_filedescripts() end

---@param filekey string
---@param file Array<any>
---@param force_install boolean?  # Default = false
function FileSystemControlModule.add_file(filekey, file, force_install) end

---@param filekey string
function FileSystemControlModule.remove_file(filekey) end

function FileSystemControlModule.clear_user_files() end

---@return string
function FileSystemControlModule.get_files_str() end

---@param cfgs string
function FileSystemControlModule.set_files_with_configstr(cfgs) end

---@param save_obj Object
function FileSystemControlModule.handle_save(save_obj) end

---@param save_obj Object
function FileSystemControlModule.handle_load(save_obj) end

---@return Array<string>
function FileSystemControlModule.get_save_var_list() end
