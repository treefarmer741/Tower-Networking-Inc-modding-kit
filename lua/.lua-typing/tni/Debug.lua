---@meta _
-- Generated API for game version 0.9.1

---@class Debug : Node
---@field batch_day_interval integer
---@field proposals_per_batch integer
---@field reroll_fee integer
---@field initial_lock PropMod
---@field mods Array<PropMod>
---@field current_proposal_count integer
---@field history_proposal_count integer
---@field locked_proposal_count integer
local Debug = {}

function Debug.new_proposals_updated() end

function Debug.ex_proposals_updated() end

function Debug.reroll_proposals() end

---@param mod_path Object
function Debug.submit(mod_path) end

---@param mod_path Object
function Debug.lock(mod_path) end
