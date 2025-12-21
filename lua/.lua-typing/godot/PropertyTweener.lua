---@meta _
-- Generated API for game version 0.9.1

---@class PropertyTweener : Tweener
local PropertyTweener = {}

---@param value Object
---@return PropertyTweener
function PropertyTweener.from(value) end

---@return PropertyTweener
function PropertyTweener.from_current() end

---@return PropertyTweener
function PropertyTweener.as_relative() end

---@param trans Tween.TransitionType
---@return PropertyTweener
function PropertyTweener.set_trans(trans) end

---@param ease Tween.EaseType
---@return PropertyTweener
function PropertyTweener.set_ease(ease) end

---@param interpolator_method (Callable|function)
---@return PropertyTweener
function PropertyTweener.set_custom_interpolator(interpolator_method) end

---@param delay number
---@return PropertyTweener
function PropertyTweener.set_delay(delay) end
