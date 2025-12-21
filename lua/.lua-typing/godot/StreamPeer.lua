---@meta _
-- Generated API for game version 0.9.1

---@class StreamPeer : RefCounted
---@field big_endian boolean
local StreamPeer = {}

---@param data PackedByteArray
---@return Error
function StreamPeer.put_data(data) end

---@param data PackedByteArray
---@return Array<any>
function StreamPeer.put_partial_data(data) end

---@param bytes integer
---@return Array<any>
function StreamPeer.get_data(bytes) end

---@param bytes integer
---@return Array<any>
function StreamPeer.get_partial_data(bytes) end

---@return integer
function StreamPeer.get_available_bytes() end

---@param enable boolean
function StreamPeer.set_big_endian(enable) end

---@return boolean
function StreamPeer.is_big_endian_enabled() end

---@param value integer
function StreamPeer.put_8(value) end

---@param value integer
function StreamPeer.put_u8(value) end

---@param value integer
function StreamPeer.put_16(value) end

---@param value integer
function StreamPeer.put_u16(value) end

---@param value integer
function StreamPeer.put_32(value) end

---@param value integer
function StreamPeer.put_u32(value) end

---@param value integer
function StreamPeer.put_64(value) end

---@param value integer
function StreamPeer.put_u64(value) end

---@param value number
function StreamPeer.put_half(value) end

---@param value number
function StreamPeer.put_float(value) end

---@param value number
function StreamPeer.put_double(value) end

---@param value string
function StreamPeer.put_string(value) end

---@param value string
function StreamPeer.put_utf8_string(value) end

---@param value Object
---@param full_objects boolean?  # Default = false
function StreamPeer.put_var(value, full_objects) end

---@return integer
function StreamPeer.get_8() end

---@return integer
function StreamPeer.get_u8() end

---@return integer
function StreamPeer.get_16() end

---@return integer
function StreamPeer.get_u16() end

---@return integer
function StreamPeer.get_32() end

---@return integer
function StreamPeer.get_u32() end

---@return integer
function StreamPeer.get_64() end

---@return integer
function StreamPeer.get_u64() end

---@return number
function StreamPeer.get_half() end

---@return number
function StreamPeer.get_float() end

---@return number
function StreamPeer.get_double() end

---@param bytes integer?  # Default = -1
---@return string
function StreamPeer.get_string(bytes) end

---@param bytes integer?  # Default = -1
---@return string
function StreamPeer.get_utf8_string(bytes) end

---@param allow_objects boolean?  # Default = false
---@return Object
function StreamPeer.get_var(allow_objects) end
