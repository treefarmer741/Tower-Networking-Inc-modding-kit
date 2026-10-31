---@meta _
-- Generated API for game version 0.10.0

---@class SpriteFrames : Resource
---@field animations Array<any>
local SpriteFrames = {}

---@param anim string
function SpriteFrames.add_animation(anim) end

---@param anim string
---@return boolean
function SpriteFrames.has_animation(anim) end

---@param anim_from string
---@param anim_to string
function SpriteFrames.duplicate_animation(anim_from, anim_to) end

---@param anim string
function SpriteFrames.remove_animation(anim) end

---@param anim string
---@param newname string
function SpriteFrames.rename_animation(anim, newname) end

---@return PackedStringArray
function SpriteFrames.get_animation_names() end

---@param anim string
---@param fps number
function SpriteFrames.set_animation_speed(anim, fps) end

---@param anim string
---@return number
function SpriteFrames.get_animation_speed(anim) end

---@param anim string
---@param loop boolean
function SpriteFrames.set_animation_loop(anim, loop) end

---@param anim string
---@return boolean
function SpriteFrames.get_animation_loop(anim) end

---@param anim string
---@param texture Texture2D
---@param duration number?  # Default = 1.0
---@param at_position integer?  # Default = -1
function SpriteFrames.add_frame(anim, texture, duration, at_position) end

---@param anim string
---@param idx integer
---@param texture Texture2D
---@param duration number?  # Default = 1.0
function SpriteFrames.set_frame(anim, idx, texture, duration) end

---@param anim string
---@param idx integer
function SpriteFrames.remove_frame(anim, idx) end

---@param anim string
---@return integer
function SpriteFrames.get_frame_count(anim) end

---@param anim string
---@param idx integer
---@return Texture2D
function SpriteFrames.get_frame_texture(anim, idx) end

---@param anim string
---@param idx integer
---@return number
function SpriteFrames.get_frame_duration(anim, idx) end

---@param anim string
function SpriteFrames.clear(anim) end

function SpriteFrames.clear_all() end
