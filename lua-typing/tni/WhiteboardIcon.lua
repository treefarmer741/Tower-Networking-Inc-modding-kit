---@meta _
-- Generated API for game version 0.12.1

---@class WhiteboardIcon : Control
---@field icon_type string
---@field icon_display_size Vector2
---@field label_text string
local WhiteboardIcon = {}

---@param type string
---@param tex Texture2D
---@param canvas Node
function WhiteboardIcon.setup(type, tex, canvas) end

---@param on boolean
function WhiteboardIcon.set_highlighted(on) end

---@param text string
function WhiteboardIcon.set_label(text) end
