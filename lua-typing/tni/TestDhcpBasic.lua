---@meta _
-- Generated API for game version 0.12.1

---@class TestDhcpBasic : TestBase
---@field BOULDER string # Constant value: /root/Main/GameWorld/DeviceSpawner/BoulderPlus
---@field ICC1 string # Constant value: /root/Main/GameWorld/DeviceSpawner/ICC1
---@field ICC2 string # Constant value: /root/Main/GameWorld/DeviceSpawner/ICC2
---@field save_name string
---@field is_ready boolean
local TestDhcpBasic = {}

function TestDhcpBasic.test_boulder_is_dhcp_server() end

function TestDhcpBasic.begin_setup() end

function TestDhcpBasic.teardown() end

---@param cond boolean
---@param msg string
function TestDhcpBasic.check(cond, msg) end

---@return table<any,any>
function TestDhcpBasic.get_result_summary() end
