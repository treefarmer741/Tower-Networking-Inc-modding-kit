---@meta _
-- Generated API for game version 0.9.1

---@class RefCounted : Object
local RefCounted = {}

---@return boolean
function RefCounted.init_ref() end

---@return boolean
function RefCounted.reference() end

---@return boolean
function RefCounted.unreference() end

---@return integer
function RefCounted.get_reference_count() end
