---@meta _
-- Generated API for game version 0.10.0

---@class Semaphore : RefCounted
local Semaphore = {}

function Semaphore.wait() end

---@return boolean
function Semaphore.try_wait() end

---@param count integer?  # Default = 1
function Semaphore.post(count) end
