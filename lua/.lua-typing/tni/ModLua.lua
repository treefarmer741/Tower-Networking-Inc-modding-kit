---@meta _
-- Generated API for game version 0.10.0

---@class ModLua : Sandbox
---@field lua_entry_file string
---@field mod_entry_binary string
---@field mod_dir string
---@field mod_type string
---@field filesystem ModFileSystem
---@field api_v1 ModApiV1
local ModLua = {}

function ModLua.reload() end

function ModLua.call_if_has() end

---@param s string
function ModLua.mod_log(s) end

---@param s string
function ModLua.handle_stdout(s) end

---@param c (Callable|function)
---@return (Callable|function)
function ModLua.callable_args_to_array(c) end

---@param array Array<any>
---@param idx integer
---@return boolean
function ModLua.array_value_allowed(array, idx) end

---@param id integer
function ModLua.instance_from_id_(id) end

---@param e Error
---@return string
function ModLua.error_string_(e) end
