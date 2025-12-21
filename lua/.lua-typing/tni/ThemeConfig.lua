---@meta _
-- Generated API for game version 0.9.1

---@class ThemeConfig : Resource
---@field theme_descriptions Array<any>
---@field and_compatibility boolean
---@field theme_value string
local ThemeConfig = {}

---@param thm_s string
---@param and_compatible boolean?  # Default = true
---@return ThemeConfig
function ThemeConfig.create_from_string(thm_s, and_compatible) end

---@return boolean
function ThemeConfig.has_valid_descriptions() end

---@return string
function ThemeConfig.render_theme() end

---@param thm_s string
---@return boolean
function ThemeConfig.is_compatible(thm_s) end
