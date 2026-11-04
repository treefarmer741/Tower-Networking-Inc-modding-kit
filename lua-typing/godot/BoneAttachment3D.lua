---@meta _
-- Generated API for game version 0.10.0

---@class BoneAttachment3D : Node3D
---@field bone_name string
---@field bone_idx integer
---@field override_pose boolean
---@field use_external_skeleton boolean
---@field external_skeleton string
local BoneAttachment3D = {}

---@return Skeleton3D
function BoneAttachment3D.get_skeleton() end

---@param bone_name string
function BoneAttachment3D.set_bone_name(bone_name) end

---@return string
function BoneAttachment3D.get_bone_name() end

---@param bone_idx integer
function BoneAttachment3D.set_bone_idx(bone_idx) end

---@return integer
function BoneAttachment3D.get_bone_idx() end

function BoneAttachment3D.on_skeleton_update() end

---@param override_pose boolean
function BoneAttachment3D.set_override_pose(override_pose) end

---@return boolean
function BoneAttachment3D.get_override_pose() end

---@param use_external_skeleton boolean
function BoneAttachment3D.set_use_external_skeleton(use_external_skeleton) end

---@return boolean
function BoneAttachment3D.get_use_external_skeleton() end

---@param external_skeleton string
function BoneAttachment3D.set_external_skeleton(external_skeleton) end

---@return string
function BoneAttachment3D.get_external_skeleton() end
