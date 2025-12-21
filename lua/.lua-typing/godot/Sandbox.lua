---@meta _
-- Generated API for game version 0.9.1

---@class Sandbox : Node
---@field references_max integer
---@field memory_max integer
---@field execution_timeout integer
---@field allocations_max integer
---@field unboxed_arguments boolean
---@field precise_simulation boolean
---@field profiling boolean
---@field restrictions boolean
---@field program ELFScript
---@field monitor_heap_usage integer
---@field monitor_heap_chunk_count integer
---@field monitor_heap_allocation_counter integer
---@field monitor_heap_deallocation_counter integer
---@field monitor_exceptions integer
---@field monitor_execution_timeouts integer
---@field monitor_calls_made integer
---@field monitor_binary_translated boolean
---@field monitor_global_calls_made integer
---@field monitor_global_exceptions integer
---@field monitor_global_execution_timeouts integer
---@field monitor_global_instance_count integer
---@field monitor_accumulated_startup_time number
local Sandbox = {}

---@param buffer PackedByteArray
function Sandbox.load_buffer(buffer) end

---@param unload boolean?  # Default = false
function Sandbox.reset(unload) end

---@return Object
function Sandbox.vmcall() end

---@return Object
function Sandbox.vmcallv() end

---@param function_ string
---@param args Array<any>?  # Default = []
---@return Object
function Sandbox.vmcallable(function_, args) end

---@param address integer
---@param args Array<any>?  # Default = []
---@return Object
function Sandbox.vmcallable_address(address, args) end

---@param restrictions boolean
function Sandbox.set_restrictions(restrictions) end

---@return boolean
function Sandbox.get_restrictions() end

---@param instance Object
function Sandbox.add_allowed_object(instance) end

---@param instance Object
function Sandbox.remove_allowed_object(instance) end

function Sandbox.clear_allowed_objects() end

---@param instance (Callable|function)
function Sandbox.set_class_allowed_callback(instance) end

---@param instance (Callable|function)
function Sandbox.set_object_allowed_callback(instance) end

---@param instance (Callable|function)
function Sandbox.set_method_allowed_callback(instance) end

---@param instance (Callable|function)
function Sandbox.set_property_allowed_callback(instance) end

---@param instance (Callable|function)
function Sandbox.set_resource_allowed_callback(instance) end

---@param name string
---@return boolean
function Sandbox.is_allowed_class(name) end

---@param instance Object
---@return boolean
function Sandbox.is_allowed_object(instance) end

---@param instance Object
---@param method Object
---@return boolean
function Sandbox.is_allowed_method(instance, method) end

---@param instance Object
---@param property Object
---@param is_set boolean?  # Default = true
---@return boolean
function Sandbox.is_allowed_property(instance, property, is_set) end

---@param res string
---@return boolean
function Sandbox.is_allowed_resource(res) end

---@param callback (Callable|function)
function Sandbox.set_redirect_stdout(callback) end

---@return Array<any>
function Sandbox.get_general_registers() end

---@return Array<any>
function Sandbox.get_floating_point_registers() end

---@param args Array<any>
function Sandbox.set_argument_registers(args) end

---@return string
function Sandbox.get_current_instruction() end

function Sandbox.make_resumable() end

---@param max_instructions integer
---@return boolean
function Sandbox.resume(max_instructions) end

---@param test string
---@param iterations integer
function Sandbox.assault(test, iterations) end

---@param function_ string
---@return boolean
function Sandbox.has_function(function_) end

---@param symbol string
---@return integer
function Sandbox.address_of(symbol) end

---@param address integer
---@return string
function Sandbox.lookup_address(address) end

---@param allow_write boolean
---@param array PackedByteArray
---@return integer
function Sandbox.share_byte_array(allow_write, array) end

---@param allow_write boolean
---@param array PackedFloat32Array
---@return integer
function Sandbox.share_float32_array(allow_write, array) end

---@param allow_write boolean
---@param array PackedFloat64Array
---@return integer
function Sandbox.share_float64_array(allow_write, array) end

