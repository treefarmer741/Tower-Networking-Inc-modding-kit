---@meta _
-- Generated API for game version 0.10.11

---@class ModLua : Mod
---@field lua_entry_file string
---@field mod_entry_binary string
---@field mod_dir string
---@field mod_type string
---@field manifest ModManifest
---@field filesystem ModFileSystem
---@field api_v1 ModApiV1
local ModLua = {}

function ModLua.reload() end

---@return boolean
function ModLua.has_critical_error() end

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
---@return Object
function ModLua.instance_from_id_(id) end

---@param e Error
---@return string
function ModLua.error_string_(e) end

---@param value Object
---@return string
function ModLua.str_(value) end
