---@meta _
-- Generated API for game version 0.10.11

---@class SegmentedSupportBuilder : Area3D
---@field point_a Node3D
---@field point_b Node3D
---@field support_ps PackedScene
---@field segment_ps PackedScene
---@field segment_length number
---@field max_support_height_ratio number
---@field min_support_margin number
---@field min_segment_length number
---@field horizontal_bend_deviation number
---@field vertical_up_bend_deviation number
---@field vertical_down_bend_deviation number
---@field ground_reference Node3D
---@field ground_direction Vector3
---@field ground_mask integer
---@field segment_area_cross_section Vector2
---@field segment_area_end_margin number
---@field obstacle_mask integer
---@field obstacle_ignore_rid Array<any>
---@field singular_raycast boolean
---@field warn_raycast_hits boolean
---@field default_segment_mode SegmentedSupportBuilder.default_build_mode
---@field default_segment_box_crossarea Vector2
---@field default_segment_sag_count integer
---@field default_segment_sag_ratio number
---@field max_support_height number
---@field is_building boolean
local SegmentedSupportBuilder = {}
---@enum SegmentedSupportBuilder.default_build_mode
SegmentedSupportBuilder.default_build_mode = {
	["STRAIGHT_BOX"] = 0,
	["SAGGING_BOXES"] = 1,
}

function SegmentedSupportBuilder.build() end

function SegmentedSupportBuilder.stop_build() end
