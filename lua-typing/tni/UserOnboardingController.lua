---@meta _
-- Generated API for game version 0.12.1

---@class UserOnboardingController : Node
---@field next_qid integer
---@field user_queue Array<Dictionary>
---@field user_max_days_in_queue integer
---@field breach_timer_duration integer
---@field uq_counter integer
---@field breaching_qids Array<integer>
local UserOnboardingController = {}
---@enum UserOnboardingController.UserQueueKey
UserOnboardingController.UserQueueKey = {
	["USER_SCENE_PATHS"] = 0,
	["FINAL_DATE"] = 1,
	["QUEUE_ID"] = 2,
	["PLACED_GROUP_INDICES"] = 3,
}

---@param user_sfps Array<string>
function UserOnboardingController.add_users_pack_to_queue(user_sfps) end

---@param qid integer
---@return integer
function UserOnboardingController.get_userq_index(qid) end

---@param qid integer
function UserOnboardingController.accept_user_in_queue(qid) end

---@param qid integer
---@return Object
function UserOnboardingController.get_early_accept_bonus(qid) end

---@param idx integer
---@return Object
function UserOnboardingController.get_early_accept_bonus_with_index(idx) end

function UserOnboardingController.signal_queue_has_increased() end

function UserOnboardingController.broadcast_sound_notification() end

---@param outlet_scn_path string
---@param sockpos Vector2
---@param user_sfps Array<any>
---@param qid integer
---@param cost_mult number?  # Default = 1.0
function UserOnboardingController.make_socket_with_users(outlet_scn_path, sockpos, user_sfps, qid, cost_mult) end

---@param uq table<any,any>
function UserOnboardingController.start_breach_timer(uq) end
