---@meta _
-- Generated API for game version 0.12.1

---@class ToolExecutor : Node
local ToolExecutor = {}

---@param plugin EditorPlugin
function ToolExecutor.set_editor_plugin(plugin) end

---@param client Object
function ToolExecutor.set_mcp_client(client) end

---@param tool_name string
---@param args table<any,any>
---@return table<any,any>
function ToolExecutor.execute_tool(tool_name, args) end

---@return Array<any>
function ToolExecutor.get_available_tools() end
