---@meta _
-- Generated API for game version 0.13.4

---@class S10YankParityProbeRigScript : RefCounted
---@field world GameWorld
local S10YankParityProbeRigScript = {}

---@param idx integer?  # Default = 0
---@return Location
function S10YankParityProbeRigScript.location(idx) end

---@param idx integer?  # Default = 0
---@return number
function S10YankParityProbeRigScript.floor_y(idx) end

---@param idx integer?  # Default = 0
---@return number
function S10YankParityProbeRigScript.half_width(idx) end

---@param pos Vector2
---@param loc_idx integer?  # Default = 0
---@return Socket
function S10YankParityProbeRigScript.socket_at(pos, loc_idx) end

---@param device Node
---@return Array<any>
function S10YankParityProbeRigScript.free_rj45_sockets(device) end

---@param length number
---@param a_pos Vector2
---@param b_pos Vector2
---@param sock_a Socket?  # Default = <null>
---@param sock_b Socket?  # Default = <null>
---@return GraphLinkCable
function S10YankParityProbeRigScript.spawn_patch_cable(length, a_pos, b_pos, sock_a, sock_b) end

---@param length number
---@param spawn_pos Vector2
---@return GraphLinkCable
function S10YankParityProbeRigScript.spawn_delivered_cable(length, spawn_pos) end

---@param scene_path string
---@param pos Vector2
---@return DeviceUnit
function S10YankParityProbeRigScript.spawn_device(scene_path, pos) end

---@param pos Vector2
---@return CableTray
function S10YankParityProbeRigScript.spawn_hook(pos) end

---@param hook_a CableTray
---@param hook_b CableTray
---@param start_pos Vector2
---@param end_pos Vector2
---@param sock_start Socket
---@param sock_end Socket
---@return TrayAffixedLink
function S10YankParityProbeRigScript.spawn_tray_link(hook_a, hook_b, start_pos, end_pos, sock_start, sock_end) end

---@return MultiplayerMouse
function S10YankParityProbeRigScript.mouse() end

function S10YankParityProbeRigScript.take_mouse() end

function S10YankParityProbeRigScript.give_back_mouse() end

---@param pos Vector2
function S10YankParityProbeRigScript.set_mouse(pos) end

---@param pos Vector2
function S10YankParityProbeRigScript.camera_look(pos) end

---@param cables Array<any>
---@param counter table<any,any>
function S10YankParityProbeRigScript.watch_unplugs(cables, counter) end
