---@meta _
-- Generated API for game version 0.10.0

---@class SubViewport : Viewport
---@field size Vector2i
---@field size_2d_override Vector2i
---@field size_2d_override_stretch boolean
---@field render_target_clear_mode integer
---@field render_target_update_mode integer
local SubViewport = {}

---@param size Vector2i
function SubViewport.set_size(size) end

---@return Vector2i
function SubViewport.get_size() end

---@param size Vector2i
function SubViewport.set_size_2d_override(size) end

---@return Vector2i
function SubViewport.get_size_2d_override() end

---@param enable boolean
function SubViewport.set_size_2d_override_stretch(enable) end

---@return boolean
function SubViewport.is_size_2d_override_stretch_enabled() end

---@param mode SubViewport.UpdateMode
function SubViewport.set_update_mode(mode) end

---@return SubViewport.UpdateMode
function SubViewport.get_update_mode() end

---@param mode SubViewport.ClearMode
function SubViewport.set_clear_mode(mode) end

---@return SubViewport.ClearMode
function SubViewport.get_clear_mode() end
