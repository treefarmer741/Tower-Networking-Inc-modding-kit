---@meta _
-- Generated API for game version 0.10.0

---@class SkeletonModificationStack2D : Resource
---@field enabled boolean
---@field strength number
---@field modification_count Modifications,modifications/
local SkeletonModificationStack2D = {}

function SkeletonModificationStack2D.setup() end

---@param delta number
---@param execution_mode integer
function SkeletonModificationStack2D.execute(delta, execution_mode) end

---@param enabled boolean
function SkeletonModificationStack2D.enable_all_modifications(enabled) end

---@param mod_idx integer
---@return SkeletonModification2D
function SkeletonModificationStack2D.get_modification(mod_idx) end

---@param modification SkeletonModification2D
function SkeletonModificationStack2D.add_modification(modification) end

---@param mod_idx integer
function SkeletonModificationStack2D.delete_modification(mod_idx) end

---@param mod_idx integer
---@param modification SkeletonModification2D
function SkeletonModificationStack2D.set_modification(mod_idx, modification) end

---@param count integer
function SkeletonModificationStack2D.set_modification_count(count) end

---@return integer
function SkeletonModificationStack2D.get_modification_count() end

---@return boolean
function SkeletonModificationStack2D.get_is_setup() end

---@param enabled boolean
function SkeletonModificationStack2D.set_enabled(enabled) end

---@return boolean
function SkeletonModificationStack2D.get_enabled() end

---@param strength number
function SkeletonModificationStack2D.set_strength(strength) end

---@return number
function SkeletonModificationStack2D.get_strength() end

---@return Skeleton2D
function SkeletonModificationStack2D.get_skeleton() end
