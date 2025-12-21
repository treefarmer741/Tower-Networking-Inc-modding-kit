---@meta _
-- Generated API for game version 0.9.1

---@class HttpServer : Node
---@field HttpResponse Object # Constant value: <GDScript#-9223355849643018473>
---@field HttpRequest Object # Constant value: <GDScript#-9223355849374583038>
---@field HttpRouter Object # Constant value: <GDScript#-9223355849240365311>
---@field HttpServer Object # Constant value: <GDScript#-9223355848804157671>
---@field HttpFileRouter Object # Constant value: <GDScript#-9223355850062464672>
---@field bind_address string
---@field port integer
---@field server_identifier string
---@field threads table<any,any>
local HttpServer = {}

---@param router HttpRouter
function HttpServer.register_router(router) end

function HttpServer.start() end

function HttpServer.stop() end

---@param allowed_origins PackedStringArray
---@param access_control_allowed_methods string?  # Default = POST, GET, OPTIONS
---@param access_control_allowed_headers string?  # Default = content-type
function HttpServer.enable_cors(allowed_origins, access_control_allowed_methods, access_control_allowed_headers) end
