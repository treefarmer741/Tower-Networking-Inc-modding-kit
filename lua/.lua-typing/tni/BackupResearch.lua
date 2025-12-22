---@meta _
-- Generated API for game version 0.9.1

---@class BackupResearch : Node
---@field techv string # Constant value: remote_backups_v1
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
local BackupResearch = {}

function BackupResearch.apply_mod() end

function BackupResearch.activate_local_effects() end

---@return string
function BackupResearch.get_proposal_name() end

---@return string
function BackupResearch.get_lore() end

---@return string
function BackupResearch.get_description() end

---@return Object
function BackupResearch.test_adhoc_requirements() end

---@return Object
function BackupResearch.test_adhoc_requirements() end

function BackupResearch.submit_and_apply() end

function BackupResearch.update_state() end

function BackupResearch.apply_mod() end

function BackupResearch.activate_local_effects() end

---@return string
function BackupResearch.get_description() end

---@return string
function BackupResearch.get_proposal_name() end

---@return string
function BackupResearch.get_lore() end
