---@meta _
-- Generated API for game version 0.9.1

---@class Object
local Object = {}

function Object.free() end

---@return string
function Object.get_class() end

---@param class string
---@return boolean
function Object.is_class(class) end

---@param property string
---@param value Object
function Object.set(property, value) end

---@param property string
---@return Object
function Object.get(property) end

---@param property_path string
---@param value Object
function Object.set_indexed(property_path, value) end

---@param property_path string
---@return Object
function Object.get_indexed(property_path) end

---@return Array<Dictionary>
function Object.get_property_list() end

---@return Array<Dictionary>
function Object.get_method_list() end

---@param property string
---@return boolean
function Object.property_can_revert(property) end

---@param property string
---@return Object
function Object.property_get_revert(property) end

---@param what integer
---@param reversed boolean?  # Default = false
function Object.notification(what, reversed) end

---@return string
function Object.to_string() end

---@return integer
function Object.get_instance_id() end

---@param script Object
function Object.set_script(script) end

---@return Object
function Object.get_script() end

---@param name string
---@param value Object
function Object.set_meta(name, value) end

---@param name string
function Object.remove_meta(name) end

---@param name string
---@param default Object?  # Default = <null>
---@return Object
function Object.get_meta(name, default) end

---@param name string
---@return boolean
function Object.has_meta(name) end

---@return Array<StringName>
function Object.get_meta_list() end

---@param signal string
---@param arguments Array<any>?  # Default = []
function Object.add_user_signal(signal, arguments) end

---@param signal string
---@return boolean
function Object.has_user_signal(signal) end

---@param signal string
function Object.remove_user_signal(signal) end

---@param signal string
---@return Error
function Object.emit_signal(signal) end

---@param method string
---@return Object
function Object.call(method) end

---@param method string
---@return Object
function Object.call_deferred(method) end

---@param property string
---@param value Object
function Object.set_deferred(property, value) end

---@param method string
---@param arg_array Array<any>
---@return Object
function Object.callv(method, arg_array) end

---@param method string
---@return boolean
function Object.has_method(method) end

---@param method string
---@return integer
function Object.get_method_argument_count(method) end

---@param signal string
---@return boolean
function Object.has_signal(signal) end

---@return Array<Dictionary>
function Object.get_signal_list() end

---@param signal string
---@return Array<Dictionary>
function Object.get_signal_connection_list(signal) end

---@return Array<Dictionary>
function Object.get_incoming_connections() end

---@param signal string
---@param callable (Callable|function)
---@param flags integer?  # Default = 0
---@return Error
function Object.connect(signal, callable, flags) end

---@param signal string
---@param callable (Callable|function)
function Object.disconnect(signal, callable) end

---@param signal string
---@param callable (Callable|function)
---@return boolean
function Object.is_connected(signal, callable) end

---@param signal string
---@return boolean
function Object.has_connections(signal) end

---@param enable boolean
function Object.set_block_signals(enable) end

---@return boolean
function Object.is_blocking_signals() end

function Object.notify_property_list_changed() end

---@param enable boolean
function Object.set_message_translation(enable) end

---@return boolean
function Object.can_translate_messages() end

---@param message string
---@param context string?  # Default = 
---@return string
function Object.tr(message, context) end

---@param message string
---@param plural_message string
---@param n integer
---@param context string?  # Default = 
---@return string
function Object.tr_n(message, plural_message, n, context) end

---@return string
function Object.get_translation_domain() end

---@param domain string
function Object.set_translation_domain(domain) end

---@return boolean
function Object.is_queued_for_deletion() end

function Object.cancel_free() end
