---@meta _
-- Generated API for game version 0.10.0

---@class GLTFSpecGloss : Resource
---@field diffuse_img Object
---@field diffuse_factor Color
---@field gloss_factor number
---@field specular_factor Color
---@field spec_gloss_img Object
local GLTFSpecGloss = {}

---@return Image
function GLTFSpecGloss.get_diffuse_img() end

---@param diffuse_img Image
function GLTFSpecGloss.set_diffuse_img(diffuse_img) end

---@return Color
function GLTFSpecGloss.get_diffuse_factor() end

---@param diffuse_factor Color
function GLTFSpecGloss.set_diffuse_factor(diffuse_factor) end

---@return number
function GLTFSpecGloss.get_gloss_factor() end

---@param gloss_factor number
function GLTFSpecGloss.set_gloss_factor(gloss_factor) end

---@return Color
function GLTFSpecGloss.get_specular_factor() end

---@param specular_factor Color
function GLTFSpecGloss.set_specular_factor(specular_factor) end

---@return Image
function GLTFSpecGloss.get_spec_gloss_img() end

---@param spec_gloss_img Image
function GLTFSpecGloss.set_spec_gloss_img(spec_gloss_img) end
