---@meta _
-- Generated API for game version 0.9.1

---@class Thread : RefCounted
local Thread = {}

---@param callable (Callable|function)
---@param priority Thread.Priority?  # Default = 1
---@return Error
function Thread.start(callable, priority) end

---@return string
function Thread.get_id() end

---@return boolean
function Thread.is_started() end

---@return boolean
function Thread.is_alive() end

---@return Object
function Thread.wait_to_finish() end

---@param enabled boolean
function Thread.set_thread_safety_checks_enabled(enabled) end
