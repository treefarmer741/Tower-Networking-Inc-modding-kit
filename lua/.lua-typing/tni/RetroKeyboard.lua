---@meta _
-- Generated API for game version 0.9.1

---@class RetroKeyboard : Node2D
---@field total_keypress_sfx_variants integer # Constant value: 20
---@field ALPHABET_GROUP_NAME string # Constant value: alphabets
---@field NUMSYM_GROUP_NAME string # Constant value: numsyms
---@field sfx_channel string
---@field depressed_depth number
---@field depressed_color Color
---@field keypress_volume_db number
---@field key_sfx_ptr integer
---@field numsym_ptr integer
---@field alphabets_ptr integer
---@field asplayer_d table<any,any>
---@field sprite_dh table<any,any>
---@field sprite_dc table<any,any>
---@field ptr_cycle integer
local RetroKeyboard = {}

---@param inpev InputEventKey
function RetroKeyboard.press_key_from_event(inpev) end

---@param kc Key
function RetroKeyboard.press_key(kc) end
