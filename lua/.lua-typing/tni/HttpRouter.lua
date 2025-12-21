---@meta _
-- Generated API for game version 0.9.1

---@class HttpRouter : RefCounted
---@field HttpResponse Object # Constant value: <GDScript#-9223355849643018473>
---@field HttpRequest Object # Constant value: <GDScript#-9223355849374583038>
---@field path string
---@field rpath RegEx
---@field params Array<string>
---@field handle_get (Callable|function)
---@field handle_post (Callable|function)
---@field handle_head (Callable|function)
---@field handle_put (Callable|function)
---@field handle_patch (Callable|function)
---@field handle_delete (Callable|function)
---@field handle_options (Callable|function)
---@field condition (Callable|function)
local HttpRouter = {}
