---@meta _
-- Generated API for game version 0.9.1

---@class JailbreakingResearch : Node
---@field techv string # Constant value: remote_force_installer
---@field cost integer
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
local JailbreakingResearch = {}

function JailbreakingResearch.apply_mod() end

function JailbreakingResearch.activate_local_effects() end

---@return string
function JailbreakingResearch.get_proposal_name() end

---@return string
function JailbreakingResearch.get_lore() end

---@return string
function JailbreakingResearch.get_description() end

---@return Object
function JailbreakingResearch.test_adhoc_requirements() end

---@return Object
function JailbreakingResearch.test_adhoc_requirements() end

function JailbreakingResearch.submit_and_apply() end

function JailbreakingResearch.update_state() end

function JailbreakingResearch.apply_mod() end

function JailbreakingResearch.activate_local_effects() end

---@return string
function JailbreakingResearch.get_description() end

---@return string
function JailbreakingResearch.get_proposal_name() end

---@return string
function JailbreakingResearch.get_lore() end
