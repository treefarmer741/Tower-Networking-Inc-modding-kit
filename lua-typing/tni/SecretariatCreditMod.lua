---@meta _
-- Generated API for game version 0.13.1

---@class SecretariatCreditMod : PropMod
---@field secretariat_credit_cost integer
---@field effect_duration integer
---@field repeatable boolean
---@field submitted_on_day integer
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
local SecretariatCreditMod = {}

function SecretariatCreditMod.apply_mod() end

function SecretariatCreditMod.submit_and_apply() end

---@return Object
function SecretariatCreditMod.test_adhoc_requirements() end

function SecretariatCreditMod.deactivate_local_effects() end

function SecretariatCreditMod.expire_effect() end

---@return Object
function SecretariatCreditMod.test_adhoc_requirements() end

function SecretariatCreditMod.submit_and_apply() end

function SecretariatCreditMod.update_state() end

function SecretariatCreditMod.apply_mod() end

function SecretariatCreditMod.activate_local_effects() end

---@return string
function SecretariatCreditMod.get_description() end

---@return string
function SecretariatCreditMod.get_proposal_name() end

---@return string
function SecretariatCreditMod.get_lore() end

---@return string
function SecretariatCreditMod.get_tiered_display_name() end

---@return string
function SecretariatCreditMod.get_unlock_condition_description() end
