---@meta _
-- Generated API for game version 0.10.0

---@class Joint2D : Node2D
---@field node_a string
---@field node_b string
---@field bias number
---@field disable_collision boolean
local Joint2D = {}

---@param node string
function Joint2D.set_node_a(node) end

---@return string
function Joint2D.get_node_a() end

---@param node string
function Joint2D.set_node_b(node) end

---@return string
function Joint2D.get_node_b() end

---@param bias number
function Joint2D.set_bias(bias) end

---@return number
function Joint2D.get_bias() end

---@param enable boolean
function Joint2D.set_exclude_nodes_from_collision(enable) end

---@return boolean
function Joint2D.get_exclude_nodes_from_collision() end

---@return RID
function Joint2D.get_rid() end
