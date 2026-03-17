---@meta _
-- Generated API for game version 0.9.1

---@class BinderOrigin : Node3D
---@field origin_joint PinJoint3D
---@field link_scn PackedScene
---@field unspooling_marker Node3D
---@field links Array<any>
---@field head_link Object
---@field total_links Object
---@field is_pinning_a_link boolean
local BinderOrigin = {}

---@return Object
function BinderOrigin.make_link() end

---@param time_f number?  # Default = 0.3
function BinderOrigin.unspool(time_f) end

---@param time_f number?  # Default = 2.0
function BinderOrigin.spool(time_f) end

---@param phyb3do PhysicsBody3D
---@param global_bind_point Vector3
function BinderOrigin.bind_object_to_head(phyb3do, global_bind_point) end

function BinderOrigin.unbind_head() end

function BinderOrigin.free_links() end

function BinderOrigin.unbind_anchor() end

---@param phyb3do PhysicsBody3D
function BinderOrigin.bind_anchor(phyb3do) end

---@param p3b PhysicsBody3D
---@param global_dst_point Vector3
function BinderOrigin.make_and_bind_segments_instantly(p3b, global_dst_point) end
