---@meta _
-- Generated API for game version 0.10.0

---@class Skeleton3D : Node3D
---@field motion_scale number
---@field show_rest_only boolean
---@field modifier_callback_mode_process integer
---@field animate_physical_bones boolean
local Skeleton3D = {}

---@param name string
---@return integer
function Skeleton3D.add_bone(name) end

---@param name string
---@return integer
function Skeleton3D.find_bone(name) end

---@param bone_idx integer
---@return string
function Skeleton3D.get_bone_name(bone_idx) end

---@param bone_idx integer
---@param name string
function Skeleton3D.set_bone_name(bone_idx, name) end

---@param bone_idx integer
---@param key string
---@return Object
function Skeleton3D.get_bone_meta(bone_idx, key) end

---@param bone_idx integer
---@return Array<StringName>
function Skeleton3D.get_bone_meta_list(bone_idx) end

---@param bone_idx integer
---@param key string
---@return boolean
function Skeleton3D.has_bone_meta(bone_idx, key) end

---@param bone_idx integer
---@param key string
---@param value Object
function Skeleton3D.set_bone_meta(bone_idx, key, value) end

---@return string
function Skeleton3D.get_concatenated_bone_names() end

---@param bone_idx integer
---@return integer
function Skeleton3D.get_bone_parent(bone_idx) end

---@param bone_idx integer
---@param parent_idx integer
function Skeleton3D.set_bone_parent(bone_idx, parent_idx) end

---@return integer
function Skeleton3D.get_bone_count() end

---@return integer
function Skeleton3D.get_version() end

---@param bone_idx integer
function Skeleton3D.unparent_bone_and_rest(bone_idx) end

---@param bone_idx integer
---@return PackedInt32Array
function Skeleton3D.get_bone_children(bone_idx) end

---@return PackedInt32Array
function Skeleton3D.get_parentless_bones() end

---@param bone_idx integer
---@return Transform3D
function Skeleton3D.get_bone_rest(bone_idx) end

---@param bone_idx integer
---@param rest Transform3D
function Skeleton3D.set_bone_rest(bone_idx, rest) end

---@param bone_idx integer
---@return Transform3D
function Skeleton3D.get_bone_global_rest(bone_idx) end

---@return Skin
function Skeleton3D.create_skin_from_rest_transforms() end

---@param skin Skin
---@return SkinReference
function Skeleton3D.register_skin(skin) end

function Skeleton3D.localize_rests() end

function Skeleton3D.clear_bones() end

---@param bone_idx integer
---@return Transform3D
function Skeleton3D.get_bone_pose(bone_idx) end

---@param bone_idx integer
---@param pose Transform3D
function Skeleton3D.set_bone_pose(bone_idx, pose) end

---@param bone_idx integer
---@param position Vector3
function Skeleton3D.set_bone_pose_position(bone_idx, position) end

---@param bone_idx integer
---@param rotation Quaternion
function Skeleton3D.set_bone_pose_rotation(bone_idx, rotation) end

---@param bone_idx integer
---@param scale Vector3
function Skeleton3D.set_bone_pose_scale(bone_idx, scale) end

---@param bone_idx integer
---@return Vector3
function Skeleton3D.get_bone_pose_position(bone_idx) end

---@param bone_idx integer
---@return Quaternion
function Skeleton3D.get_bone_pose_rotation(bone_idx) end

---@param bone_idx integer
---@return Vector3
function Skeleton3D.get_bone_pose_scale(bone_idx) end

---@param bone_idx integer
function Skeleton3D.reset_bone_pose(bone_idx) end

function Skeleton3D.reset_bone_poses() end

---@param bone_idx integer
---@return boolean
function Skeleton3D.is_bone_enabled(bone_idx) end

---@param bone_idx integer
---@param enabled boolean?  # Default = true
function Skeleton3D.set_bone_enabled(bone_idx, enabled) end

---@param bone_idx integer
---@return Transform3D
function Skeleton3D.get_bone_global_pose(bone_idx) end

---@param bone_idx integer
---@param pose Transform3D
function Skeleton3D.set_bone_global_pose(bone_idx, pose) end

function Skeleton3D.force_update_all_bone_transforms() end

---@param bone_idx integer
function Skeleton3D.force_update_bone_child_transform(bone_idx) end

---@param motion_scale number
function Skeleton3D.set_motion_scale(motion_scale) end

---@return number
function Skeleton3D.get_motion_scale() end

---@param enabled boolean
function Skeleton3D.set_show_rest_only(enabled) end

---@return boolean
function Skeleton3D.is_show_rest_only() end

---@param mode Skeleton3D.ModifierCallbackModeProcess
function Skeleton3D.set_modifier_callback_mode_process(mode) end

---@return Skeleton3D.ModifierCallbackModeProcess
function Skeleton3D.get_modifier_callback_mode_process() end

---@param delta number
function Skeleton3D.advance(delta) end

function Skeleton3D.clear_bones_global_pose_override() end

---@param bone_idx integer
---@param pose Transform3D
---@param amount number
---@param persistent boolean?  # Default = false
function Skeleton3D.set_bone_global_pose_override(bone_idx, pose, amount, persistent) end

---@param bone_idx integer
---@return Transform3D
function Skeleton3D.get_bone_global_pose_override(bone_idx) end

---@param bone_idx integer
---@return Transform3D
function Skeleton3D.get_bone_global_pose_no_override(bone_idx) end

---@param enabled boolean
function Skeleton3D.set_animate_physical_bones(enabled) end

---@return boolean
function Skeleton3D.get_animate_physical_bones() end

function Skeleton3D.physical_bones_stop_simulation() end

---@param bones Array<StringName>?  # Default = []
function Skeleton3D.physical_bones_start_simulation(bones) end

---@param exception RID
function Skeleton3D.physical_bones_add_collision_exception(exception) end

---@param exception RID
function Skeleton3D.physical_bones_remove_collision_exception(exception) end
