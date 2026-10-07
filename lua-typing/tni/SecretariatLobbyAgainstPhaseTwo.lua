---@meta _
-- Generated API for game version 0.13.1

---@class SecretariatLobbyAgainstPhaseTwo : PropMod
---@field techv string # Constant value: free_babel_ally_v2
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
local SecretariatLobbyAgainstPhaseTwo = {}

function SecretariatLobbyAgainstPhaseTwo.apply_mod() end

function SecretariatLobbyAgainstPhaseTwo.activate_local_effects() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_proposal_name() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_lore() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_description() end

---@return Object
function SecretariatLobbyAgainstPhaseTwo.test_adhoc_requirements() end

function SecretariatLobbyAgainstPhaseTwo.submit_and_apply() end

function SecretariatLobbyAgainstPhaseTwo.update_state() end

function SecretariatLobbyAgainstPhaseTwo.apply_mod() end

function SecretariatLobbyAgainstPhaseTwo.activate_local_effects() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_description() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_proposal_name() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_lore() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_tiered_display_name() end

---@return string
function SecretariatLobbyAgainstPhaseTwo.get_unlock_condition_description() end
