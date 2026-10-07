---@meta _
-- Generated API for game version 0.13.1

---@class BlackboxResearch : PropMod
---@field techv string # Constant value: secretariat_blackbox
---@field REBEL_WORM_RATE_FACTOR number # Constant value: 0.75
---@field spawn_floors Array<any>
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
local BlackboxResearch = {}

function BlackboxResearch.apply_mod() end

function BlackboxResearch.activate_local_effects() end

---@return string
function BlackboxResearch.get_proposal_name() end

---@return string
function BlackboxResearch.get_lore() end

---@return string
function BlackboxResearch.get_description() end

---@return Object
function BlackboxResearch.test_adhoc_requirements() end

---@return string
function BlackboxResearch.get_unlock_condition_description() end

---@return Object
function BlackboxResearch.test_adhoc_requirements() end

function BlackboxResearch.submit_and_apply() end

function BlackboxResearch.update_state() end

function BlackboxResearch.apply_mod() end

function BlackboxResearch.activate_local_effects() end

---@return string
function BlackboxResearch.get_description() end

---@return string
function BlackboxResearch.get_proposal_name() end

---@return string
function BlackboxResearch.get_lore() end

---@return string
function BlackboxResearch.get_tiered_display_name() end

---@return string
function BlackboxResearch.get_unlock_condition_description() end
