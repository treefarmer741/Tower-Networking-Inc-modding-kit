---@meta _
-- Generated API for game version 0.12.1

---@class PlayMenuConfig : Resource
---@field scenario_name string
---@field locked_game_options boolean
---@field only_available_in_editor boolean
---@field deprecated boolean
---@field randomize_seed_on_menu boolean
---@field is_user_onboarding boolean
---@field default_options PlayOptions
---@field default_diffhash integer
---@field hard_diffhash integer
---@field mp_diffhash integer
---@field zen_diffhash integer
---@field hardzen_diffhash integer
local PlayMenuConfig = {}

---@param dhash integer
---@return boolean
function PlayMenuConfig.is_eligible_preset_hash(dhash) end
