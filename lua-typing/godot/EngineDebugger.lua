---@meta _
-- Generated API for game version 0.10.0

---@class EngineDebugger : Object
local EngineDebugger = {}

---@return boolean
function EngineDebugger.is_active() end

---@param name string
---@param profiler EngineProfiler
function EngineDebugger.register_profiler(name, profiler) end

---@param name string
function EngineDebugger.unregister_profiler(name) end

---@param name string
---@return boolean
function EngineDebugger.is_profiling(name) end

---@param name string
---@return boolean
function EngineDebugger.has_profiler(name) end

---@param name string
---@param data Array<any>
function EngineDebugger.profiler_add_frame_data(name, data) end

---@param name string
---@param enable boolean
---@param arguments Array<any>?  # Default = []
function EngineDebugger.profiler_enable(name, enable, arguments) end

---@param name string
---@param callable (Callable|function)
function EngineDebugger.register_message_capture(name, callable) end

---@param name string
function EngineDebugger.unregister_message_capture(name) end

---@param name string
---@return boolean
function EngineDebugger.has_capture(name) end

function EngineDebugger.line_poll() end

---@param message string
---@param data Array<any>
function EngineDebugger.send_message(message, data) end

---@param can_continue boolean?  # Default = true
---@param is_error_breakpoint boolean?  # Default = false
function EngineDebugger.debug(can_continue, is_error_breakpoint) end

---@param language ScriptLanguage
---@param can_continue boolean?  # Default = true
---@param is_error_breakpoint boolean?  # Default = false
function EngineDebugger.script_debug(language, can_continue, is_error_breakpoint) end

---@param lines integer
function EngineDebugger.set_lines_left(lines) end

---@return integer
function EngineDebugger.get_lines_left() end

---@param depth integer
function EngineDebugger.set_depth(depth) end

---@return integer
function EngineDebugger.get_depth() end

---@param line integer
---@param source string
---@return boolean
function EngineDebugger.is_breakpoint(line, source) end

---@return boolean
function EngineDebugger.is_skipping_breakpoints() end

---@param line integer
---@param source string
function EngineDebugger.insert_breakpoint(line, source) end

---@param line integer
---@param source string
function EngineDebugger.remove_breakpoint(line, source) end

function EngineDebugger.clear_breakpoints() end
