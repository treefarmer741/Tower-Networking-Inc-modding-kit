---@meta _
-- Generated API for game version 0.9.1

---@class LoanController : Node
---@field offered_loan_packages Array<any>
---@field maximum_active_loans integer
---@field player_loans Array<CreditLoan>
---@field current_active_loans integer
---@field total_owed integer
---@field total_interest integer
local LoanController = {}

---@param payment_breakdown table<any,any>
function LoanController.populate_interest_breakdown(payment_breakdown) end

---@param pkgidx integer
function LoanController.disburse_player_loan(pkgidx) end

function LoanController.broadcast_financial_updates() end

---@param loan_name string
function LoanController.repay_player_loan(loan_name) end