---@param allow_write boolean
---@param array PackedInt32Array
---@return integer
function Sandbox.share_int32_array(allow_write, array) end

---@param allow_write boolean
---@param array PackedInt64Array
---@return integer
function Sandbox.share_int64_array(allow_write, array) end

---@param allow_write boolean
---@param array PackedVector2Array
---@return integer
function Sandbox.share_vec2_array(allow_write, array) end

---@param allow_write boolean
---@param array PackedVector3Array
---@return integer
function Sandbox.share_vec3_array(allow_write, array) end

---@param allow_write boolean
---@param array PackedVector4Array
---@return integer
function Sandbox.share_vec4_array(allow_write, array) end

---@param address integer
---@return boolean
function Sandbox.unshare_array(address) end

---@param ignore_instruction_limit boolean?  # Default = false
---@param automatic_nbit_address_space boolean?  # Default = false
---@return string
function Sandbox.emit_binary_translation(ignore_instruction_limit, automatic_nbit_address_space) end

---@param shared_library_path string?  # Default = res://bintr
---@param compiler string?  # Default = cc
---@param extra_cflags string?  # Default = 
---@param ignore_instruction_limit boolean?  # Default = false
---@param automatic_nbit_as boolean?  # Default = false
---@return boolean
function Sandbox.try_compile_binary_translation(shared_library_path, compiler, extra_cflags, ignore_instruction_limit, automatic_nbit_as) end

---@return boolean
function Sandbox.is_binary_translated() end

---@return boolean
function Sandbox.is_jit() end

---@param name string
---@param value Object
function Sandbox.set(name, value) end

---@param name string
---@return Object
function Sandbox.get(name) end

---@return Array<any>
function Sandbox.get_property_list() end

---@param max integer?  # Default = 100
function Sandbox.set_max_refs(max) end

---@return integer
function Sandbox.get_max_refs() end

---@param max integer?  # Default = 16
function Sandbox.set_memory_max(max) end

---@return integer
function Sandbox.get_memory_max() end

---@param max integer?  # Default = 8000
function Sandbox.set_instructions_max(max) end

---@return integer
function Sandbox.get_instructions_max() end

---@param max integer?  # Default = 4000
function Sandbox.set_allocations_max(max) end

---@return integer
function Sandbox.get_allocations_max() end

---@param unboxed_arguments boolean
function Sandbox.set_unboxed_arguments(unboxed_arguments) end

---@return boolean
function Sandbox.get_unboxed_arguments() end

---@param precise_simulation boolean
function Sandbox.set_precise_simulation(precise_simulation) end

---@return boolean
function Sandbox.get_precise_simulation() end

---@param use_nbit_as boolean
function Sandbox.set_binary_translation_nbit_as(use_nbit_as) end

---@return boolean
function Sandbox.get_binary_translation_nbit_as() end

---@param register_caching boolean
function Sandbox.set_binary_translation_register_caching(register_caching) end

---@return boolean
function Sandbox.get_binary_translation_register_caching() end

---@param bg_compilation boolean
function Sandbox.set_binary_translation_bg_compilation(bg_compilation) end

---@return boolean
function Sandbox.get_binary_translation_bg_compilation() end

---@param enable boolean?  # Default = false
function Sandbox.set_profiling(enable) end

---@return boolean
function Sandbox.get_profiling() end

---@param program ELFScript
function Sandbox.set_program(program) end

---@return ELFScript
function Sandbox.get_program() end

---@return boolean
function Sandbox.has_program_loaded() end

---@return integer
function Sandbox.get_heap_usage() end

---@return integer
function Sandbox.get_heap_chunk_count() end

---@return integer
function Sandbox.get_heap_allocation_counter() end

---@return integer
function Sandbox.get_heap_deallocation_counter() end

---@return integer
function Sandbox.get_exceptions() end

---@return integer
function Sandbox.get_timeouts() end

---@return integer
function Sandbox.get_calls_made() end
