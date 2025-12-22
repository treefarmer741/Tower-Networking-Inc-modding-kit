---@meta _
-- Generated API for game version 0.9.1

---@class ScanningResearch : Node
---@field techv string # Constant value: scans_bypass_routers
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
local ScanningResearch = {}

function ScanningResearch.apply_mod() end

function ScanningResearch.activate_local_effects() end

---@return string
function ScanningResearch.get_proposal_name() end

---@return string
function ScanningResearch.get_lore() end

---@return string
function ScanningResearch.get_description() end

---@return Object
function ScanningResearch.test_adhoc_requirements() end

---@return Object
function ScanningResearch.test_adhoc_requirements() end

function ScanningResearch.submit_and_apply() end

function ScanningResearch.update_state() end

function ScanningResearch.apply_mod() end

function ScanningResearch.activate_local_effects() end

---@return string
function ScanningResearch.get_description() end

---@return string
function ScanningResearch.get_proposal_name() end

---@return string
function ScanningResearch.get_lore() end
