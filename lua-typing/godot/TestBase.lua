---@meta _
-- Generated API for game version 0.12.1

---@class TestBase : Node
---@field save_name string
---@field is_ready boolean
local TestBase = {}

function TestBase.begin_setup() end

function TestBase.teardown() end

---@param cond boolean
---@param msg string
function TestBase.check(cond, msg) end

---@return table<any,any>
function TestBase.get_result_summary() end
