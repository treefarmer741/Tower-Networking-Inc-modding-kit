---@meta _
-- Generated API for game version 0.10.0

---@class BaseUI : CanvasLayer
---@field is_fully_unfaded boolean
---@field clipboard Object
---@field game_menu Object
---@field wiki Object
---@field feedback Object
---@field catalog Object
---@field screen_fader Object
---@field jumbotron_flasher Object
---@field jumbotron Object
---@field fader Object
---@field notifications Object
---@field loading_screen Object
---@field tutorial_board Object
---@field hint_board Object
---@field eval_banner_visible boolean
---@field input_blocker ColorRect
---@field posnot AudioStreamPlayer
---@field neunot AudioStreamPlayer
---@field neuno2 AudioStreamPlayer
---@field neuno3 AudioStreamPlayer
---@field is_wiki_showing boolean
---@field is_feedback_showing boolean
---@field is_catalog_showing boolean
---@field is_game_menu_showing boolean
---@field loading_screen_is_hidden boolean
local BaseUI = {}

---@return Node
function BaseUI.get_instance() end

function BaseUI.show_game_menu() end

function BaseUI.hide_game_menu() end

function BaseUI.show_wiki() end

function BaseUI.hide_wiki() end

function BaseUI.show_feedback() end

function BaseUI.hide_feedback() end

function BaseUI.show_catalog() end

function BaseUI.hide_catalog() end

function BaseUI.hide_game_uis() end

function BaseUI.clear_notifications() end

---@param msg string
---@param tone_enum integer?  # Default = 0
function BaseUI.display_notification(msg, tone_enum) end

---@param s string
function BaseUI.show_jumbotron(s) end

function BaseUI.fade_screen() end

function BaseUI.unfade_screen() end

function BaseUI.hide_loading_screen() end

function BaseUI.show_loading_screen() end
