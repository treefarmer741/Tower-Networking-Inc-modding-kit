---@meta _
-- Generated API for game version 0.9.1

---@class AnimationNodeBlendSpace2D : AnimationRootNode
---@field auto_triangles boolean
---@field triangles PackedInt32Array
---@field min_space Vector2
---@field max_space Vector2
---@field snap Vector2
---@field x_label string
---@field y_label string
---@field blend_mode integer
---@field sync boolean
local AnimationNodeBlendSpace2D = {
	---@type AnimationRootNode
	["blend_point_0/node"] = nil,
	---@type Vector2
	["blend_point_0/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_1/node"] = nil,
	---@type Vector2
	["blend_point_1/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_2/node"] = nil,
	---@type Vector2
	["blend_point_2/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_3/node"] = nil,
	---@type Vector2
	["blend_point_3/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_4/node"] = nil,
	---@type Vector2
	["blend_point_4/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_5/node"] = nil,
	---@type Vector2
	["blend_point_5/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_6/node"] = nil,
	---@type Vector2
	["blend_point_6/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_7/node"] = nil,
	---@type Vector2
	["blend_point_7/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_8/node"] = nil,
	---@type Vector2
	["blend_point_8/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_9/node"] = nil,
	---@type Vector2
	["blend_point_9/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_10/node"] = nil,
	---@type Vector2
	["blend_point_10/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_11/node"] = nil,
	---@type Vector2
	["blend_point_11/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_12/node"] = nil,
	---@type Vector2
	["blend_point_12/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_13/node"] = nil,
	---@type Vector2
	["blend_point_13/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_14/node"] = nil,
	---@type Vector2
	["blend_point_14/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_15/node"] = nil,
	---@type Vector2
	["blend_point_15/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_16/node"] = nil,
	---@type Vector2
	["blend_point_16/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_17/node"] = nil,
	---@type Vector2
	["blend_point_17/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_18/node"] = nil,
	---@type Vector2
	["blend_point_18/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_19/node"] = nil,
	---@type Vector2
	["blend_point_19/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_20/node"] = nil,
	---@type Vector2
	["blend_point_20/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_21/node"] = nil,
	---@type Vector2
	["blend_point_21/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_22/node"] = nil,
	---@type Vector2
	["blend_point_22/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_23/node"] = nil,
	---@type Vector2
	["blend_point_23/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_24/node"] = nil,
	---@type Vector2
	["blend_point_24/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_25/node"] = nil,
	---@type Vector2
	["blend_point_25/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_26/node"] = nil,
	---@type Vector2
	["blend_point_26/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_27/node"] = nil,
	---@type Vector2
	["blend_point_27/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_28/node"] = nil,
	---@type Vector2
	["blend_point_28/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_29/node"] = nil,
	---@type Vector2
	["blend_point_29/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_30/node"] = nil,
	---@type Vector2
	["blend_point_30/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_31/node"] = nil,
	---@type Vector2
	["blend_point_31/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_32/node"] = nil,
	---@type Vector2
	["blend_point_32/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_33/node"] = nil,
	---@type Vector2
	["blend_point_33/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_34/node"] = nil,
	---@type Vector2
	["blend_point_34/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_35/node"] = nil,
	---@type Vector2
	["blend_point_35/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_36/node"] = nil,
	---@type Vector2
	["blend_point_36/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_37/node"] = nil,
	---@type Vector2
	["blend_point_37/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_38/node"] = nil,
	---@type Vector2
	["blend_point_38/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_39/node"] = nil,
	---@type Vector2
	["blend_point_39/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_40/node"] = nil,
	---@type Vector2
	["blend_point_40/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_41/node"] = nil,
	---@type Vector2
	["blend_point_41/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_42/node"] = nil,
	---@type Vector2
	["blend_point_42/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_43/node"] = nil,
	---@type Vector2
	["blend_point_43/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_44/node"] = nil,
	---@type Vector2
	["blend_point_44/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_45/node"] = nil,
	---@type Vector2
	["blend_point_45/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_46/node"] = nil,
	---@type Vector2
	["blend_point_46/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_47/node"] = nil,
	---@type Vector2
	["blend_point_47/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_48/node"] = nil,
	---@type Vector2
	["blend_point_48/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_49/node"] = nil,
	---@type Vector2
	["blend_point_49/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_50/node"] = nil,
	---@type Vector2
	["blend_point_50/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_51/node"] = nil,
	---@type Vector2
	["blend_point_51/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_52/node"] = nil,
	---@type Vector2
	["blend_point_52/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_53/node"] = nil,
	---@type Vector2
	["blend_point_53/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_54/node"] = nil,
	---@type Vector2
	["blend_point_54/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_55/node"] = nil,
	---@type Vector2
	["blend_point_55/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_56/node"] = nil,
	---@type Vector2
	["blend_point_56/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_57/node"] = nil,
	---@type Vector2
	["blend_point_57/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_58/node"] = nil,
	---@type Vector2
	["blend_point_58/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_59/node"] = nil,
	---@type Vector2
	["blend_point_59/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_60/node"] = nil,
	---@type Vector2
	["blend_point_60/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_61/node"] = nil,
	---@type Vector2
	["blend_point_61/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_62/node"] = nil,
	---@type Vector2
	["blend_point_62/pos"] = nil,
	---@type AnimationRootNode
	["blend_point_63/node"] = nil,
	---@type Vector2
	["blend_point_63/pos"] = nil,
}

