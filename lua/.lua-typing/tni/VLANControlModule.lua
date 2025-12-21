---@meta _
-- Generated API for game version 0.9.1

---@class VLANControlModule : Node
---@field MAX_VLANTAG_CHARS integer # Constant value: 10
---@field vlan_port_tags table<any,any>
---@field host_controller LogicController
local VLANControlModule = {}

---@param vlan_cand string
---@return Object
function VLANControlModule.is_valid_vlan_tag(vlan_cand) end

---@return string
function VLANControlModule.get_configstr() end

---@param cfgs string
function VLANControlModule.set_with_configstr(cfgs) end

---@param portid string
---@param tag string
function VLANControlModule.add_port_tag(portid, tag) end

---@param portid string
---@param tag string
function VLANControlModule.remove_port_tag(portid, tag) end

function VLANControlModule.clear_all_tags() end

---@return Array<string>
function VLANControlModule.get_save_var_list() end

---@param save_obj Object
function VLANControlModule.handle_save(save_obj) end

---@param save_obj Object
function VLANControlModule.handle_load(save_obj) end

---@param save_obj Object
function VLANControlModule.handle_save(save_obj) end

---@param save_obj Object
function VLANControlModule.handle_load(save_obj) end

---@return Array<string>
function VLANControlModule.get_save_var_list() end
