---@meta _
-- Generated API for game version 0.10.0

---@class PhysicalBoneSimulator3D : SkeletonModifier3D
local PhysicalBoneSimulator3D = {}

---@return boolean
function PhysicalBoneSimulator3D.is_simulating_physics() end

function PhysicalBoneSimulator3D.physical_bones_stop_simulation() end

---@param bones Array<StringName>?  # Default = []
function PhysicalBoneSimulator3D.physical_bones_start_simulation(bones) end

---@param exception RID
function PhysicalBoneSimulator3D.physical_bones_add_collision_exception(exception) end

---@param exception RID
function PhysicalBoneSimulator3D.physical_bones_remove_collision_exception(exception) end
