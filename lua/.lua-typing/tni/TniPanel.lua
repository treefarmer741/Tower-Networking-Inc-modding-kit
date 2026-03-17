---@meta _
-- Generated API for game version 0.9.1

---@class TniPanel : PanelContainer
---@field aplayer AnimationPlayer
---@field symiconrect TextureRect
---@field timer Timer
---@field timer_label Label
---@field seconds_elapsed number
local TniPanel = {}

---@param elapsed_s number?  # Default = 0.0
function TniPanel.play(elapsed_s) end

function TniPanel.pause() end
