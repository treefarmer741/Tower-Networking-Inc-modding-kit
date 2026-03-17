---@meta _
-- Generated API for game version 0.10.0

---@class FileSystemControlModule : Node
---@field RESTRICTED_FILENAMES Array<any> # Constant value: ["on", "to", "rename", "using"]
---@field ROUTER_CONF_FILE string # Constant value: /etc/routes.conf
---@field DHCPD_CONF_FILE string # Constant value: /etc/dhcpd.conf
---@field FW_CONF_FILE string # Constant value: /etc/nftables.conf
---@field DNS_ZONE_FILE string # Constant value: /etc/dns.zone
---@field VLAN_CONF_FILE string # Constant value: /etc/vlan.tags
---@field CONFIG_FILENAMES Array<any> # Constant value: ["/etc/routes.conf", "/etc/dhcpd.conf", "/etc/nftables.conf", "/etc/dns.zone", "/etc/vlan.tags"]
---@field files table<any,any>
---@field total_used_size integer
---@field host_controller LogicController
local FileSystemControlModule = {}

---@return Array<string>
function FileSystemControlModule.get_save_var_list() end

---@param cand string
---@return boolean
function FileSystemControlModule.is_valid_filename(cand) end

---@param filename string
---@param file Array<any>
---@return boolean
function FileSystemControlModule.can_add_file(filename, file) end

---@param filename string
---@return Array<any>
function FileSystemControlModule.get_file(filename) end

---@return table<any,any>
function FileSystemControlModule.get_filedescripts() end

---@param filekey string
---@param file Array<any>
function FileSystemControlModule.add_file(filekey, file) end

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
