---@meta _
-- Generated API for game version 0.10.0

---@class Engine : Object
---@field print_error_messages boolean
---@field print_to_stdout boolean
---@field physics_ticks_per_second integer
---@field max_physics_steps_per_frame integer
---@field max_fps integer
---@field time_scale number
---@field physics_jitter_fix number
local Engine = {}

---@param physics_ticks_per_second integer
function Engine.set_physics_ticks_per_second(physics_ticks_per_second) end

---@return integer
function Engine.get_physics_ticks_per_second() end

---@param max_physics_steps integer
function Engine.set_max_physics_steps_per_frame(max_physics_steps) end

---@return integer
function Engine.get_max_physics_steps_per_frame() end

---@param physics_jitter_fix number
function Engine.set_physics_jitter_fix(physics_jitter_fix) end

---@return number
function Engine.get_physics_jitter_fix() end

---@return number
function Engine.get_physics_interpolation_fraction() end

---@param max_fps integer
function Engine.set_max_fps(max_fps) end

---@return integer
function Engine.get_max_fps() end

---@param time_scale number
function Engine.set_time_scale(time_scale) end

---@return number
function Engine.get_time_scale() end

---@return integer
function Engine.get_frames_drawn() end

---@return number
function Engine.get_frames_per_second() end

---@return integer
function Engine.get_physics_frames() end

---@return integer
function Engine.get_process_frames() end

---@return MainLoop
function Engine.get_main_loop() end

---@return table<any,any>
function Engine.get_version_info() end

---@return table<any,any>
function Engine.get_author_info() end

---@return Array<Dictionary>
function Engine.get_copyright_info() end

---@return table<any,any>
function Engine.get_donor_info() end

---@return table<any,any>
function Engine.get_license_info() end

---@return string
function Engine.get_license_text() end

---@return string
function Engine.get_architecture_name() end

---@return boolean
function Engine.is_in_physics_frame() end

---@param name string
---@return boolean
function Engine.has_singleton(name) end

---@param name string
---@return Object
function Engine.get_singleton(name) end

---@param name string
---@param instance Object
function Engine.register_singleton(name, instance) end

---@param name string
function Engine.unregister_singleton(name) end

---@return PackedStringArray
function Engine.get_singleton_list() end

---@param language ScriptLanguage
---@return Error
function Engine.register_script_language(language) end

---@param language ScriptLanguage
---@return Error
function Engine.unregister_script_language(language) end

---@return integer
function Engine.get_script_language_count() end

---@param index integer
---@return ScriptLanguage
function Engine.get_script_language(index) end

---@param include_variables boolean?  # Default = false
---@return Array<ScriptBacktrace>
function Engine.capture_script_backtraces(include_variables) end

---@return boolean
function Engine.is_editor_hint() end

---@return boolean
function Engine.is_embedded_in_editor() end

---@return string
function Engine.get_write_movie_path() end

---@param enabled boolean
function Engine.set_print_to_stdout(enabled) end

---@return boolean
function Engine.is_printing_to_stdout() end

---@param enabled boolean
function Engine.set_print_error_messages(enabled) end

---@return boolean
function Engine.is_printing_error_messages() end
