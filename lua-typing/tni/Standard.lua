---@meta _
-- Generated API for game version 0.13.1

---@class Standard : PropModController
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

---@param mod_path Object
---@param extra_fqdn string?  # Default = 
---@param submit_options table<any,any>?  # Default = <null>
function Standard.submit_secretariat_credit(mod_path, extra_fqdn, submit_options) end

---@param mod_path Object
---@param drain_devpaths Array<any>
---@param extra_fqdn string?  # Default = 
---@param submit_options table<any,any>?  # Default = <null>
function Standard.submit_secretariat_credit_with_behavior(mod_path, drain_devpaths, extra_fqdn, submit_options) end
