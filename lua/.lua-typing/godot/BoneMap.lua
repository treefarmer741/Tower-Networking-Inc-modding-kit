---@meta _
-- Generated API for game version 0.9.1

---@class BoneMap : Resource
---@field profile SkeletonProfile
---@field bonemap bonemap
local BoneMap = {}

---@return SkeletonProfile
function BoneMap.get_profile() end

---@param profile SkeletonProfile
function BoneMap.set_profile(profile) end

---@param profile_bone_name string
---@return string
function BoneMap.get_skeleton_bone_name(profile_bone_name) end

---@param profile_bone_name string
---@param skeleton_bone_name string
function BoneMap.set_skeleton_bone_name(profile_bone_name, skeleton_bone_name) end

---@param skeleton_bone_name string
---@return string
function BoneMap.find_profile_bone_name(skeleton_bone_name) end
