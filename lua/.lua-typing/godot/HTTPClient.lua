---@meta _
-- Generated API for game version 0.9.1

---@class HTTPClient : RefCounted
---@field blocking_mode_enabled boolean
---@field connection StreamPeer
---@field read_chunk_size integer
local HTTPClient = {}

---@param host string
---@param port integer?  # Default = -1
---@param tls_options TLSOptions?  # Default = <Object#null>
---@return Error
function HTTPClient.connect_to_host(host, port, tls_options) end

---@param connection StreamPeer
function HTTPClient.set_connection(connection) end

---@return StreamPeer
function HTTPClient.get_connection() end

---@param method HTTPClient.Method
---@param url string
---@param headers PackedStringArray
---@param body PackedByteArray
---@return Error
function HTTPClient.request_raw(method, url, headers, body) end

---@param method HTTPClient.Method
---@param url string
---@param headers PackedStringArray
---@param body string?  # Default = 
---@return Error
function HTTPClient.request(method, url, headers, body) end

function HTTPClient.close() end

---@return boolean
function HTTPClient.has_response() end

---@return boolean
function HTTPClient.is_response_chunked() end

---@return integer
function HTTPClient.get_response_code() end

---@return PackedStringArray
function HTTPClient.get_response_headers() end

---@return table<any,any>
function HTTPClient.get_response_headers_as_dictionary() end

---@return integer
function HTTPClient.get_response_body_length() end

---@return PackedByteArray
function HTTPClient.read_response_body_chunk() end

---@param bytes integer
function HTTPClient.set_read_chunk_size(bytes) end

---@return integer
function HTTPClient.get_read_chunk_size() end

---@param enabled boolean
function HTTPClient.set_blocking_mode(enabled) end

---@return boolean
function HTTPClient.is_blocking_mode_enabled() end

---@return HTTPClient.Status
function HTTPClient.get_status() end

---@return Error
function HTTPClient.poll() end

---@param host string
---@param port integer
function HTTPClient.set_http_proxy(host, port) end

---@param host string
---@param port integer
function HTTPClient.set_https_proxy(host, port) end

---@param fields table<any,any>
---@return string
function HTTPClient.query_string_from_dict(fields) end
