---@meta _
-- Generated API for game version 0.13.4

---@class SettingsMenu : Control
---@field PACKET_ANIM_OPTIONS Array<any> # Constant value: ["no_animation", "circular_packet", "stretched_glowing_packet"]
---@field UI_SCALES Array<any> # Constant value: [1.0, 1.1, 1.25]
---@field game_settings Container
---@field audio_settings Container
---@field graphic_settings Container
---@field keybind_settings Container
---@field is_in_game boolean
local SettingsMenu = {}
---@enum SettingsMenu.locale_lang_map
SettingsMenu.locale_lang_map = {
	["en"] = "English",
	["ab"] = "Pseudotest",
	["zh_CN"] = "中文",
	["ru"] = "русский",
	["fr"] = "français",
	["es"] = "español",
	["ja"] = "日本語",
	["uk"] = "українська мова",
	["pt_BR"] = "Português Brasileiro",
	["de"] = "Deutsch",
	["pl_PL"] = "polski",
}

---@return Array<string>
function SettingsMenu.get_loaded_langs() end

---@param langname string
---@return string
function SettingsMenu.get_locale_from_lang(langname) end
