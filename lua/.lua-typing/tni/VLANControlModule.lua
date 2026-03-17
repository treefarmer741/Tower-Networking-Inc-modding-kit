---@meta _
-- Generated API for game version 0.10.0

---@class VLANControlModule : Node
---@field MAX_VLANTAG_CHARS integer # Constant value: 10
---@field vlan_port_tags table<any,any>
---@field subif_cfg table<any,any>
---@field host_controller LogicController
local VLANControlModule = {}

---@param subif_id string
---@return Object
function VLANControlModule.is_valid_subif_id(subif_id) end

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

---@param canonical_subif_id string
---@return Object
function VLANControlModule.has_subint_id(canonical_subif_id) end

---@param physical_port string
---@param vlan_tag string
---@return string
function VLANControlModule.try_match_vlan_subifs(physical_port, vlan_tag) end

---@param physical_port string
---@param subif_id string
---@return string
function VLANControlModule.try_match_port_and_tags(physical_port, subif_id) end

---@param canonical_subif Object
---@return Array<any>
function VLANControlModule.parse_canonical_subifsyn(canonical_subif) end

---@param phy_port string
---@param subif_id string
---@return Object
function VLANControlModule.get_canonical_subifsyn(phy_port, subif_id) end

---@param physical_port Object
---@param subif_id Object
---@param vlan_tag Object
function VLANControlModule.configure_subif(physical_port, subif_id, vlan_tag) end

---@param save_obj Object
function VLANControlModule.handle_save(save_obj) end

---@param save_obj Object
function VLANControlModule.handle_load(save_obj) end

---@return Array<string>
function VLANControlModule.get_save_var_list() end
