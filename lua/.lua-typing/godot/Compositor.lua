---@meta _
-- Generated API for game version 0.10.0

---@class Compositor : Resource
---@field compositor_effects Array<24/17:CompositorEffect>
local Compositor = {}

---@param compositor_effects Array<CompositorEffect>
function Compositor.set_compositor_effects(compositor_effects) end

---@return Array<CompositorEffect>
function Compositor.get_compositor_effects() end
