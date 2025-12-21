---@meta _
-- Generated API for game version 0.9.1

---@class TowerNetworkLink : Node
---@field link_controller LinkController
---@field activated_for_the_day boolean
---@field outlet_a_np string
---@field outlet_b_np string
---@field setup_cost integer
---@field daily_cost integer
---@field highest_nbw_for_day integer
---@field average_bw_per_tick integer
---@field average_load_ratio number
---@field peak_load_ratio number
---@field link_descript string
---@field active boolean
---@field outlet_a LinkOutlet
---@field outlet_b LinkOutlet
---@field controller LogicController
---@field installed_nbw integer
---@field will_decom boolean
local TowerNetworkLink = {}

---@param socket LogicControllerSocket
function TowerNetworkLink.link_socket_neighbour_if_graphcable(socket) end

---@param socket LogicControllerSocket
function TowerNetworkLink.unlink_socket_neighbour_if_graphcable(socket) end

function TowerNetworkLink.activate() end

function TowerNetworkLink.deactivate() end

function TowerNetworkLink.decomission() end

---@param new_bw Object
---@param new_setup Object
---@param new_daily Object
function TowerNetworkLink.upgrade(new_bw, new_setup, new_daily) end

function TowerNetworkLink.teardown_all() end
