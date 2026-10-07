---@meta _
-- Generated API for game version 0.10.0

---@class FileDialog : ConfirmationDialog
---@field mode_overrides_title boolean
---@field file_mode integer
---@field display_mode integer
---@field access integer
---@field root_subfolder string
---@field filters PackedStringArray
---@field filename_filter string
---@field show_hidden_files boolean
---@field use_native_dialog boolean
---@field option_count Options,option_
---@field hidden_files_toggle_enabled boolean
---@field file_filter_toggle_enabled boolean
---@field file_sort_options_enabled boolean
---@field folder_creation_enabled boolean
---@field favorites_enabled boolean
---@field recent_list_enabled boolean
---@field layout_toggle_enabled boolean
---@field current_dir string
---@field current_file string
---@field current_path string
local FileDialog = {}

function FileDialog.clear_filters() end

---@param filter string
---@param description string?  # Default = 
function FileDialog.add_filter(filter, description) end

---@param filters PackedStringArray
function FileDialog.set_filters(filters) end

---@return PackedStringArray
function FileDialog.get_filters() end

function FileDialog.clear_filename_filter() end

---@param filter string
function FileDialog.set_filename_filter(filter) end

---@return string
function FileDialog.get_filename_filter() end

---@param option integer
---@return string
function FileDialog.get_option_name(option) end

---@param option integer
---@return PackedStringArray
function FileDialog.get_option_values(option) end

---@param option integer
---@return integer
function FileDialog.get_option_default(option) end

---@param option integer
---@param name string
function FileDialog.set_option_name(option, name) end

---@param option integer
---@param values PackedStringArray
function FileDialog.set_option_values(option, values) end

---@param option integer
---@param default_value_index integer
function FileDialog.set_option_default(option, default_value_index) end

---@param count integer
function FileDialog.set_option_count(count) end

---@return integer
function FileDialog.get_option_count() end

---@param name string
---@param values PackedStringArray
---@param default_value_index integer
function FileDialog.add_option(name, values, default_value_index) end

---@return table<any,any>
function FileDialog.get_selected_options() end

---@return string
function FileDialog.get_current_dir() end

---@return string
function FileDialog.get_current_file() end

---@return string
function FileDialog.get_current_path() end

---@param dir string
function FileDialog.set_current_dir(dir) end

---@param file string
function FileDialog.set_current_file(file) end

---@param path string
function FileDialog.set_current_path(path) end

---@param override boolean
function FileDialog.set_mode_overrides_title(override) end

---@return boolean
function FileDialog.is_mode_overriding_title() end

---@param mode FileDialog.FileMode
function FileDialog.set_file_mode(mode) end

---@return FileDialog.FileMode
function FileDialog.get_file_mode() end

---@param mode FileDialog.DisplayMode
function FileDialog.set_display_mode(mode) end

---@return FileDialog.DisplayMode
function FileDialog.get_display_mode() end

---@return VBoxContainer
function FileDialog.get_vbox() end

---@return LineEdit
function FileDialog.get_line_edit() end

---@param access FileDialog.Access
function FileDialog.set_access(access) end

---@return FileDialog.Access
function FileDialog.get_access() end

---@param dir string
function FileDialog.set_root_subfolder(dir) end

---@return string
function FileDialog.get_root_subfolder() end

---@param show boolean
function FileDialog.set_show_hidden_files(show) end

---@return boolean
function FileDialog.is_showing_hidden_files() end

---@param native boolean
function FileDialog.set_use_native_dialog(native) end

---@return boolean
function FileDialog.get_use_native_dialog() end

---@param flag FileDialog.Customization
---@param enabled boolean
function FileDialog.set_customization_flag_enabled(flag, enabled) end

---@param flag FileDialog.Customization
---@return boolean
function FileDialog.is_customization_flag_enabled(flag) end

function FileDialog.deselect_all() end

function FileDialog.invalidate() end
