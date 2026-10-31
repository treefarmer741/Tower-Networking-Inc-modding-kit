---@meta _
-- Generated API for game version 0.10.0

---@class LightmapGIData : Resource
---@field lightmap_textures Array<TextureLayered>
---@field shadowmask_textures Array<TextureLayered>
---@field uses_spherical_harmonics boolean
---@field user_data Array<any>
---@field probe_data table<any,any>
---@field light_texture TextureLayered
---@field light_textures Array<any>
local LightmapGIData = {}

---@param light_textures Array<TextureLayered>
function LightmapGIData.set_lightmap_textures(light_textures) end

---@return Array<TextureLayered>
function LightmapGIData.get_lightmap_textures() end

---@param shadowmask_textures Array<TextureLayered>
function LightmapGIData.set_shadowmask_textures(shadowmask_textures) end

---@return Array<TextureLayered>
function LightmapGIData.get_shadowmask_textures() end

---@param uses_spherical_harmonics boolean
function LightmapGIData.set_uses_spherical_harmonics(uses_spherical_harmonics) end

---@return boolean
function LightmapGIData.is_using_spherical_harmonics() end

---@param path string
---@param uv_scale Rect2
---@param slice_index integer
---@param sub_instance integer
function LightmapGIData.add_user(path, uv_scale, slice_index, sub_instance) end

---@return integer
function LightmapGIData.get_user_count() end

---@param user_idx integer
---@return string
function LightmapGIData.get_user_path(user_idx) end

function LightmapGIData.clear_users() end

---@param light_texture TextureLayered
function LightmapGIData.set_light_texture(light_texture) end

---@return TextureLayered
function LightmapGIData.get_light_texture() end
