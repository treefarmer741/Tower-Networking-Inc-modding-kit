---@meta _
-- Generated API for game version 0.12.1

---@class FileTools : Node
---@field DEFAULT_MAX_BYTES integer # Constant value: 200000
---@field DEFAULT_MAX_RESULTS integer # Constant value: 200
---@field MAX_TRAVERSAL_DEPTH integer # Constant value: 20
local FileTools = {}

---@param plugin EditorPlugin
function FileTools.set_editor_plugin(plugin) end

---@param args table<any,any>
---@return table<any,any>
function FileTools.list_dir(args) end

---@param args table<any,any>
---@return table<any,any>
function FileTools.read_file(args) end

---@param args table<any,any>
---@return table<any,any>
function FileTools.search_project(args) end

---@param args table<any,any>
---@return table<any,any>
function FileTools.create_script(args) end
