---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRFrameSynthesisExtension : OpenXRExtensionWrapper
---@field enabled boolean
---@field relax_frame_interval boolean
local OpenXRFrameSynthesisExtension = {}

---@return boolean
function OpenXRFrameSynthesisExtension.is_available() end

---@return boolean
function OpenXRFrameSynthesisExtension.is_enabled() end

---@param enable boolean
function OpenXRFrameSynthesisExtension.set_enabled(enable) end

---@return boolean
function OpenXRFrameSynthesisExtension.get_relax_frame_interval() end

---@param relax_frame_interval boolean
function OpenXRFrameSynthesisExtension.set_relax_frame_interval(relax_frame_interval) end

function OpenXRFrameSynthesisExtension.skip_next_frame() end
