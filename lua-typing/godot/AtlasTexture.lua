---@meta _
-- Generated API for game version 0.10.0

---@class AtlasTexture : Texture2D
---@field atlas Texture2D
---@field region Rect2
---@field margin Rect2
---@field filter_clip boolean
local AtlasTexture = {}

---@param atlas Texture2D
function AtlasTexture.set_atlas(atlas) end

---@return Texture2D
function AtlasTexture.get_atlas() end

---@param region Rect2
function AtlasTexture.set_region(region) end

---@return Rect2
function AtlasTexture.get_region() end

---@param margin Rect2
function AtlasTexture.set_margin(margin) end

---@return Rect2
function AtlasTexture.get_margin() end

---@param enable boolean
function AtlasTexture.set_filter_clip(enable) end

---@return boolean
function AtlasTexture.has_filter_clip() end
