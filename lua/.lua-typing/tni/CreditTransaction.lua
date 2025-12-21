---@meta _
-- Generated API for game version 0.9.1

---@class CreditTransaction : Object
---@field amount integer
---@field details string
---@field date integer
---@field category CreditTransaction.Category
local CreditTransaction = {}
---@enum CreditTransaction.Category
CreditTransaction.Category = {
	["UNKNOWN"] = 0,
	["INCOME"] = 1,
	["CAPEX"] = 2,
	["OPEX"] = 3,
	["PETTY"] = 4,
	["LOAN"] = 5,
	["INTEREST"] = 6,
	["INVESTMENT"] = 7,
	["DONATION"] = 8,
	["PROPOSAL_PROCESSING"] = 9,
	["TRADING"] = 10,
	["AGGREGATED"] = 11,
	["PENALTY"] = 12,
}

---@return string
function CreditTransaction.serialize() end

---@param jsonstr string
---@return CreditTransaction
function CreditTransaction.from_json(jsonstr) end
