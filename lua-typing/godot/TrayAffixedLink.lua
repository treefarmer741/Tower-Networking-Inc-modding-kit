---@meta _
-- Generated API for game version 0.12.1

---@class TrayAffixedLink : Node2D
---@field DEFAULT_MAX_CABLE_LENGTH number # Constant value: 700.0
---@field MAX_INTERTRAY_LENGTH number # Constant value: 3500.0
---@field DANGLE_SLACK_FACTOR number # Constant value: 1.15
---@field ZINDEX integer # Constant value: 151
---@field INTER_TRAY_ZINDEX integer # Constant value: 1000
---@field INTER_TRAY_SAG_FACTOR number # Constant value: 0.15
---@field INTER_TRAY_CURVE_SEGS integer # Constant value: 16
---@field highlight_fx_color Color # Constant value: (2.454, 2.454, 2.454, 1.0)
---@field max_cable_length number
local TrayAffixedLink = {}

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
function TrayAffixedLink.setup_tray_affix(waypoints, affix_start_world_pos, affix_end_world_pos, start_plug_scene_path, end_plug_scene_path, cable_color, color_plug_ends, cable_width, seg_spine_x_offsets, seg_depth_colors, seg_sides, seg_cols) end

---@param enabled boolean
function TrayAffixedLink.set_highlight(enabled) end

---@return Array<any>
function TrayAffixedLink.get_plug_nodes() end

function TrayAffixedLink.remove_link() end

---@return PackedVector2Array
function TrayAffixedLink.get_tray_path_points() end

---@param tray CableTray
---@return boolean
function TrayAffixedLink.uses_tray(tray) end
