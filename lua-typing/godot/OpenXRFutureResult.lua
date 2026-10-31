---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRFutureResult : RefCounted
local OpenXRFutureResult = {}

---@return OpenXRFutureResult.ResultStatus
function OpenXRFutureResult.get_status() end

---@return integer
function OpenXRFutureResult.get_future() end

function OpenXRFutureResult.cancel_future() end

---@param result_value Object
function OpenXRFutureResult.set_result_value(result_value) end

---@return Object
function OpenXRFutureResult.get_result_value() end
