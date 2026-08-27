#ifndef TNI_API_HEADER_USERONBOARDINGCONTROLLER
#define TNI_API_HEADER_USERONBOARDINGCONTROLLER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserOnboardingController : public Node {
	using Node::Node;

	constexpr UserOnboardingController(Node base) : Node{base} {}
	constexpr UserOnboardingController(uint64_t addr) : Node{addr} {}
	constexpr UserOnboardingController(Object obj) : UserOnboardingController{obj.address()} {}
	UserOnboardingController(Variant variant) : UserOnboardingController{variant.as_object().address()} {}

	enum struct UserQueueKey : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		USER_SCENE_PATHS = 0,
		FINAL_DATE = 1,
		QUEUE_ID = 2,
		PLACED_GROUP_INDICES = 3,
	};

	PROPERTY(next_qid, int64_t);
	PROPERTY(user_queue, Variant);
	PROPERTY(user_max_days_in_queue, int64_t);
	PROPERTY(breach_timer_duration, int64_t);
	PROPERTY(uq_counter, int64_t);
	PROPERTY(breaching_qids, Variant);

	inline void add_users_pack_to_queue(Variant user_sfps);
	inline int64_t get_userq_index(int64_t qid);
	inline void accept_user_in_queue(int64_t qid);
	inline Variant get_early_accept_bonus(int64_t qid);
	inline Variant get_early_accept_bonus_with_index(int64_t idx);
	inline void signal_queue_has_increased();
	inline void broadcast_sound_notification();
	inline void make_socket_with_users(String outlet_scn_path, Variant sockpos, Variant user_sfps, int64_t qid, double cost_mult);
	inline void start_breach_timer(Variant uq);
};


inline void UserOnboardingController::add_users_pack_to_queue(Variant user_sfps) { this->voidcall("add_users_pack_to_queue", user_sfps); }
inline int64_t UserOnboardingController::get_userq_index(int64_t qid) { return this->operator()("get_userq_index", qid); }
inline void UserOnboardingController::accept_user_in_queue(int64_t qid) { this->voidcall("accept_user_in_queue", qid); }
inline Variant UserOnboardingController::get_early_accept_bonus(int64_t qid) { return this->operator()("get_early_accept_bonus", qid); }
inline Variant UserOnboardingController::get_early_accept_bonus_with_index(int64_t idx) { return this->operator()("get_early_accept_bonus_with_index", idx); }
inline void UserOnboardingController::signal_queue_has_increased() { this->voidcall("signal_queue_has_increased"); }
inline void UserOnboardingController::broadcast_sound_notification() { this->voidcall("broadcast_sound_notification"); }
inline void UserOnboardingController::make_socket_with_users(String outlet_scn_path, Variant sockpos, Variant user_sfps, int64_t qid, double cost_mult) { this->voidcall("make_socket_with_users", outlet_scn_path, sockpos, user_sfps, qid, cost_mult); }
inline void UserOnboardingController::start_breach_timer(Variant uq) { this->voidcall("start_breach_timer", uq); }

#endif
