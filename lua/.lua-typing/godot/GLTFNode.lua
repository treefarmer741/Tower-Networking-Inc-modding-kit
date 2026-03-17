---@meta _
-- Generated API for game version 0.10.0

---@class GLTFNode : Resource
---@field original_name string
---@field parent integer
---@field height integer
---@field xform Transform3D
---@field mesh integer
---@field camera integer
---@field skin integer
---@field skeleton integer
---@field position Vector3
---@field rotation Quaternion
---@field scale Vector3
---@field children PackedInt32Array
---@field light integer
---@field visible boolean
local GLTFNode = {}

---@return string
function GLTFNode.get_original_name() end

---@param original_name string
function GLTFNode.set_original_name(original_name) end

---@return integer
function GLTFNode.get_parent() end

---@param parent integer
function GLTFNode.set_parent(parent) end

---@return integer
function GLTFNode.get_height() end

---@param height integer
function GLTFNode.set_height(height) end

---@return Transform3D
function GLTFNode.get_xform() end

---@param xform Transform3D
function GLTFNode.set_xform(xform) end

---@return integer
function GLTFNode.get_mesh() end

---@param mesh integer
function GLTFNode.set_mesh(mesh) end

---@return integer
function GLTFNode.get_camera() end

---@param camera integer
function GLTFNode.set_camera(camera) end

---@return integer
function GLTFNode.get_skin() end

---@param skin integer
function GLTFNode.set_skin(skin) end

---@return integer
function GLTFNode.get_skeleton() end

---@param skeleton integer
function GLTFNode.set_skeleton(skeleton) end

---@return Vector3
function GLTFNode.get_position() end

---@param position Vector3
function GLTFNode.set_position(position) end

---@return Quaternion
function GLTFNode.get_rotation() end

---@param rotation Quaternion
function GLTFNode.set_rotation(rotation) end

---@return Vector3
function GLTFNode.get_scale() end

---@param scale Vector3
function GLTFNode.set_scale(scale) end

---@return PackedInt32Array
function GLTFNode.get_children() end

---@param children PackedInt32Array
function GLTFNode.set_children(children) end

---@param child_index integer
function GLTFNode.append_child_index(child_index) end

---@return integer
function GLTFNode.get_light() end

---@param light integer
function GLTFNode.set_light(light) end

---@return boolean
function GLTFNode.get_visible() end

---@param visible boolean
function GLTFNode.set_visible(visible) end

---@param extension_name string
---@return Object
function GLTFNode.get_additional_data(extension_name) end

---@param extension_name string
---@param additional_data Object
function GLTFNode.set_additional_data(extension_name, additional_data) end

---@param gltf_state GLTFState
---@param handle_skeletons boolean?  # Default = true
---@return string
function GLTFNode.get_scene_node_path(gltf_state, handle_skeletons) end
