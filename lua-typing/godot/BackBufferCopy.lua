---@meta _
-- Generated API for game version 0.10.0

---@class BackBufferCopy : Node2D
---@field copy_mode integer
---@field rect Rect2
local BackBufferCopy = {}

---@param rect Rect2
function BackBufferCopy.set_rect(rect) end

---@return Rect2
function BackBufferCopy.get_rect() end

---@param copy_mode BackBufferCopy.CopyMode
function BackBufferCopy.set_copy_mode(copy_mode) end

---@return BackBufferCopy.CopyMode
function BackBufferCopy.get_copy_mode() end
