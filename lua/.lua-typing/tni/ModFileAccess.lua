---@meta _
-- Generated API for game version 0.9.1

---@class ModFileAccess : Object
local ModFileAccess = {}

---@return boolean
function ModFileAccess.is_open() end

---@return boolean
function ModFileAccess.eof_reached() end

function ModFileAccess.close() end

---@return integer
function ModFileAccess.get_length() end

---@return integer
function ModFileAccess.get_position() end

---@return integer
function ModFileAccess.get_8() end

---@return integer
function ModFileAccess.get_16() end

---@return integer
function ModFileAccess.get_32() end

---@return integer
function ModFileAccess.get_64() end

---@param length integer
---@return PackedByteArray
function ModFileAccess.get_buffer(length) end

---@param delim string?  # Default = ,
---@return PackedStringArray
function ModFileAccess.get_csv_line(delim) end

---@return number
function ModFileAccess.get_double() end

---@return number
function ModFileAccess.get_float() end

---@return number
function ModFileAccess.get_half() end

---@return string
function ModFileAccess.get_line() end

---@param skip_cr boolean?  # Default = false
---@return string
function ModFileAccess.get_as_text(skip_cr) end

---@return number
function ModFileAccess.get_real() end

---@return string
function ModFileAccess.get_pascal_string() end

---@param allow_objects boolean?  # Default = false
---@return string
function ModFileAccess.get_var(allow_objects) end

---@param value integer
---@return boolean
function ModFileAccess.store_8(value) end

---@param value integer
---@return boolean
function ModFileAccess.store_16(value) end

---@param value integer
---@return boolean
function ModFileAccess.store_32(value) end

---@param value integer
---@return boolean
function ModFileAccess.store_64(value) end

---@param buffer PackedByteArray
---@return boolean
function ModFileAccess.store_buffer(buffer) end

---@param values PackedStringArray
---@param delim string?  # Default = ,
---@return boolean
function ModFileAccess.store_csv_line(values, delim) end

---@param value number
---@return boolean
function ModFileAccess.store_double(value) end

---@param value number
---@return boolean
function ModFileAccess.store_float(value) end

---@param value number
---@return boolean
function ModFileAccess.store_half(value) end

---@param line string
---@return boolean
function ModFileAccess.store_line(line) end

---@param string string
---@return boolean
function ModFileAccess.store_pascal_string(string) end

---@param value number
---@return boolean
function ModFileAccess.store_real(value) end

---@param string string
---@return boolean
function ModFileAccess.store_string(string) end

---@param value Object
---@param full_objects boolean?  # Default = false
---@return boolean
function ModFileAccess.store_var(value, full_objects) end
