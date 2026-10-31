---@meta _
-- Generated API for game version 0.10.0

---@class DebugAdapterParser : Object
local DebugAdapterParser = {}

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_initialize(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_disconnect(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_launch(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_attach(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_restart(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_terminate(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_configurationDone(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_pause(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_continue(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_threads(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_stackTrace(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_setBreakpoints(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_breakpointLocations(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_scopes(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_variables(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_next(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_stepIn(params) end

---@param params table<any,any>
---@return table<any,any>
function DebugAdapterParser.req_evaluate(params) end

---@param params table<any,any>
---@return table<any,any>
DebugAdapterParser["req_godot/put_msg"] = function(params) end
