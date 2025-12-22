---@meta _
-- Generated API for game version 0.9.1

---@class NewDataCenter : Node
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
local NewDataCenter = {}

function NewDataCenter.apply_mod() end

function NewDataCenter.activate_local_effects() end

---@return string
function NewDataCenter.get_proposal_name() end

---@return string
function NewDataCenter.get_lore() end

---@return string
function NewDataCenter.get_description() end

---@return Object
function NewDataCenter.test_adhoc_requirements() end

function NewDataCenter.submit_and_apply() end

function NewDataCenter.update_state() end

function NewDataCenter.apply_mod() end

function NewDataCenter.activate_local_effects() end

---@return string
function NewDataCenter.get_description() end

---@return string
function NewDataCenter.get_proposal_name() end

---@return string
function NewDataCenter.get_lore() end
