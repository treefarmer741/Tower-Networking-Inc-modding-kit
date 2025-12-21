---@meta _
-- Generated API for game version 0.9.1

---@class PlayerHosting : Node
---@field fqdn string
---@field use_spec_csv string
---@field ppu number
---@field registration_cost integer
---@field today_visit_count integer
---@field historical_visit_count integer
---@field thm_spec_csv string
---@field today_payment number
---@field registered_on_day integer
---@field payment_today integer
local PlayerHosting = {}

---@param n integer
function PlayerHosting.account_visit(n) end

---@return string
function PlayerHosting.get_fqdn() end

function PlayerHosting.reset_for_day() end

---@param new_ppu number
function PlayerHosting.update_ppu(new_ppu) end
