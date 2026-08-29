---@meta _
-- Generated API for game version 0.12.1

---@class KeystonePunchdownLink : TrayAffixedLink
---@field SAG_EXIT_LENGTH number # Constant value: 40.0
---@field max_cable_length number
local KeystonePunchdownLink = {}

---@param waypoints Array<any>
---@param affix_start_world_pos Vector2
---@param keystone_socket KeystoneSocket
---@param keystone_world_pos Vector2
---@param start_plug_scene_path string
---@param cable_color Color
---@param color_plug_ends boolean
---@param cable_width number?  # Default = 3.5
---@param seg_spine_x_offsets Array<any>?  # Default = <null>
---@param seg_depth_colors Array<any>?  # Default = <null>
---@param seg_sides Array<any>?  # Default = <null>
---@param seg_cols Array<any>?  # Default = <null>
function KeystonePunchdownLink.setup_keystone_affix(waypoints, affix_start_world_pos, keystone_socket, keystone_world_pos, start_plug_scene_path, cable_color, color_plug_ends, cable_width, seg_spine_x_offsets, seg_depth_colors, seg_sides, seg_cols) end

function KeystonePunchdownLink.remove_link() end

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
function KeystonePunchdownLink.setup_tray_affix(waypoints, affix_start_world_pos, affix_end_world_pos, start_plug_scene_path, end_plug_scene_path, cable_color, color_plug_ends, cable_width, seg_spine_x_offsets, seg_depth_colors, seg_sides, seg_cols) end

---@param enabled boolean
function KeystonePunchdownLink.set_highlight(enabled) end

---@return Array<any>
function KeystonePunchdownLink.get_plug_nodes() end

function KeystonePunchdownLink.remove_link() end

---@return PackedVector2Array
function KeystonePunchdownLink.get_tray_path_points() end

---@param tray CableTray
---@return boolean
function KeystonePunchdownLink.uses_tray(tray) end