---@param node AnimationRootNode
---@param pos Vector2
---@param at_index integer?  # Default = -1
function AnimationNodeBlendSpace2D.add_blend_point(node, pos, at_index) end

---@param point integer
---@param pos Vector2
function AnimationNodeBlendSpace2D.set_blend_point_position(point, pos) end

---@param point integer
---@return Vector2
function AnimationNodeBlendSpace2D.get_blend_point_position(point) end

---@param point integer
---@param node AnimationRootNode
function AnimationNodeBlendSpace2D.set_blend_point_node(point, node) end

---@param point integer
---@return AnimationRootNode
function AnimationNodeBlendSpace2D.get_blend_point_node(point) end

---@param point integer
function AnimationNodeBlendSpace2D.remove_blend_point(point) end

---@return integer
function AnimationNodeBlendSpace2D.get_blend_point_count() end

---@param x integer
---@param y integer
---@param z integer
---@param at_index integer?  # Default = -1
function AnimationNodeBlendSpace2D.add_triangle(x, y, z, at_index) end

---@param triangle integer
---@param point integer
---@return integer
function AnimationNodeBlendSpace2D.get_triangle_point(triangle, point) end

---@param triangle integer
function AnimationNodeBlendSpace2D.remove_triangle(triangle) end

---@return integer
function AnimationNodeBlendSpace2D.get_triangle_count() end

---@param min_space Vector2
function AnimationNodeBlendSpace2D.set_min_space(min_space) end

---@return Vector2
function AnimationNodeBlendSpace2D.get_min_space() end

---@param max_space Vector2
function AnimationNodeBlendSpace2D.set_max_space(max_space) end

---@return Vector2
function AnimationNodeBlendSpace2D.get_max_space() end

---@param snap Vector2
function AnimationNodeBlendSpace2D.set_snap(snap) end

---@return Vector2
function AnimationNodeBlendSpace2D.get_snap() end

---@param text string
function AnimationNodeBlendSpace2D.set_x_label(text) end

---@return string
function AnimationNodeBlendSpace2D.get_x_label() end

---@param text string
function AnimationNodeBlendSpace2D.set_y_label(text) end

---@return string
function AnimationNodeBlendSpace2D.get_y_label() end

---@param enable boolean
function AnimationNodeBlendSpace2D.set_auto_triangles(enable) end

---@return boolean
function AnimationNodeBlendSpace2D.get_auto_triangles() end

---@param mode AnimationNodeBlendSpace2D.BlendMode
function AnimationNodeBlendSpace2D.set_blend_mode(mode) end

---@return AnimationNodeBlendSpace2D.BlendMode
function AnimationNodeBlendSpace2D.get_blend_mode() end

---@param enable boolean
function AnimationNodeBlendSpace2D.set_use_sync(enable) end

---@return boolean
function AnimationNodeBlendSpace2D.is_using_sync() end
