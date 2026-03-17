---@meta _
-- Generated API for game version 0.10.0

---@class GLTFAnimation : Resource
---@field original_name string
---@field loop boolean
local GLTFAnimation = {}

---@return string
function GLTFAnimation.get_original_name() end

---@param original_name string
function GLTFAnimation.set_original_name(original_name) end

---@return boolean
function GLTFAnimation.get_loop() end

---@param loop boolean
function GLTFAnimation.set_loop(loop) end

---@param extension_name string
---@return Object
function GLTFAnimation.get_additional_data(extension_name) end

---@param extension_name string
---@param additional_data Object
function GLTFAnimation.set_additional_data(extension_name, additional_data) end
