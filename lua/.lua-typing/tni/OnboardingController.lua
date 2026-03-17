---@meta _
-- Generated API for game version 0.10.0

---@class OnboardingController : Node
---@field next_qid integer
---@field floor_queue Array<any>
---@field floor_max_days_in_queue integer
---@field rq_counter integer
local OnboardingController = {}
---@enum OnboardingController.FloorQueueKey
OnboardingController.FloorQueueKey = {
	["SCENE_FILE_PATH"] = 0,
	["FINAL_DATE"] = 1,
	["QUEUE_ID"] = 2,
}

---@param qid integer
---@return integer
function OnboardingController.get_floorq_index(qid) end

---@param qid integer
function OnboardingController.accept_floor_in_queue(qid) end

---@param floor_sfp string
function OnboardingController.add_floorsfp_to_queue(floor_sfp) end

---@param qid integer
---@return Object
function OnboardingController.get_early_accept_bonus(qid) end

---@param idx integer
---@return Object
function OnboardingController.get_early_accept_bonus_with_index(idx) end

function OnboardingController.signal_queue_has_increased() end

function OnboardingController.broadcast_sound_notification() end
