---@meta _
-- Generated API for game version 0.12.1

---@class KeystoneToKeystoneLink : TrayAffixedLink
---@field SAG_EXIT_LENGTH number # Constant value: 40.0
---@field max_cable_length number
local KeystoneToKeystoneLink = {}

---@param waypoints Array<any>
---@param start_keystone KeystoneSocket
---@param start_keystone_world_pos Vector2
---@param end_keystone KeystoneSocket
---@param end_keystone_world_pos Vector2
---@param cable_color Color
---@param _color_plug_ends boolean
---@param cable_width number?  # Default = 3.5
---@param seg_spine_x_offsets Array<any>?  # Default = <null>
---@param seg_depth_colors Array<any>?  # Default = <null>
---@param seg_sides Array<any>?  # Default = <null>
---@param seg_cols Array<any>?  # Default = <null>
function KeystoneToKeystoneLink.setup_keystone_to_keystone(waypoints, start_keystone, start_keystone_world_pos, end_keystone, end_keystone_world_pos, cable_color, _color_plug_ends, cable_width, seg_spine_x_offsets, seg_depth_colors, seg_sides, seg_cols) end

function KeystoneToKeystoneLink.remove_link() end

---@param waypoints Array<any>
---@param affix_start_world_pos Vector2
---@param affix_end_world_pos Vector2
---@param start_plug_scene_path string
---@param end_plug_scene_path string
---@param cable_color Color
---@param color_plug_ends boolean
---@param cable_width number?  # Default = 3.5
---@param seg_spine_x_offsets Array<any>?  # Default = <null>
---@param seg_depth_colors Array<any>?  # Default = <null>
---@param seg_sides Array<any>?  # Default = <null>
---@param seg_cols Array<any>?  # Default = <null>
function KeystoneToKeystoneLink.setup_tray_affix(waypoints, affix_start_world_pos, affix_end_world_pos, start_plug_scene_path, end_plug_scene_path, cable_color, color_plug_ends, cable_width, seg_spine_x_offsets, seg_depth_colors, seg_sides, seg_cols) end

---@param enabled boolean
function KeystoneToKeystoneLink.set_highlight(enabled) end

---@return Array<any>
function KeystoneToKeystoneLink.get_plug_nodes() end

function KeystoneToKeystoneLink.remove_link() end

---@return PackedVector2Array
function KeystoneToKeystoneLink.get_tray_path_points() end

---@param tray CableTray
---@return boolean
function KeystoneToKeystoneLink.uses_tray(tray) end
