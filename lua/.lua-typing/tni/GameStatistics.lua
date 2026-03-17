---@meta _
-- Generated API for game version 0.10.0

---@class GameStatistics : RefCounted
---@field data table<any,any>
local GameStatistics = {}
---@enum GameStatistics.Stat
GameStatistics.Stat = {
	["TOTAL_SERVICE_FLOORS"] = 0,
	["TOTAL_DATACENTERS"] = 1,
	["TOTAL_USERS"] = 2,
	["USER_MAJORITY"] = 3,
	["DAILY_SAT_AVG"] = 4,
	["DAILY_INCOME_AVG"] = 5,
	["TOTAL_SCHEDULED_OUTAGES_EXP"] = 6,
	["TOTAL_UNSCHEDULED_OUTAGES_EXP"] = 7,
	["TOTAL_SURGES_EXP"] = 8,
	["TOTAL_DEVS_FAILED"] = 9,
	["TOTAL_LOANS_TAKEN"] = 10,
	["TOTAL_DAYS_IN_DEBT"] = 11,
	["TOTAL_PROPOSALS_SUBMITTED"] = 12,
	["TOTAL_COFFEE_DRANK"] = 13,
	["TOTAL_TEA_DRANK"] = 14,
	["TOTAL_NETWORK_OUTAGES_SCHEDULED"] = 15,
	["TOTAL_DEVS_SURGED"] = 16,
	["TOTAL_CYBERATTACKS_ENCOUNTERED"] = 17,
}
---@enum GameStatistics.Inte
GameStatistics.Inte = {
	["CUMUSAT"] = 0,
}

---@param k Object
---@param val integer?  # Default = 1
function GameStatistics.add_stat(k, val) end

---@param k Object
---@return Object
function GameStatistics.ggs(k) end

---@param gw GameWorld
function GameStatistics.daily_stat_update(gw) end

---@param gw GameWorld
function GameStatistics.update_stats(gw) end
