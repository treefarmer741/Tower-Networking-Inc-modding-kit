---@meta _
-- Generated API for game version 0.9.1

---@class JavaScriptBridge : Object
local JavaScriptBridge = {}

---@param code string
---@param use_global_execution_context boolean?  # Default = false
---@return Object
function JavaScriptBridge.eval(code, use_global_execution_context) end

---@param interface string
---@return JavaScriptObject
function JavaScriptBridge.get_interface(interface) end

---@param callable (Callable|function)
---@return JavaScriptObject
function JavaScriptBridge.create_callback(callable) end

---@param javascript_object JavaScriptObject
---@return boolean
function JavaScriptBridge.is_js_buffer(javascript_object) end

---@param javascript_buffer JavaScriptObject
---@return PackedByteArray
function JavaScriptBridge.js_buffer_to_packed_byte_array(javascript_buffer) end

---@param object string
---@return Object
function JavaScriptBridge.create_object(object) end

---@param buffer PackedByteArray
---@param name string
---@param mime string?  # Default = application/octet-stream
function JavaScriptBridge.download_buffer(buffer, name, mime) end

---@return boolean
function JavaScriptBridge.pwa_needs_update() end

---@return Error
function JavaScriptBridge.pwa_update() end

function JavaScriptBridge.force_fs_sync() end
