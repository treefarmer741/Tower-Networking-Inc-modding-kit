---@meta _
-- Generated API for game version 0.9.1

---@class GLTFSkeleton : Resource
---@field joints PackedInt32Array
---@field roots PackedInt32Array
---@field unique_names Array<any>
---@field godot_bone_node table<any,any>
local GLTFSkeleton = {}

---@return PackedInt32Array
function GLTFSkeleton.get_joints() end

---@param joints PackedInt32Array
function GLTFSkeleton.set_joints(joints) end

---@return PackedInt32Array
function GLTFSkeleton.get_roots() end

---@param roots PackedInt32Array
function GLTFSkeleton.set_roots(roots) end

---@return Skeleton3D
function GLTFSkeleton.get_godot_skeleton() end

---@return Array<string>
function GLTFSkeleton.get_unique_names() end

---@param unique_names Array<string>
function GLTFSkeleton.set_unique_names(unique_names) end

---@return table<any,any>
function GLTFSkeleton.get_godot_bone_node() end

---@param godot_bone_node table<any,any>
function GLTFSkeleton.set_godot_bone_node(godot_bone_node) end

---@return integer
function GLTFSkeleton.get_bone_attachment_count() end

---@param idx integer
---@return BoneAttachment3D
function GLTFSkeleton.get_bone_attachment(idx) end
