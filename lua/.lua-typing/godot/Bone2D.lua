---@meta _
-- Generated API for game version 0.9.1

---@class Bone2D : Node2D
---@field rest Transform2D
local Bone2D = {}

---@param rest Transform2D
function Bone2D.set_rest(rest) end

---@return Transform2D
function Bone2D.get_rest() end

function Bone2D.apply_rest() end

---@return Transform2D
function Bone2D.get_skeleton_rest() end

---@return integer
function Bone2D.get_index_in_skeleton() end

---@param auto_calculate boolean
function Bone2D.set_autocalculate_length_and_angle(auto_calculate) end

---@return boolean
function Bone2D.get_autocalculate_length_and_angle() end

---@param length number
function Bone2D.set_length(length) end

---@return number
function Bone2D.get_length() end

---@param angle number
function Bone2D.set_bone_angle(angle) end

---@return number
function Bone2D.get_bone_angle() end
