---@meta _
-- Generated API for game version 0.10.0

---@class XRTracker : RefCounted
---@field type integer
---@field name string
---@field description string
local XRTracker = {}

---@return XRServer.TrackerType
function XRTracker.get_tracker_type() end

---@param type XRServer.TrackerType
function XRTracker.set_tracker_type(type) end

---@return string
function XRTracker.get_tracker_name() end

---@param name string
function XRTracker.set_tracker_name(name) end

---@return string
function XRTracker.get_tracker_desc() end

---@param description string
function XRTracker.set_tracker_desc(description) end
