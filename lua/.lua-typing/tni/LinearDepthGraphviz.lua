---@meta _
-- Generated API for game version 0.9.1

---@class LinearDepthGraphviz : ScrollContainer
---@field element_alignment BoxContainer.AlignmentMode
---@field sibling_separation integer
---@field child_separation integer
---@field display_mode res://pocosia-godot-commons/portable_scenes/tower_link_inc/linear_depth_graphviz/linear_depth_graphviz.gd.DisplayMode
---@field edge_line_mode res://pocosia-godot-commons/portable_scenes/tower_link_inc/linear_depth_graphviz/linear_depth_graphviz.gd.EdgeLineMode
---@field default_edge_line_color Color
---@field default_edge_line_width number
---@field element_ctl_packed_scn PackedScene
---@field start_container Container
local LinearDepthGraphviz = {}
---@enum LinearDepthGraphviz.DisplayMode
LinearDepthGraphviz.DisplayMode = {
	["VPHC_FROM_TOP"] = 0,
	["HPVC_FROM_LEFT"] = 1,
}
---@enum LinearDepthGraphviz.EdgeLineMode
LinearDepthGraphviz.EdgeLineMode = {
	["STRAIGHT"] = 0,
	["ANGLE1"] = 1,
	["SHARP2"] = 2,
}
---@enum LinearDepthGraphviz.ElementAttribute
LinearDepthGraphviz.ElementAttribute = {
	["LINE_WIDTH"] = 0,
	["LINE_COLOR"] = 1,
	["MAIN_LABEL_TEXT"] = 2,
	["SUB_LABEL_TEXT"] = 3,
}

function LinearDepthGraphviz.clear() end

---@param element_id integer
---@return Object
function LinearDepthGraphviz.get_element(element_id) end

---@param parent_id integer
---@return Object
function LinearDepthGraphviz.add_element(parent_id) end
