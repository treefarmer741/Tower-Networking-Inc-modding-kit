---@meta _
-- Generated API for game version 0.9.1

---@class GuideController : Node
---@field static_watch table<any,any>
---@field globally_disabled boolean
local GuideController = {}

function GuideController.cleanup() end

---@param guide_name string
function GuideController.mark_guide_complete(guide_name) end
