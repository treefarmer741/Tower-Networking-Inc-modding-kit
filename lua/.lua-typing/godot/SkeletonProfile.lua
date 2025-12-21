---@meta _
-- Generated API for game version 0.9.1

---@class SkeletonProfile : Resource
---@field root_bone string
---@field scale_base_bone string
---@field group_size Groups,groups/
---@field bone_size Bones,bones/
local SkeletonProfile = {}

---@param bone_name string
function SkeletonProfile.set_root_bone(bone_name) end

---@return string
function SkeletonProfile.get_root_bone() end

---@param bone_name string
function SkeletonProfile.set_scale_base_bone(bone_name) end

---@return string
function SkeletonProfile.get_scale_base_bone() end

---@param size integer
function SkeletonProfile.set_group_size(size) end

---@return integer
function SkeletonProfile.get_group_size() end

---@param group_idx integer
---@return string
function SkeletonProfile.get_group_name(group_idx) end

---@param group_idx integer
---@param group_name string
function SkeletonProfile.set_group_name(group_idx, group_name) end

---@param group_idx integer
---@return Texture2D
function SkeletonProfile.get_texture(group_idx) end

---@param group_idx integer
---@param texture Texture2D
function SkeletonProfile.set_texture(group_idx, texture) end

---@param size integer
function SkeletonProfile.set_bone_size(size) end

---@return integer
function SkeletonProfile.get_bone_size() end

---@param bone_name string
---@return integer
function SkeletonProfile.find_bone(bone_name) end

---@param bone_idx integer
---@return string
function SkeletonProfile.get_bone_name(bone_idx) end

---@param bone_idx integer
---@param bone_name string
function SkeletonProfile.set_bone_name(bone_idx, bone_name) end

---@param bone_idx integer
---@return string
function SkeletonProfile.get_bone_parent(bone_idx) end

---@param bone_idx integer
---@param bone_parent string
function SkeletonProfile.set_bone_parent(bone_idx, bone_parent) end

---@param bone_idx integer
---@return SkeletonProfile.TailDirection
function SkeletonProfile.get_tail_direction(bone_idx) end

---@param bone_idx integer
---@param tail_direction SkeletonProfile.TailDirection
function SkeletonProfile.set_tail_direction(bone_idx, tail_direction) end

---@param bone_idx integer
---@return string
function SkeletonProfile.get_bone_tail(bone_idx) end

---@param bone_idx integer
---@param bone_tail string
function SkeletonProfile.set_bone_tail(bone_idx, bone_tail) end

---@param bone_idx integer
---@return Transform3D
function SkeletonProfile.get_reference_pose(bone_idx) end

---@param bone_idx integer
---@param bone_name Transform3D
function SkeletonProfile.set_reference_pose(bone_idx, bone_name) end

---@param bone_idx integer
---@return Vector2
function SkeletonProfile.get_handle_offset(bone_idx) end

---@param bone_idx integer
---@param handle_offset Vector2
function SkeletonProfile.set_handle_offset(bone_idx, handle_offset) end

---@param bone_idx integer
---@return string
function SkeletonProfile.get_group(bone_idx) end

---@param bone_idx integer
---@param group string
function SkeletonProfile.set_group(bone_idx, group) end

---@param bone_idx integer
---@return boolean
function SkeletonProfile.is_required(bone_idx) end

---@param bone_idx integer
---@param required boolean
function SkeletonProfile.set_required(bone_idx, required) end
