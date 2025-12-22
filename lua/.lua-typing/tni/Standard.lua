---@meta _
-- Generated API for game version 0.9.1

---@class Standard : Node
---@field batch_day_interval integer
---@field proposals_per_batch integer
---@field reroll_fee integer
---@field initial_lock PropMod
---@field mods Array<PropMod>
---@field current_proposal_count integer
---@field history_proposal_count integer
---@field locked_proposal_count integer
local Standard = {}

function Standard.new_proposals_updated() end

function Standard.ex_proposals_updated() end

function Standard.reroll_proposals() end

---@param mod_path Object
function Standard.submit(mod_path) end

---@param mod_path Object
function Standard.lock(mod_path) end
