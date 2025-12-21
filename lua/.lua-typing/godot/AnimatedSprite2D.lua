---@meta _
-- Generated API for game version 0.9.1

---@class AnimatedSprite2D : Node2D
---@field sprite_frames SpriteFrames
---@field animation string
---@field autoplay string
---@field frame integer
---@field frame_progress number
---@field speed_scale number
---@field centered boolean
---@field offset Vector2
---@field flip_h boolean
---@field flip_v boolean
local AnimatedSprite2D = {}

---@param sprite_frames SpriteFrames
function AnimatedSprite2D.set_sprite_frames(sprite_frames) end

---@return SpriteFrames
function AnimatedSprite2D.get_sprite_frames() end

---@param name string
function AnimatedSprite2D.set_animation(name) end

---@return string
function AnimatedSprite2D.get_animation() end

---@param name string
function AnimatedSprite2D.set_autoplay(name) end

---@return string
function AnimatedSprite2D.get_autoplay() end

---@return boolean
function AnimatedSprite2D.is_playing() end

---@param name string?  # Default = 
---@param custom_speed number?  # Default = 1.0
---@param from_end boolean?  # Default = false
function AnimatedSprite2D.play(name, custom_speed, from_end) end

---@param name string?  # Default = 
function AnimatedSprite2D.play_backwards(name) end

function AnimatedSprite2D.pause() end

function AnimatedSprite2D.stop() end

---@param centered boolean
function AnimatedSprite2D.set_centered(centered) end

---@return boolean
function AnimatedSprite2D.is_centered() end

---@param offset Vector2
function AnimatedSprite2D.set_offset(offset) end

---@return Vector2
function AnimatedSprite2D.get_offset() end

---@param flip_h boolean
function AnimatedSprite2D.set_flip_h(flip_h) end

---@return boolean
function AnimatedSprite2D.is_flipped_h() end

---@param flip_v boolean
function AnimatedSprite2D.set_flip_v(flip_v) end

---@return boolean
function AnimatedSprite2D.is_flipped_v() end

---@param frame integer
function AnimatedSprite2D.set_frame(frame) end

---@return integer
function AnimatedSprite2D.get_frame() end

---@param progress number
function AnimatedSprite2D.set_frame_progress(progress) end

---@return number
function AnimatedSprite2D.get_frame_progress() end

---@param frame integer
---@param progress number
function AnimatedSprite2D.set_frame_and_progress(frame, progress) end

---@param speed_scale number
function AnimatedSprite2D.set_speed_scale(speed_scale) end

---@return number
function AnimatedSprite2D.get_speed_scale() end

---@return number
function AnimatedSprite2D.get_playing_speed() end
