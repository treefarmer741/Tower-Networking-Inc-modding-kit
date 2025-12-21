---@meta _
-- Generated API for game version 0.9.1

---@class FileAccess : RefCounted
---@field big_endian boolean
local FileAccess = {}

---@param path string
---@param flags FileAccess.ModeFlags
---@return FileAccess
function FileAccess.open(path, flags) end

---@param path string
---@param mode_flags FileAccess.ModeFlags
---@param key PackedByteArray
---@param iv PackedByteArray?  # Default = []
---@return FileAccess
function FileAccess.open_encrypted(path, mode_flags, key, iv) end

---@param path string
---@param mode_flags FileAccess.ModeFlags
---@param pass string
---@return FileAccess
function FileAccess.open_encrypted_with_pass(path, mode_flags, pass) end

---@param path string
---@param mode_flags FileAccess.ModeFlags
---@param compression_mode FileAccess.CompressionMode?  # Default = 0
---@return FileAccess
function FileAccess.open_compressed(path, mode_flags, compression_mode) end

---@return Error
function FileAccess.get_open_error() end

---@param mode_flags integer
---@param prefix string?  # Default = 
---@param extension string?  # Default = 
---@param keep boolean?  # Default = false
---@return FileAccess
function FileAccess.create_temp(mode_flags, prefix, extension, keep) end

---@param path string
---@return PackedByteArray
function FileAccess.get_file_as_bytes(path) end

---@param path string
---@return string
function FileAccess.get_file_as_string(path) end

---@param length integer
---@return Error
function FileAccess.resize(length) end

function FileAccess.flush() end

---@return string
function FileAccess.get_path() end

---@return string
function FileAccess.get_path_absolute() end

---@return boolean
function FileAccess.is_open() end

---@param position integer
function FileAccess.seek(position) end

---@param position integer?  # Default = 0
function FileAccess.seek_end(position) end

---@return integer
function FileAccess.get_position() end

---@return integer
function FileAccess.get_length() end

---@return boolean
function FileAccess.eof_reached() end

---@return integer
function FileAccess.get_8() end

---@return integer
function FileAccess.get_16() end

---@return integer
function FileAccess.get_32() end

---@return integer
function FileAccess.get_64() end

---@return number
function FileAccess.get_half() end

---@return number
function FileAccess.get_float() end

---@return number
function FileAccess.get_double() end

---@return number
function FileAccess.get_real() end

---@param length integer
---@return PackedByteArray
function FileAccess.get_buffer(length) end

---@return string
function FileAccess.get_line() end

---@param delim string?  # Default = ,
---@return PackedStringArray
function FileAccess.get_csv_line(delim) end

---@param skip_cr boolean?  # Default = false
---@return string
function FileAccess.get_as_text(skip_cr) end

---@param path string
---@return string
function FileAccess.get_md5(path) end

---@param path string
---@return string
function FileAccess.get_sha256(path) end

---@return boolean
function FileAccess.is_big_endian() end

---@param big_endian boolean
function FileAccess.set_big_endian(big_endian) end

---@return Error
function FileAccess.get_error() end

---@param allow_objects boolean?  # Default = false
---@return Object
function FileAccess.get_var(allow_objects) end

---@param value integer
---@return boolean
function FileAccess.store_8(value) end

---@param value integer
---@return boolean
function FileAccess.store_16(value) end

---@param value integer
---@return boolean
function FileAccess.store_32(value) end

---@param value integer
---@return boolean
function FileAccess.store_64(value) end

---@param value number
---@return boolean
function FileAccess.store_half(value) end

---@param value number
---@return boolean
function FileAccess.store_float(value) end

---@param value number
---@return boolean
function FileAccess.store_double(value) end

---@param value number
---@return boolean
function FileAccess.store_real(value) end

---@param buffer PackedByteArray
---@return boolean
function FileAccess.store_buffer(buffer) end

---@param line string
---@return boolean
function FileAccess.store_line(line) end

---@param values PackedStringArray
---@param delim string?  # Default = ,
---@return boolean
function FileAccess.store_csv_line(values, delim) end

---@param string string
---@return boolean
function FileAccess.store_string(string) end

---@param value Object
---@param full_objects boolean?  # Default = false
---@return boolean
function FileAccess.store_var(value, full_objects) end

---@param string string
---@return boolean
function FileAccess.store_pascal_string(string) end

---@return string
function FileAccess.get_pascal_string() end

function FileAccess.close() end

---@param path string
---@return boolean
function FileAccess.file_exists(path) end

---@param file string
---@return integer
function FileAccess.get_modified_time(file) end

---@param file string
---@return integer
function FileAccess.get_access_time(file) end

---@param file string
---@return integer
function FileAccess.get_size(file) end

---@param file string
---@return FileAccess.UnixPermissionFlags
function FileAccess.get_unix_permissions(file) end

---@param file string
---@param permissions FileAccess.UnixPermissionFlags
---@return Error
function FileAccess.set_unix_permissions(file, permissions) end

---@param file string
---@return boolean
function FileAccess.get_hidden_attribute(file) end

---@param file string
---@param hidden boolean
---@return Error
function FileAccess.set_hidden_attribute(file, hidden) end

---@param file string
---@param ro boolean
---@return Error
function FileAccess.set_read_only_attribute(file, ro) end

---@param file string
---@return boolean
function FileAccess.get_read_only_attribute(file) end
