---@meta _
-- Generated API for game version 0.10.0

---@class Skin : Resource
local Skin = {}

---@param bind_count integer
function Skin.set_bind_count(bind_count) end

---@return integer
function Skin.get_bind_count() end

---@param bone integer
---@param pose Transform3D
function Skin.add_bind(bone, pose) end

---@param name string
---@param pose Transform3D
function Skin.add_named_bind(name, pose) end

---@param bind_index integer
---@param pose Transform3D
function Skin.set_bind_pose(bind_index, pose) end

---@param bind_index integer
---@return Transform3D
function Skin.get_bind_pose(bind_index) end

---@param bind_index integer
---@param name string
function Skin.set_bind_name(bind_index, name) end

---@param bind_index integer
---@return string
function Skin.get_bind_name(bind_index) end

---@param bind_index integer
---@param bone integer
function Skin.set_bind_bone(bind_index, bone) end

---@param bind_index integer
---@return integer
function Skin.get_bind_bone(bind_index) end

function Skin.clear_binds() end
