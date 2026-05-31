---@meta _
-- Generated API for game version 0.10.11

---@class Mod : Sandbox
---@field mod_entry_binary string
---@field mod_dir string
---@field mod_type string
---@field manifest ModManifest
---@field filesystem ModFileSystem
---@field api_v1 ModApiV1
local Mod = {}

function Mod.reload() end

---@return boolean
function Mod.has_critical_error() end

function Mod.call_if_has() end

---@param s string
function Mod.mod_log(s) end

---@param s string
function Mod.handle_stdout(s) end

---@param c (Callable|function)
---@return (Callable|function)
function Mod.callable_args_to_array(c) end

---@param array Array<any>
---@param idx integer
---@return boolean
function Mod.array_value_allowed(array, idx) end

---@param id integer
---@return Object
function Mod.instance_from_id_(id) end

---@param e Error
---@return string
function Mod.error_string_(e) end

---@param value Object
---@return string
function Mod.str_(value) end
