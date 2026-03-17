---@meta _
-- Generated API for game version 0.10.0

---@class SettingsController : Node
---@field current_settings BaseSettings
---@field is_configured boolean
local SettingsController = {}

---@param settings_class_path string?  # Default = res://pocosia-godot-commons/settings/base_settings.gd
---@param settings_file_path string?  # Default = user://settings.json
function SettingsController.initialize_and_configure_settings(settings_class_path, settings_file_path) end

function SettingsController.persist_settings_to_file() end

function SettingsController.restore_or_create_settings_from_file() end

---@param persist boolean?  # Default = true
function SettingsController.reset_defaults(persist) end

---@param persist boolean?  # Default = true
function SettingsController.apply(persist) end
