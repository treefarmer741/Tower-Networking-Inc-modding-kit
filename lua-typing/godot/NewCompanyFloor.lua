---@meta _
-- Generated API for game version 0.12.1

---@class NewCompanyFloor : PropMod
---@field admin_perc_increase number # Constant value: 0.1
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
local NewCompanyFloor = {}

function NewCompanyFloor.submit_and_apply() end

function NewCompanyFloor.apply_mod() end

function NewCompanyFloor.activate_local_effects() end

---@return string
function NewCompanyFloor.get_proposal_name() end

---@return string
function NewCompanyFloor.get_lore() end

---@return string
function NewCompanyFloor.get_description() end

---@return Object
function NewCompanyFloor.test_adhoc_requirements() end

function NewCompanyFloor.submit_and_apply() end

function NewCompanyFloor.update_state() end

function NewCompanyFloor.apply_mod() end

function NewCompanyFloor.activate_local_effects() end

---@return string
function NewCompanyFloor.get_description() end

---@return string
function NewCompanyFloor.get_proposal_name() end

---@return string
function NewCompanyFloor.get_lore() end

---@return string
function NewCompanyFloor.get_tiered_display_name() end

---@return string
function NewCompanyFloor.get_unlock_condition_description() end
