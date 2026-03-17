---@meta _
-- Generated API for game version 0.10.0

---@class GameSession : Node
---@field MAX_BGM_HEAT integer # Constant value: 3
---@field local_node Node2D
---@field master_timer Timer
---@field artifact_timer Timer
---@field s5_timer Timer
---@field is_s5_completed boolean
---@field is_artifact_done boolean
---@field pointer_cursor Resource
---@field grab_possible_cursor Resource
---@field grabbing_cursor Resource
---@field click_possible_cursor Resource
---@field beige_pointer_cursor Resource
---@field is_save_state_loaded boolean
---@field floor_cache table<any,any>
---@field loaded_from_save boolean
---@field join_addr string
---@field game_world GameWorld
---@field player_name string
---@field player_mouse MultiplayerMouse
---@field offline boolean
---@field player_camera MyCustomCamera
---@field min_bgm_heat integer
---@field bgm_heat integer
---@field bgm_list Array<string>
---@field next_bgm_player AudioStreamPlayer
---@field bgm_paused boolean
---@field bgm_players Array<any>
---@field lprogram_scenes Array<any>
---@field riser_ghost_point_a Vector2
---@field riser_ghost_point_b Vector2
local GameSession = {}

function GameSession.done_loading() end

---@param dayc integer
---@param time_float number
---@return Object
function GameSession.get_time_str(dayc, time_float) end

---@param igtc integer
---@return Object
function GameSession.get_time_str_ts(igtc) end

---@param alt_arrow boolean
function GameSession.set_game_arrow_cursor(alt_arrow) end

function GameSession.set_game_cursors() end

function GameSession.start_artifact_timer() end

function GameSession.start_master_timer() end

function GameSession.start_s5_timer() end

function GameSession.init_game_cursors() end

---@param rpath string
---@return Location
function GameSession.get_floor_ref_from_path(rpath) end

function GameSession.cleanup() end

function GameSession.pause_bgm() end

function GameSession.resume_bgm() end

function GameSession.start_bgm() end

---@param heat integer
function GameSession.decide_bgm(heat) end

---@param duration number?  # Default = 1.0
function GameSession.stop_bgm(duration) end

---@param new_point_a Vector2
function GameSession.set_link_ghost_point_a(new_point_a) end

---@param new_point_b Vector2
function GameSession.set_link_ghost_point_b(new_point_b) end

---@param deb_addr Object?  # Default = <null>
---@return Object
function GameSession.find_active_debuggers(deb_addr) end

---@param test_func (Callable|function)?  # Default = <null>
---@return Object
function GameSession.find_devices(test_func) end

---@param test_func (Callable|function)?  # Default = <null>
---@return Object
function GameSession.find_all_devices(test_func) end

---@param skey string
function GameSession.activate_achievement(skey) end

---@param sender_name string
---@param msg string
function GameSession.send_chat_msg(sender_name, msg) end

function GameSession.try_unlock_new_floors() end
