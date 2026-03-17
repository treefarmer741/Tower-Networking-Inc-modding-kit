#ifndef TNI_API_HEADER_ONBOARDINGCONTROLLER
#define TNI_API_HEADER_ONBOARDINGCONTROLLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct OnboardingController : public Node {
	using Node::Node;

	constexpr OnboardingController(Node base) : Node{base} {}
	constexpr OnboardingController(uint64_t addr) : Node{addr} {}
	constexpr OnboardingController(Object obj) : OnboardingController{obj.address()} {}
	OnboardingController(Variant variant) : OnboardingController{variant.as_object().address()} {}

	enum FloorQueueKey : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		SCENE_FILE_PATH = 0,
		FINAL_DATE = 1,
		QUEUE_ID = 2,
	};

	PROPERTY(next_qid, int64_t);
	PROPERTY(floor_queue, Variant);
	PROPERTY(floor_max_days_in_queue, int64_t);
	PROPERTY(rq_counter, int64_t);

	inline int64_t get_floorq_index(int64_t qid);
	inline void accept_floor_in_queue(int64_t qid);
	inline void add_floorsfp_to_queue(String floor_sfp);
	inline Variant get_early_accept_bonus(int64_t qid);
	inline Variant get_early_accept_bonus_with_index(int64_t idx);
	inline void signal_queue_has_increased();
	inline void broadcast_sound_notification();
};


inline int64_t OnboardingController::get_floorq_index(int64_t qid) { return operator()("get_floorq_index", qid); }
inline void OnboardingController::accept_floor_in_queue(int64_t qid) { voidcall("accept_floor_in_queue", qid); }
inline void OnboardingController::add_floorsfp_to_queue(String floor_sfp) { voidcall("add_floorsfp_to_queue", floor_sfp); }
inline Variant OnboardingController::get_early_accept_bonus(int64_t qid) { return operator()("get_early_accept_bonus", qid); }
inline Variant OnboardingController::get_early_accept_bonus_with_index(int64_t idx) { return operator()("get_early_accept_bonus_with_index", idx); }
inline void OnboardingController::signal_queue_has_increased() { voidcall("signal_queue_has_increased"); }
inline void OnboardingController::broadcast_sound_notification() { voidcall("broadcast_sound_notification"); }

#endif
