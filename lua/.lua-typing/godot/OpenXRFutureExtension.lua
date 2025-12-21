---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRFutureExtension : OpenXRExtensionWrapper
local OpenXRFutureExtension = {}

---@return boolean
function OpenXRFutureExtension.is_active() end

---@param future integer
---@param on_success (Callable|function)?  # Default = null::null
---@return OpenXRFutureResult
function OpenXRFutureExtension.register_future(future, on_success) end

---@param future integer
function OpenXRFutureExtension.cancel_future(future) end
