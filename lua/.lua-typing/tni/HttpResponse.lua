---@meta _
-- Generated API for game version 0.9.1

---@class HttpResponse : RefCounted
---@field client StreamPeer
---@field server_identifier string
---@field headers table<any,any>
---@field cookies Array<any>
---@field access_control_origin Object
---@field access_control_allowed_methods Object
---@field access_control_allowed_headers Object
local HttpResponse = {}

---@param status_code integer
---@param data PackedByteArray?  # Default = <null>
---@param content_type string?  # Default = application/octet-stream
---@param extra_header string?  # Default = 
function HttpResponse.send_raw(status_code, data, content_type, extra_header) end

---@param status_code integer
---@param data PackedByteArray?  # Default = <null>
---@param content_type string?  # Default = application/octet-stream
---@param extra_header string?  # Default = 
function HttpResponse.send_partial(status_code, data, content_type, extra_header) end

---@param status_code integer
---@param data string?  # Default = 
---@param content_type Object?  # Default = text/html
function HttpResponse.send(status_code, data, content_type) end

---@param status_code integer
---@param data Object
function HttpResponse.json(status_code, data) end

---@param field string
---@param value Object
function HttpResponse.set_header_field(field, value) end

---@param name string
---@param value string
---@param options table<any,any>?  # Default = <null>
function HttpResponse.cookie(name, value, options) end
