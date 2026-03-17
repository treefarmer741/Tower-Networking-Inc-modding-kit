---@meta _
-- Generated API for game version 0.9.1

---@class MainMenu : Control
---@field hide_whitelist Object
local MainMenu = {}

function MainMenu.show_announcements() end

function MainMenu.show_main_menu() end

function MainMenu.show_play_menu() end

function MainMenu.show_load_menu() end

function MainMenu.show_settings_menu() end

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
