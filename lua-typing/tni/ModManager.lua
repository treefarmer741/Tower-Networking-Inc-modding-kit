---@meta _
-- Generated API for game version 0.10.11

---@class ModManager : Control
---@field mod_list VBoxContainer
---@field mod_preset_label Label
---@field preset_save_load_button MenuButton
---@field mod_info_container VBoxContainer
---@field mod_name_label RichTextLabel
---@field mod_tabs TabContainer
---@field mod_info VBoxContainer
---@field mod_info_description RichTextLabel
---@field mod_info_dependencies_spacer Separator
---@field mod_info_dependencies_label Label
---@field mod_info_dependencies HFlowContainer
---@field mod_info_optional_dependencies_spacer Separator
---@field mod_info_optional_dependencies_label Label
---@field mod_info_optional_dependencies HFlowContainer
---@field mod_info_incompatibilities_spacer Separator
---@field mod_info_incompatibilities_label Label
---@field mod_info_incompatibilities HFlowContainer
---@field mod_info_load_before_spacer Separator
---@field mod_info_load_before_label Label
---@field mod_info_load_before HFlowContainer
---@field mod_info_load_after_spacer Separator
---@field mod_info_load_after_label Label
---@field mod_info_load_after HFlowContainer
---@field mod_info_authors Label
---@field mod_info_links HBoxContainer
---@field mod_config VBoxContainer
---@field mod_config_no_options_label Label
---@field mod_stats VBoxContainer
---@field mod_stats_stats_label RichTextLabel
---@field selected_manifest ModManifest
---@field preset ModPreset
---@field preset_modified boolean
local ModManager = {}
---@enum ModManager.DependencyStatus
ModManager.DependencyStatus = {
	["LOADED"] = 0,
	["UNLOADED"] = 1,
	["WRONG_VERSION"] = 2,
	["MISSING"] = 3,
}

function ModManager.fade_in() end

function ModManager.fade_out() end

function ModManager.update_preset_label() end

function ModManager.update_mod_list() end

function ModManager.update_mod_tabs() end

function ModManager.update_mod_info_tab() end

function ModManager.update_mod_config_tab() end

function ModManager.update_mod_stats_tab() end
