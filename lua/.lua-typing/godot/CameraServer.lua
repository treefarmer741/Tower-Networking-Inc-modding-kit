---@meta _
-- Generated API for game version 0.9.1

---@class CameraServer : Object
---@field monitoring_feeds boolean
local CameraServer = {}

---@param is_monitoring_feeds boolean
function CameraServer.set_monitoring_feeds(is_monitoring_feeds) end

---@return boolean
function CameraServer.is_monitoring_feeds() end

---@param index integer
---@return CameraFeed
function CameraServer.get_feed(index) end

---@return integer
function CameraServer.get_feed_count() end

---@return Array<CameraFeed>
function CameraServer.feeds() end

---@param feed CameraFeed
function CameraServer.add_feed(feed) end

---@param feed CameraFeed
function CameraServer.remove_feed(feed) end
