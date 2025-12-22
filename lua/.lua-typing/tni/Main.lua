---@meta _
-- Generated API for game version 0.9.1

---@class Main : Node
---@field PORT integer # Constant value: 2601
---@field DEFAULT_SERVER_IP string # Constant value: 127.0.0.1
---@field MAX_CONNECTIONS integer # Constant value: 20
---@field SMP_COMPRESSION boolean # Constant value: true
---@field player_scenes PackedScene
---@field main_scon SaveController
local Main = {}

function Main.show_game_menu() end

---@param remote_peer_id Object
function Main.add_new_player(remote_peer_id) end

---@param join_id Object
function Main.join_game(join_id) end

---@param save_name string?  # Default = 
---@param gw_path string?  # Default = 
---@param scenario_name string?  # Default = 
---@param play_options PlayOptions?  # Default = <null>
function Main.host_game(save_name, gw_path, scenario_name, play_options) end
