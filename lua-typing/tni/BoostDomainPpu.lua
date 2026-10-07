---@meta _
-- Generated API for game version 0.13.1

---@class BoostDomainPpu : SecretariatCreditMod
---@field ppu_boost_amount number
---@field selected_fqdn string
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
local BoostDomainPpu = {}

function BoostDomainPpu.activate_local_effects() end

function BoostDomainPpu.deactivate_local_effects() end

---@return Array<string>
function BoostDomainPpu.get_domain_options() end

---@return Object
function BoostDomainPpu.test_adhoc_requirements() end

---@return string
function BoostDomainPpu.get_proposal_name() end

---@return string
function BoostDomainPpu.get_lore() end

---@return string
function BoostDomainPpu.get_description() end

function BoostDomainPpu.apply_mod() end

function BoostDomainPpu.submit_and_apply() end

---@return Object
function BoostDomainPpu.test_adhoc_requirements() end

function BoostDomainPpu.deactivate_local_effects() end

function BoostDomainPpu.expire_effect() end

---@return Object
function BoostDomainPpu.test_adhoc_requirements() end

function BoostDomainPpu.submit_and_apply() end

function BoostDomainPpu.update_state() end

function BoostDomainPpu.apply_mod() end

function BoostDomainPpu.activate_local_effects() end

---@return string
function BoostDomainPpu.get_description() end

---@return string
function BoostDomainPpu.get_proposal_name() end

---@return string
function BoostDomainPpu.get_lore() end

---@return string
function BoostDomainPpu.get_tiered_display_name() end

---@return string
function BoostDomainPpu.get_unlock_condition_description() end
