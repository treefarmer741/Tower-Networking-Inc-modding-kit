---@meta _
-- Generated API for game version 0.10.0

---@class CanvasGroup : Node2D
---@field fit_margin number
---@field clear_margin number
---@field use_mipmaps boolean
local CanvasGroup = {}

---@param fit_margin number
function CanvasGroup.set_fit_margin(fit_margin) end

---@return number
function CanvasGroup.get_fit_margin() end

---@param clear_margin number
function CanvasGroup.set_clear_margin(clear_margin) end

---@return number
function CanvasGroup.get_clear_margin() end

---@param use_mipmaps boolean
function CanvasGroup.set_use_mipmaps(use_mipmaps) end

---@return boolean
function CanvasGroup.is_using_mipmaps() end
