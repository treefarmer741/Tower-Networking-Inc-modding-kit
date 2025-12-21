---@meta _
-- Generated API for game version 0.9.1

---@class GDScriptLanguageProtocol : JSONRPC
local GDScriptLanguageProtocol = {}

---@param params table<any,any>
---@return table<any,any>
function GDScriptLanguageProtocol.initialize(params) end

---@param params Object
function GDScriptLanguageProtocol.initialized(params) end

---@return Error
function GDScriptLanguageProtocol.on_client_connected() end

---@param _unnamed_arg0 integer
function GDScriptLanguageProtocol.on_client_disconnected(_unnamed_arg0) end

---@param method string
---@param params Object?  # Default = <null>
---@param client_id integer?  # Default = -1
function GDScriptLanguageProtocol.notify_client(method, params, client_id) end

---@return boolean
function GDScriptLanguageProtocol.is_smart_resolve_enabled() end

---@return GDScriptTextDocument
function GDScriptLanguageProtocol.get_text_document() end

---@return GDScriptWorkspace
function GDScriptLanguageProtocol.get_workspace() end

---@return boolean
function GDScriptLanguageProtocol.is_initialized() end
