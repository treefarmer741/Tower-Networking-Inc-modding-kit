---@meta _
-- Generated API for game version 0.13.1

---@class FloorClosurePermit : SecretariatCreditMod
---@field OUTAGE_MOD string # Constant value: <PackedScene>
---@field MAX_DAYS integer # Constant value: 5
---@field closures Array<any>
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
local FloorClosurePermit = {}

---@return Array<any>
function FloorClosurePermit.get_closure_floors() end

---@return integer
function FloorClosurePermit.get_closure_max_days() end

---@param n_floors integer
---@param days integer
---@return integer
function FloorClosurePermit.get_closure_cost(n_floors, days) end

---@param options table<any,any>
function FloorClosurePermit.set_submit_options(options) end

---@return integer
function FloorClosurePermit.get_submit_cost() end

function FloorClosurePermit.apply_mod() end

---@return string
function FloorClosurePermit.get_proposal_name() end

---@return string
function FloorClosurePermit.get_lore() end

---@return string
function FloorClosurePermit.get_description() end

function FloorClosurePermit.apply_mod() end

function FloorClosurePermit.submit_and_apply() end

---@return Object
function FloorClosurePermit.test_adhoc_requirements() end

function FloorClosurePermit.deactivate_local_effects() end

function FloorClosurePermit.expire_effect() end

---@return Object
function FloorClosurePermit.test_adhoc_requirements() end

function FloorClosurePermit.submit_and_apply() end

function FloorClosurePermit.update_state() end

function FloorClosurePermit.apply_mod() end

function FloorClosurePermit.activate_local_effects() end

---@return string
function FloorClosurePermit.get_description() end

---@return string
function FloorClosurePermit.get_proposal_name() end

---@return string
function FloorClosurePermit.get_lore() end

---@return string
function FloorClosurePermit.get_tiered_display_name() end

---@return string
function FloorClosurePermit.get_unlock_condition_description() end
