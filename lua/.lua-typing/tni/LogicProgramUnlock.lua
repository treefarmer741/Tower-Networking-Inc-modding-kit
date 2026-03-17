---@meta _
-- Generated API for game version 0.10.0

---@class LogicProgramUnlock : Node
---@field title string
---@field dialog_text string
---@field cost integer
---@field logic_program_scn PackedScene
---@field lprog Program
---@field submitted boolean
---@field locked boolean
---@field depends_on PropMod
---@field disallow_proposal_if_depends_submitted boolean
---@field icon_texture Texture2D
---@field can_be_proposed_beginning integer
---@field disabled_due_to_config_errors boolean
---@field weight integer
---@field proposed_on integer
---@field force_once_on_day integer
---@field can_be_proposed boolean
---@field is_active_proposal boolean
local LogicProgramUnlock = {}

function LogicProgramUnlock.apply_mod() end

function LogicProgramUnlock.activate_local_effects() end

---@return string
function LogicProgramUnlock.get_proposal_name() end

---@return string
function LogicProgramUnlock.get_lore() end

---@return string
function LogicProgramUnlock.get_description() end

---@return Object
function LogicProgramUnlock.test_adhoc_requirements() end

---@return Object
function LogicProgramUnlock.test_adhoc_requirements() end

function LogicProgramUnlock.submit_and_apply() end

function LogicProgramUnlock.update_state() end

function LogicProgramUnlock.apply_mod() end

function LogicProgramUnlock.activate_local_effects() end

---@return string
function LogicProgramUnlock.get_description() end

---@return string
function LogicProgramUnlock.get_proposal_name() end

---@return string
function LogicProgramUnlock.get_lore() end
