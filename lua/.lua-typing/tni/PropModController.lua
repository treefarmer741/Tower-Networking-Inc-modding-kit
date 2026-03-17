---@meta _
-- Generated API for game version 0.10.0

---@class PropModController : Node
---@field batch_day_interval integer
---@field proposals_per_batch integer
---@field reroll_fee integer
---@field initial_lock PropMod
---@field mods Array<PropMod>
---@field current_proposal_count integer
---@field history_proposal_count integer
---@field locked_proposal_count integer
local PropModController = {}

function PropModController.new_proposals_updated() end

function PropModController.ex_proposals_updated() end

function PropModController.reroll_proposals() end

---@param mod_path Object
function PropModController.submit(mod_path) end

---@param mod_path Object
function PropModController.lock(mod_path) end
