---@meta _
-- Generated API for game version 0.12.1

---@class GridStabilityProgram : OutageSurgePropMod
---@field target_user_profiles Array<any>
---@field target_behaviors Array<any>
---@field min_healthy_count integer
---@field users_per_step integer
---@field check_interval number
---@field surge_increase number
---@field outage_increase number
---@field stamp_duty integer
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
local GridStabilityProgram = {}

function GridStabilityProgram.apply_mod() end

function GridStabilityProgram.activate_local_effects() end

---@return string
function GridStabilityProgram.get_proposal_name() end

---@return string
function GridStabilityProgram.get_lore() end

---@return string
function GridStabilityProgram.get_description() end

function GridStabilityProgram.apply_mod() end

function GridStabilityProgram.activate_local_effects() end

---@return string
function GridStabilityProgram.get_description() end

---@return Object
function GridStabilityProgram.test_adhoc_requirements() end

function GridStabilityProgram.submit_and_apply() end

function GridStabilityProgram.update_state() end

function GridStabilityProgram.apply_mod() end

function GridStabilityProgram.activate_local_effects() end

---@return string
function GridStabilityProgram.get_description() end

---@return string
function GridStabilityProgram.get_proposal_name() end

---@return string
function GridStabilityProgram.get_lore() end

---@return string
function GridStabilityProgram.get_tiered_display_name() end

---@return string
function GridStabilityProgram.get_unlock_condition_description() end
