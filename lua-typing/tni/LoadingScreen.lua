---@meta _
-- Generated API for game version 0.10.11

---@class LoadingScreen : Control
---@field SS_PATHS Array<any> # Constant value: ["res://assets/game_screenshots/loading/media-1.PNG", "res://assets/game_screenshots/loading/media-2.PNG", "res://assets/game_screenshots/loading/media-3.PNG", "res://assets/game_screenshots/loading/user-1.png", "res://assets/game_screenshots/loading/user-3.png", "res://assets/game_screenshots/loading/user-4.png", "res://assets/game_screenshots/loading/user-5.png", "res://assets/game_screenshots/loading/user-7.png", "res://assets/game_screenshots/loading/user-9.png", "res://assets/game_screenshots/loading/user-10.png", "res://assets/game_screenshots/loading/user-11.png", "res://assets/game_screenshots/loading/user-14.png"]
---@field HINT_SHOW_SEC number # Constant value: 5.0
---@field aplayer AnimationPlayer
---@field loading_screen_s1 Control
---@field hint_change_timer Timer
---@field short_wait_timer Timer
---@field start_load_timer Timer
---@field ss_textures Array<any>
---@field ss_num integer
---@field hint_container Container
---@field hint_controls Array<RichTextLabel>
---@field hint_num integer
local LoadingScreen = {}

---@param n integer
function LoadingScreen.show_hint(n) end

---@param n number?  # Default = 0.5
function LoadingScreen.hide_after_shortwait(n) end

function LoadingScreen.cycle_hint() end
