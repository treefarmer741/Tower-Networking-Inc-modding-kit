---@meta _
-- Generated API for game version 0.12.1

---@class BotnetsResearch : PropMod
---@field techv string # Constant value: botnets
---@field MIN_COMPUTE_SERVERS integer # Constant value: 5
---@field prereq_ps Array<any> # Constant value: [(res://scenes/graph_network_simulation/programs/early_access/botnets/user_traffic_analyzer.tscn):<PackedScene#-9223369223735009012>]
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
local BotnetsResearch = {}

function BotnetsResearch.apply_mod() end

function BotnetsResearch.activate_local_effects() end

---@return string
function BotnetsResearch.get_proposal_name() end

---@return string
function BotnetsResearch.get_lore() end

---@return string
function BotnetsResearch.get_description() end

---@return Object
function BotnetsResearch.test_adhoc_requirements() end

---@return string
function BotnetsResearch.get_unlock_condition_description() end

---@return Object
function BotnetsResearch.test_adhoc_requirements() end

function BotnetsResearch.submit_and_apply() end

function BotnetsResearch.update_state() end

function BotnetsResearch.apply_mod() end

function BotnetsResearch.activate_local_effects() end

---@return string
function BotnetsResearch.get_description() end

---@return string
function BotnetsResearch.get_proposal_name() end

---@return string
function BotnetsResearch.get_lore() end

---@return string
function BotnetsResearch.get_tiered_display_name() end

---@return string
function BotnetsResearch.get_unlock_condition_description() end
