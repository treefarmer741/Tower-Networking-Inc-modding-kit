---@meta _
-- Generated API for game version 0.10.0

---@class Joint3D : Node3D
---@field node_a string
---@field node_b string
---@field solver_priority integer
---@field exclude_nodes_from_collision boolean
local Joint3D = {}

---@param node string
function Joint3D.set_node_a(node) end

---@return string
function Joint3D.get_node_a() end

---@param node string
function Joint3D.set_node_b(node) end

---@return string
function Joint3D.get_node_b() end

---@param priority integer
function Joint3D.set_solver_priority(priority) end

---@return integer
function Joint3D.get_solver_priority() end

---@param enable boolean
function Joint3D.set_exclude_nodes_from_collision(enable) end

---@return boolean
function Joint3D.get_exclude_nodes_from_collision() end

---@return RID
function Joint3D.get_rid() end
