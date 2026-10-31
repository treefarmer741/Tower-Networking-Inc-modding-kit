---@meta _
-- Generated API for game version 0.10.0

---@class CameraTexture : Texture2D
---@field camera_feed_id integer
---@field which_feed integer
---@field camera_is_active boolean
local CameraTexture = {}

---@param feed_id integer
function CameraTexture.set_camera_feed_id(feed_id) end

---@return integer
function CameraTexture.get_camera_feed_id() end

---@param which_feed CameraServer.FeedImage
function CameraTexture.set_which_feed(which_feed) end

---@return CameraServer.FeedImage
function CameraTexture.get_which_feed() end

---@param active boolean
function CameraTexture.set_camera_active(active) end

---@return boolean
function CameraTexture.get_camera_active() end
