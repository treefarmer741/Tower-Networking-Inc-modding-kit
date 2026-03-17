---@meta _
-- Generated API for game version 0.10.0

---@class Parallax2D : Node2D
---@field scroll_scale Vector2
---@field scroll_offset Vector2
---@field repeat_size Vector2
---@field autoscroll Vector2
---@field repeat_times integer
---@field limit_begin Vector2
---@field limit_end Vector2
---@field follow_viewport boolean
---@field ignore_camera_scroll boolean
---@field screen_offset Vector2
local Parallax2D = {}

---@param scale Vector2
function Parallax2D.set_scroll_scale(scale) end

---@return Vector2
function Parallax2D.get_scroll_scale() end

---@param repeat_size Vector2
function Parallax2D.set_repeat_size(repeat_size) end

---@return Vector2
function Parallax2D.get_repeat_size() end

---@param repeat_times integer
function Parallax2D.set_repeat_times(repeat_times) end

---@return integer
function Parallax2D.get_repeat_times() end

---@param autoscroll Vector2
function Parallax2D.set_autoscroll(autoscroll) end

---@return Vector2
function Parallax2D.get_autoscroll() end

---@param offset Vector2
function Parallax2D.set_scroll_offset(offset) end

---@return Vector2
function Parallax2D.get_scroll_offset() end

---@param offset Vector2
function Parallax2D.set_screen_offset(offset) end

---@return Vector2
function Parallax2D.get_screen_offset() end

---@param offset Vector2
function Parallax2D.set_limit_begin(offset) end

---@return Vector2
function Parallax2D.get_limit_begin() end

---@param offset Vector2
function Parallax2D.set_limit_end(offset) end

---@return Vector2
function Parallax2D.get_limit_end() end

---@param follow boolean
function Parallax2D.set_follow_viewport(follow) end

---@return boolean
function Parallax2D.get_follow_viewport() end

---@param ignore boolean
function Parallax2D.set_ignore_camera_scroll(ignore) end

---@return boolean
function Parallax2D.is_ignore_camera_scroll() end
