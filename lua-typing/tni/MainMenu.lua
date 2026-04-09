---@meta _
-- Generated API for game version 0.10.11

---@class MainMenu : Control
---@field miniann Control
---@field hide_whitelist Object
local MainMenu = {}

function MainMenu.initialize() end

function MainMenu.show_announcements() end

function MainMenu.show_main_menu() end

function MainMenu.show_play_menu() end

function MainMenu.show_load_menu() end

function MainMenu.show_settings_menu() end

function MainMenu.show_mod_manager_menu() end

function MainMenu.show_steam_lobby_menu() end

---@param text string
function MainMenu.show_popup(text) end

---@param text string
function MainMenu.show_game_over_stats(text) end

function MainMenu.show_resume_mini_menu() end

function MainMenu.show_credits_page() end

function MainMenu.hide_all_controls() end

function MainMenu.play_bgm() end

function MainMenu.show_changelogs_page() end
