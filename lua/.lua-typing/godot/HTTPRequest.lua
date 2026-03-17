---@meta _
-- Generated API for game version 0.10.0

---@class HTTPRequest : Node
---@field download_file string
---@field download_chunk_size integer
---@field use_threads boolean
---@field accept_gzip boolean
---@field body_size_limit integer
---@field max_redirects integer
---@field timeout number
local HTTPRequest = {}

---@param url string
---@param custom_headers PackedStringArray?  # Default = []
---@param method HTTPClient.Method?  # Default = 0
---@param request_data string?  # Default = 
---@return Error
function HTTPRequest.request(url, custom_headers, method, request_data) end

---@param url string
---@param custom_headers PackedStringArray?  # Default = []
---@param method HTTPClient.Method?  # Default = 0
---@param request_data_raw PackedByteArray?  # Default = []
---@return Error
function HTTPRequest.request_raw(url, custom_headers, method, request_data_raw) end

function HTTPRequest.cancel_request() end

---@param client_options TLSOptions
function HTTPRequest.set_tls_options(client_options) end

---@return HTTPClient.Status
function HTTPRequest.get_http_client_status() end

---@param enable boolean
function HTTPRequest.set_use_threads(enable) end

---@return boolean
function HTTPRequest.is_using_threads() end

---@param enable boolean
function HTTPRequest.set_accept_gzip(enable) end

---@return boolean
function HTTPRequest.is_accepting_gzip() end

---@param bytes integer
function HTTPRequest.set_body_size_limit(bytes) end

---@return integer
function HTTPRequest.get_body_size_limit() end

---@param amount integer
function HTTPRequest.set_max_redirects(amount) end

---@return integer
function HTTPRequest.get_max_redirects() end

---@param path string
function HTTPRequest.set_download_file(path) end

---@return string
function HTTPRequest.get_download_file() end

---@return integer
function HTTPRequest.get_downloaded_bytes() end

---@return integer
function HTTPRequest.get_body_size() end

---@param timeout number
function HTTPRequest.set_timeout(timeout) end

---@return number
function HTTPRequest.get_timeout() end

---@param chunk_size integer
function HTTPRequest.set_download_chunk_size(chunk_size) end

---@return integer
function HTTPRequest.get_download_chunk_size() end

---@param host string
---@param port integer
function HTTPRequest.set_http_proxy(host, port) end

---@param host string
---@param port integer
function HTTPRequest.set_https_proxy(host, port) end
