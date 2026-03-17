---@meta _
-- Generated API for game version 0.10.0

---@class PocosiaAnimatedTextureRect : TextureRect
---@field sprite_frames SpriteFrames
---@field animation string
---@field frame_count integer
---@field curr_frame integer
---@field frame_delta number
---@field curr_frame_duration number
---@field fps number
---@field autoplay_when_shown boolean
---@field is_playing boolean
local PocosiaAnimatedTextureRect = {}

---@param from_frame integer?  # Default = -1
function PocosiaAnimatedTextureRect.play(from_frame) end

function PocosiaAnimatedTextureRect.pause() end
