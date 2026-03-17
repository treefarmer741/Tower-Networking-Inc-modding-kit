---@meta _
-- Generated API for game version 0.10.0

---@class LiabilityInsurance : Node
---@field multiplier integer # Constant value: 10
---@field litrk string # Constant value: Liability insurance premium
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
local LiabilityInsurance = {}

function LiabilityInsurance.activate_local_effects() end

function LiabilityInsurance.apply_mod() end

---@return string
function LiabilityInsurance.get_proposal_name() end

---@return string
function LiabilityInsurance.get_lore() end

---@return string
function LiabilityInsurance.get_description() end

---@return Object
function LiabilityInsurance.test_adhoc_requirements() end

function LiabilityInsurance.submit_and_apply() end

function LiabilityInsurance.update_state() end

function LiabilityInsurance.apply_mod() end

function LiabilityInsurance.activate_local_effects() end

---@return string
function LiabilityInsurance.get_description() end

---@return string
function LiabilityInsurance.get_proposal_name() end

---@return string
function LiabilityInsurance.get_lore() end
