---@meta _
-- Generated API for game version 0.12.1

---@class CableTray : Area2D
---@field ZINDEX integer # Constant value: 150
---@field spine_fill_positive_first boolean
---@field spine_separation number
---@field spine_value_variation number
---@field horizontal boolean
---@field cabling_area Sprite2D
local CableTray = {}

function CableTray.remove() end

---@param waypoints Array<any>
---@param affix_start_world_pos Vector2
---@param affix_end_world_pos Vector2
---@param start_plug_path string
---@param end_plug_path string
---@param color Color
---@param color_plug_ends boolean
---@param cable_width number
---@return TrayAffixedLink
function CableTray.create_affixed_link(waypoints, affix_start_world_pos, affix_end_world_pos, start_plug_path, end_plug_path, color, color_plug_ends, cable_width) end

---@param world_pos Vector2
---@return Vector2
function CableTray.clamp_to_secondary(world_pos) end

---@return table<any,any>
function CableTray.export_affixed_links() end

---@param data table<any,any>
function CableTray.import_affixed_links(data) end

---@return table<any,any>
function CableTray.export_keystone_links() end

---@param data table<any,any>
function CableTray.import_keystone_links(data) end

---@param waypoints Array<any>
---@param affix_start_world_pos Vector2
---@param keystone_socket KeystoneSocket
---@param spool UnterminatedSpool
function CableTray.create_keystone_affix_link(waypoints, affix_start_world_pos, keystone_socket, spool) end

---@param waypoints Array<any>
---@param start_ks KeystoneSocket
---@param end_ks KeystoneSocket
---@param spool UnterminatedSpool
function CableTray.create_keystone_to_keystone_link(waypoints, start_ks, end_ks, spool) end

---@return table<any,any>
function CableTray.export_ks_to_ks_links() end

---@param data table<any,any>
function CableTray.import_ks_to_ks_links(data) end
