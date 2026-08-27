---@meta _
-- Generated API for game version 0.12.1

---@class TestExample : TestBase
---@field save_name string
---@field is_ready boolean
local TestExample = {}

function TestExample.test_example_property() end

function TestExample.test_example_action() end

function TestExample.begin_setup() end

function TestExample.teardown() end

---@param cond boolean
---@param msg string
function TestExample.check(cond, msg) end

---@return table<any,any>
function TestExample.get_result_summary() end
