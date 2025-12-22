---@meta _
-- Generated API for game version 0.9.1

---@class AsyncLoader : Node
---@field async_cache_queue Array<any>
local AsyncLoader = {}

---@param respath string
---@param done_callback (Callable|function)?  # Default = <null>
function AsyncLoader.begin_threaded_load(respath, done_callback) end

---@param respath string
function AsyncLoader.queue_async_caching(respath) end

---@param respath string
function AsyncLoader.begin_async_caching(respath) end

---@param respath string
---@param max_depth integer?  # Default = 1
---@param current_depth integer?  # Default = 0
---@return Resource
function AsyncLoader.recursive_caching_by_frame(respath, max_depth, current_depth) end
