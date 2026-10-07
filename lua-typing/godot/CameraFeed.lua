---@meta _
-- Generated API for game version 0.10.0

---@class CameraFeed : RefCounted
---@field feed_is_active boolean
---@field feed_transform Transform2D
---@field formats Array<any>
local CameraFeed = {}

---@return integer
function CameraFeed.get_id() end

---@return boolean
function CameraFeed.is_active() end

---@param active boolean
function CameraFeed.set_active(active) end

---@return string
function CameraFeed.get_name() end

---@param name string
function CameraFeed.set_name(name) end

---@return CameraFeed.FeedPosition
function CameraFeed.get_position() end

---@param position CameraFeed.FeedPosition
function CameraFeed.set_position(position) end

---@return Transform2D
function CameraFeed.get_transform() end

---@param transform Transform2D
function CameraFeed.set_transform(transform) end

---@param rgb_image Image
function CameraFeed.set_rgb_image(rgb_image) end

---@param ycbcr_image Image
function CameraFeed.set_ycbcr_image(ycbcr_image) end

---@param width integer
---@param height integer
function CameraFeed.set_external(width, height) end

---@param feed_image_type CameraServer.FeedImage
---@return integer
function CameraFeed.get_texture_tex_id(feed_image_type) end

---@return CameraFeed.FeedDataType
function CameraFeed.get_datatype() end

---@return Array<any>
function CameraFeed.get_formats() end

---@param index integer
---@param parameters table<any,any>
---@return boolean
function CameraFeed.set_format(index, parameters) end
