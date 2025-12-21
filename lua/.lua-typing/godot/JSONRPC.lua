---@meta _
-- Generated API for game version 0.9.1

---@class JSONRPC : Object
local JSONRPC = {}

---@param name string
---@param callback (Callable|function)
function JSONRPC.set_method(name, callback) end

---@param action Object
---@param recurse boolean?  # Default = false
---@return Object
function JSONRPC.process_action(action, recurse) end

---@param action string
---@return string
function JSONRPC.process_string(action) end

---@param method string
---@param params Object
---@param id Object
---@return table<any,any>
function JSONRPC.make_request(method, params, id) end

---@param result Object
---@param id Object
---@return table<any,any>
function JSONRPC.make_response(result, id) end

---@param method string
---@param params Object
---@return table<any,any>
function JSONRPC.make_notification(method, params) end

---@param code integer
---@param message string
---@param id Object?  # Default = <null>
---@return table<any,any>
function JSONRPC.make_response_error(code, message, id) end
