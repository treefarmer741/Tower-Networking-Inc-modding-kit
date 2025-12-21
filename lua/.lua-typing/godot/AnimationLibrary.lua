---@meta _
-- Generated API for game version 0.9.1

---@class AnimationLibrary : Resource
local AnimationLibrary = {}

---@param name string
---@param animation Animation
---@return Error
function AnimationLibrary.add_animation(name, animation) end

---@param name string
function AnimationLibrary.remove_animation(name) end

---@param name string
---@param newname string
function AnimationLibrary.rename_animation(name, newname) end

---@param name string
---@return boolean
function AnimationLibrary.has_animation(name) end

---@param name string
---@return Animation
function AnimationLibrary.get_animation(name) end

---@return Array<StringName>
function AnimationLibrary.get_animation_list() end

---@return integer
function AnimationLibrary.get_animation_list_size() end
