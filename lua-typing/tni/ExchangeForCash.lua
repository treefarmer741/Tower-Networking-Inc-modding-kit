---@meta _
-- Generated API for game version 0.13.1

---@class ExchangeForCash : SecretariatCreditMod
---@field cash_amount integer
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
local ExchangeForCash = {}

function ExchangeForCash.activate_local_effects() end

---@return string
function ExchangeForCash.get_proposal_name() end

---@return string
function ExchangeForCash.get_lore() end

---@return string
function ExchangeForCash.get_description() end

function ExchangeForCash.apply_mod() end

function ExchangeForCash.submit_and_apply() end

---@return Object
function ExchangeForCash.test_adhoc_requirements() end

function ExchangeForCash.deactivate_local_effects() end

function ExchangeForCash.expire_effect() end

---@return Object
function ExchangeForCash.test_adhoc_requirements() end

function ExchangeForCash.submit_and_apply() end

function ExchangeForCash.update_state() end

function ExchangeForCash.apply_mod() end

function ExchangeForCash.activate_local_effects() end

---@return string
function ExchangeForCash.get_description() end

---@return string
function ExchangeForCash.get_proposal_name() end

---@return string
function ExchangeForCash.get_lore() end

---@return string
function ExchangeForCash.get_tiered_display_name() end

---@return string
function ExchangeForCash.get_unlock_condition_description() end
