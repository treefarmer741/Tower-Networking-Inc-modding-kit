---@meta _
-- Generated API for game version 0.10.0

---@class GLTFObjectModelProperty : RefCounted
---@field gltf_to_godot_expression Expression
---@field godot_to_gltf_expression Expression
---@field node_paths Array<any>
---@field object_model_type integer
---@field json_pointers PackedStringArray
---@field variant_type integer
local GLTFObjectModelProperty = {}

---@param node_path string
function GLTFObjectModelProperty.append_node_path(node_path) end

---@param node_path string
---@param prop_name string
function GLTFObjectModelProperty.append_path_to_property(node_path, prop_name) end

---@return GLTFAccessor.GLTFAccessorType
function GLTFObjectModelProperty.get_accessor_type() end

---@return Expression
function GLTFObjectModelProperty.get_gltf_to_godot_expression() end

---@param gltf_to_godot_expr Expression
function GLTFObjectModelProperty.set_gltf_to_godot_expression(gltf_to_godot_expr) end

---@return Expression
function GLTFObjectModelProperty.get_godot_to_gltf_expression() end

---@param godot_to_gltf_expr Expression
function GLTFObjectModelProperty.set_godot_to_gltf_expression(godot_to_gltf_expr) end

---@return Array<NodePath>
function GLTFObjectModelProperty.get_node_paths() end

---@return boolean
function GLTFObjectModelProperty.has_node_paths() end

---@param node_paths Array<NodePath>
function GLTFObjectModelProperty.set_node_paths(node_paths) end

---@return GLTFObjectModelProperty.GLTFObjectModelType
function GLTFObjectModelProperty.get_object_model_type() end

---@param type GLTFObjectModelProperty.GLTFObjectModelType
function GLTFObjectModelProperty.set_object_model_type(type) end

---@return Array<PackedStringArray>
function GLTFObjectModelProperty.get_json_pointers() end

---@return boolean
function GLTFObjectModelProperty.has_json_pointers() end

---@param json_pointers Array<PackedStringArray>
function GLTFObjectModelProperty.set_json_pointers(json_pointers) end

---@return Variant.Type
function GLTFObjectModelProperty.get_variant_type() end

---@param variant_type Variant.Type
function GLTFObjectModelProperty.set_variant_type(variant_type) end

---@param variant_type Variant.Type
---@param obj_model_type GLTFObjectModelProperty.GLTFObjectModelType
function GLTFObjectModelProperty.set_types(variant_type, obj_model_type) end
