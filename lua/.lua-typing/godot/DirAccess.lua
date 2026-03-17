---@meta _
-- Generated API for game version 0.10.0

---@class DirAccess : RefCounted
---@field include_navigational boolean
---@field include_hidden boolean
local DirAccess = {}

---@param path string
---@return DirAccess
function DirAccess.open(path) end

---@return Error
function DirAccess.get_open_error() end

---@param prefix string?  # Default = 
---@param keep boolean?  # Default = false
---@return DirAccess
function DirAccess.create_temp(prefix, keep) end

---@return Error
function DirAccess.list_dir_begin() end

---@return string
function DirAccess.get_next() end

---@return boolean
function DirAccess.current_is_dir() end

function DirAccess.list_dir_end() end

---@return PackedStringArray
function DirAccess.get_files() end

---@param path string
---@return PackedStringArray
function DirAccess.get_files_at(path) end

---@return PackedStringArray
function DirAccess.get_directories() end

---@param path string
---@return PackedStringArray
function DirAccess.get_directories_at(path) end

---@return integer
function DirAccess.get_drive_count() end

---@param idx integer
---@return string
function DirAccess.get_drive_name(idx) end

---@return integer
function DirAccess.get_current_drive() end

---@param to_dir string
---@return Error
function DirAccess.change_dir(to_dir) end

---@param include_drive boolean?  # Default = true
---@return string
function DirAccess.get_current_dir(include_drive) end

---@param path string
---@return Error
function DirAccess.make_dir(path) end

---@param path string
---@return Error
function DirAccess.make_dir_absolute(path) end

---@param path string
---@return Error
function DirAccess.make_dir_recursive(path) end

---@param path string
---@return Error
function DirAccess.make_dir_recursive_absolute(path) end

---@param path string
---@return boolean
function DirAccess.file_exists(path) end

---@param path string
---@return boolean
function DirAccess.dir_exists(path) end

---@param path string
---@return boolean
function DirAccess.dir_exists_absolute(path) end

---@return integer
function DirAccess.get_space_left() end

---@param from string
---@param to string
---@param chmod_flags integer?  # Default = -1
---@return Error
function DirAccess.copy(from, to, chmod_flags) end

---@param from string
---@param to string
---@param chmod_flags integer?  # Default = -1
---@return Error
function DirAccess.copy_absolute(from, to, chmod_flags) end

---@param from string
---@param to string
---@return Error
function DirAccess.rename(from, to) end

---@param from string
---@param to string
---@return Error
function DirAccess.rename_absolute(from, to) end

---@param path string
---@return Error
function DirAccess.remove(path) end

---@param path string
---@return Error
function DirAccess.remove_absolute(path) end

---@param path string
---@return boolean
function DirAccess.is_link(path) end

---@param path string
---@return string
function DirAccess.read_link(path) end

---@param source string
---@param target string
---@return Error
function DirAccess.create_link(source, target) end

---@param path string
---@return boolean
function DirAccess.is_bundle(path) end

---@param enable boolean
function DirAccess.set_include_navigational(enable) end

---@return boolean
function DirAccess.get_include_navigational() end

---@param enable boolean
function DirAccess.set_include_hidden(enable) end

---@return boolean
function DirAccess.get_include_hidden() end

---@return string
function DirAccess.get_filesystem_type() end

---@param path string
---@return boolean
function DirAccess.is_case_sensitive(path) end

---@param path_a string
---@param path_b string
---@return boolean
function DirAccess.is_equivalent(path_a, path_b) end
