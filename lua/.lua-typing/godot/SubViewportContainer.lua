---@meta _
-- Generated API for game version 0.10.0

---@class SubViewportContainer : Container
---@field stretch boolean
---@field stretch_shrink integer
---@field mouse_target boolean
local SubViewportContainer = {}

---@param enable boolean
function SubViewportContainer.set_stretch(enable) end

---@return boolean
function SubViewportContainer.is_stretch_enabled() end

---@param amount integer
function SubViewportContainer.set_stretch_shrink(amount) end

---@return integer
function SubViewportContainer.get_stretch_shrink() end

---@param amount boolean
function SubViewportContainer.set_mouse_target(amount) end

---@return boolean
function SubViewportContainer.is_mouse_target_enabled() end
