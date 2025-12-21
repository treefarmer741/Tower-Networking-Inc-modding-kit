---@meta _
-- Generated API for game version 0.9.1

---@class GDScriptWorkspace : RefCounted
local GDScriptWorkspace = {}

---@param _unnamed_arg0 Object
---@param _unnamed_arg1 string
---@param _unnamed_arg2 PackedStringArray
function GDScriptWorkspace.apply_new_signal(_unnamed_arg0, _unnamed_arg1, _unnamed_arg2) end

---@param _unnamed_arg0 table<any,any>
function GDScriptWorkspace.didDeleteFiles(_unnamed_arg0) end

---@param path string
---@param content string
---@return Error
function GDScriptWorkspace.parse_script(path, content) end

---@param path string
---@return Error
function GDScriptWorkspace.parse_local_script(path) end

---@param uri string
---@return string
function GDScriptWorkspace.get_file_path(uri) end

---@param path string
---@return string
function GDScriptWorkspace.get_file_uri(path) end

---@param path string
function GDScriptWorkspace.publish_diagnostics(path) end

---@param path string
---@return table<any,any>
function GDScriptWorkspace.generate_script_api(path) end
