---@meta _
-- Generated API for game version 0.9.1

---@class Time : Object
local Time = {}

---@param unix_time_val integer
---@return table<any,any>
function Time.get_datetime_dict_from_unix_time(unix_time_val) end

---@param unix_time_val integer
---@return table<any,any>
function Time.get_date_dict_from_unix_time(unix_time_val) end

---@param unix_time_val integer
---@return table<any,any>
function Time.get_time_dict_from_unix_time(unix_time_val) end

---@param unix_time_val integer
---@param use_space boolean?  # Default = false
---@return string
function Time.get_datetime_string_from_unix_time(unix_time_val, use_space) end

---@param unix_time_val integer
---@return string
function Time.get_date_string_from_unix_time(unix_time_val) end

---@param unix_time_val integer
---@return string
function Time.get_time_string_from_unix_time(unix_time_val) end

---@param datetime string
---@param weekday boolean
---@return table<any,any>
function Time.get_datetime_dict_from_datetime_string(datetime, weekday) end

---@param datetime table<any,any>
---@param use_space boolean
---@return string
function Time.get_datetime_string_from_datetime_dict(datetime, use_space) end

---@param datetime table<any,any>
---@return integer
function Time.get_unix_time_from_datetime_dict(datetime) end

---@param datetime string
---@return integer
function Time.get_unix_time_from_datetime_string(datetime) end

---@param offset_minutes integer
---@return string
function Time.get_offset_string_from_offset_minutes(offset_minutes) end

---@param utc boolean?  # Default = false
---@return table<any,any>
function Time.get_datetime_dict_from_system(utc) end

---@param utc boolean?  # Default = false
---@return table<any,any>
function Time.get_date_dict_from_system(utc) end

---@param utc boolean?  # Default = false
---@return table<any,any>
function Time.get_time_dict_from_system(utc) end

---@param utc boolean?  # Default = false
---@param use_space boolean?  # Default = false
---@return string
function Time.get_datetime_string_from_system(utc, use_space) end

---@param utc boolean?  # Default = false
---@return string
function Time.get_date_string_from_system(utc) end

---@param utc boolean?  # Default = false
---@return string
function Time.get_time_string_from_system(utc) end

---@return table<any,any>
function Time.get_time_zone_from_system() end

---@return number
function Time.get_unix_time_from_system() end

---@return integer
function Time.get_ticks_msec() end

---@return integer
function Time.get_ticks_usec() end
