---@meta _
-- Generated API for game version 0.12.1

---@class SanResearch : PropMod
---@field techv string # Constant value: san_storage_v1
---@field MIN_STORAGE_DEVICES integer # Constant value: 1
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
local SanResearch = {}

function SanResearch.apply_mod() end

function SanResearch.activate_local_effects() end

---@return string
function SanResearch.get_proposal_name() end

---@return string
function SanResearch.get_lore() end

---@return string
function SanResearch.get_description() end

---@return Object
function SanResearch.test_adhoc_requirements() end

---@return string
function SanResearch.get_unlock_condition_description() end

---@return Object
function SanResearch.test_adhoc_requirements() end

function SanResearch.submit_and_apply() end

function SanResearch.update_state() end

function SanResearch.apply_mod() end

function SanResearch.activate_local_effects() end

---@return string
function SanResearch.get_description() end

---@return string
function SanResearch.get_proposal_name() end

---@return string
function SanResearch.get_lore() end

---@return string
function SanResearch.get_tiered_display_name() end

---@return string
function SanResearch.get_unlock_condition_description() end
