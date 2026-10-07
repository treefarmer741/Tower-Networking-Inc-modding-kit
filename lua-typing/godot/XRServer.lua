---@meta _
-- Generated API for game version 0.10.0

---@class XRServer : Object
---@field world_scale number
---@field world_origin Vector3
---@field camera_locked_to_origin boolean
---@field primary_interface Object
local XRServer = {}

---@return number
function XRServer.get_world_scale() end

---@param scale number
function XRServer.set_world_scale(scale) end

---@return Transform3D
function XRServer.get_world_origin() end

---@param world_origin Transform3D
function XRServer.set_world_origin(world_origin) end

---@return Transform3D
function XRServer.get_reference_frame() end

function XRServer.clear_reference_frame() end

---@param rotation_mode XRServer.RotationMode
---@param keep_height boolean
function XRServer.center_on_hmd(rotation_mode, keep_height) end

---@return Transform3D
function XRServer.get_hmd_transform() end

---@param enabled boolean
function XRServer.set_camera_locked_to_origin(enabled) end

---@return boolean
function XRServer.is_camera_locked_to_origin() end

---@param interface XRInterface
function XRServer.add_interface(interface) end

---@return integer
function XRServer.get_interface_count() end

---@param interface XRInterface
function XRServer.remove_interface(interface) end

---@param idx integer
---@return XRInterface
function XRServer.get_interface(idx) end

---@return Array<Dictionary>
function XRServer.get_interfaces() end

---@param name string
---@return XRInterface
function XRServer.find_interface(name) end

---@param tracker XRTracker
function XRServer.add_tracker(tracker) end

---@param tracker XRTracker
function XRServer.remove_tracker(tracker) end

---@param tracker_types integer
---@return table<any,any>
function XRServer.get_trackers(tracker_types) end

---@param tracker_name string
---@return XRTracker
function XRServer.get_tracker(tracker_name) end

---@return XRInterface
function XRServer.get_primary_interface() end

---@param interface XRInterface
function XRServer.set_primary_interface(interface) end
