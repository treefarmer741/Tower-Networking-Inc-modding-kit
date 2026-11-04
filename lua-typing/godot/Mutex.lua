---@meta _
-- Generated API for game version 0.10.0

---@class Mutex : RefCounted
local Mutex = {}

function Mutex.lock() end

---@return boolean
function Mutex.try_lock() end

function Mutex.unlock() end
