---@meta _
-- Generated API for game version 0.9.1

---@class HttpRequest : RefCounted
---@field headers table<any,any>
---@field body string
---@field query_match RegExMatch
---@field path string
---@field method string
---@field parameters table<any,any>
---@field query table<any,any>
local HttpRequest = {}

---@return Object
function HttpRequest.get_body_parsed() end
