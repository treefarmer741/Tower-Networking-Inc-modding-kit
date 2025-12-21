---@meta _
-- Generated API for game version 0.9.1

---@class ExternalTexture : Texture2D
---@field size Vector2
local ExternalTexture = {}

---@param size Vector2
function ExternalTexture.set_size(size) end

---@return integer
function ExternalTexture.get_external_texture_id() end

---@param external_buffer_id integer
function ExternalTexture.set_external_buffer_id(external_buffer_id) end
