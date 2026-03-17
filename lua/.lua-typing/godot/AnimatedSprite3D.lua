---@meta _
-- Generated API for game version 0.10.0

---@class AnimatedSprite3D : SpriteBase3D
---@field sprite_frames SpriteFrames
---@field animation string
---@field autoplay string
---@field frame integer
---@field frame_progress number
---@field speed_scale number
local AnimatedSprite3D = {}

---@param sprite_frames SpriteFrames
function AnimatedSprite3D.set_sprite_frames(sprite_frames) end

---@return SpriteFrames
function AnimatedSprite3D.get_sprite_frames() end

---@param name string
function AnimatedSprite3D.set_animation(name) end

---@return string
function AnimatedSprite3D.get_animation() end

---@param name string
function AnimatedSprite3D.set_autoplay(name) end

---@return string
function AnimatedSprite3D.get_autoplay() end

---@return boolean
function AnimatedSprite3D.is_playing() end

---@param name string?  # Default = 
---@param custom_speed number?  # Default = 1.0
---@param from_end boolean?  # Default = false
function AnimatedSprite3D.play(name, custom_speed, from_end) end

---@param name string?  # Default = 
function AnimatedSprite3D.play_backwards(name) end

function AnimatedSprite3D.pause() end

function AnimatedSprite3D.stop() end

---@param frame integer
function AnimatedSprite3D.set_frame(frame) end

---@return integer
function AnimatedSprite3D.get_frame() end

---@param progress number
function AnimatedSprite3D.set_frame_progress(progress) end

---@return number
function AnimatedSprite3D.get_frame_progress() end

---@param frame integer
---@param progress number
function AnimatedSprite3D.set_frame_and_progress(frame, progress) end

---@param speed_scale number
function AnimatedSprite3D.set_speed_scale(speed_scale) end

---@return number
function AnimatedSprite3D.get_speed_scale() end

---@return number
function AnimatedSprite3D.get_playing_speed() end
