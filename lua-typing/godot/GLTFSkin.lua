---@meta _
-- Generated API for game version 0.10.0

---@class GLTFSkin : Resource
---@field skin_root integer
---@field joints_original PackedInt32Array
---@field inverse_binds Array<any>
---@field joints PackedInt32Array
---@field non_joints PackedInt32Array
---@field roots PackedInt32Array
---@field skeleton integer
---@field joint_i_to_bone_i table<any,any>
---@field joint_i_to_name table<any,any>
---@field godot_skin Skin
local GLTFSkin = {}

---@return integer
function GLTFSkin.get_skin_root() end

---@param skin_root integer
function GLTFSkin.set_skin_root(skin_root) end

---@return PackedInt32Array
function GLTFSkin.get_joints_original() end

---@param joints_original PackedInt32Array
function GLTFSkin.set_joints_original(joints_original) end

---@return Array<Transform3D>
function GLTFSkin.get_inverse_binds() end

---@param inverse_binds Array<Transform3D>
function GLTFSkin.set_inverse_binds(inverse_binds) end

---@return PackedInt32Array
function GLTFSkin.get_joints() end

---@param joints PackedInt32Array
function GLTFSkin.set_joints(joints) end

---@return PackedInt32Array
function GLTFSkin.get_non_joints() end

---@param non_joints PackedInt32Array
function GLTFSkin.set_non_joints(non_joints) end

---@return PackedInt32Array
function GLTFSkin.get_roots() end

---@param roots PackedInt32Array
function GLTFSkin.set_roots(roots) end

---@return integer
function GLTFSkin.get_skeleton() end

---@param skeleton integer
function GLTFSkin.set_skeleton(skeleton) end

---@return table<any,any>
function GLTFSkin.get_joint_i_to_bone_i() end

---@param joint_i_to_bone_i table<any,any>
function GLTFSkin.set_joint_i_to_bone_i(joint_i_to_bone_i) end

---@return table<any,any>
function GLTFSkin.get_joint_i_to_name() end

---@param joint_i_to_name table<any,any>
function GLTFSkin.set_joint_i_to_name(joint_i_to_name) end

---@return Skin
function GLTFSkin.get_godot_skin() end

---@param godot_skin Skin
function GLTFSkin.set_godot_skin(godot_skin) end
