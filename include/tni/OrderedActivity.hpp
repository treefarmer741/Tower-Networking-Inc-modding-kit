#ifndef TNI_API_HEADER_ORDEREDACTIVITY
#define TNI_API_HEADER_ORDEREDACTIVITY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "WorldActivity.hpp"

struct OrderedActivity : public WorldActivity {
	using WorldActivity::WorldActivity;

	constexpr OrderedActivity(WorldActivity base) : WorldActivity{base} {}
	constexpr OrderedActivity(uint64_t addr) : WorldActivity{addr} {}
	constexpr OrderedActivity(Object obj) : OrderedActivity{obj.address()} {}
	OrderedActivity(Variant variant) : OrderedActivity{variant.as_object().address()} {}

	enum Todo : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NOT_INITIALIZED = -1,
		BREAK_AND_EXECUTE = 0,
		CONTINUE_ADD = 1,
	};


	inline String get_current_order_guide_text();
	inline void add_order_context(Variant cinfo, String aux_v);
	inline void test_progress();
	inline void handle_activity();
	inline void stop_activity();
	inline void tick();
	inline String get_order_status();
	inline void get_activity_display_name();
	inline String get_activity_description();
};


inline String OrderedActivity::get_current_order_guide_text() { return this->operator()("get_current_order_guide_text"); }
inline void OrderedActivity::add_order_context(Variant cinfo, String aux_v) { this->voidcall("add_order_context", cinfo, aux_v); }
inline void OrderedActivity::test_progress() { this->voidcall("test_progress"); }
inline void OrderedActivity::handle_activity() { this->voidcall("handle_activity"); }
inline void OrderedActivity::stop_activity() { this->voidcall("stop_activity"); }
inline void OrderedActivity::tick() { this->voidcall("tick"); }
inline String OrderedActivity::get_order_status() { return this->operator()("get_order_status"); }
inline void OrderedActivity::get_activity_display_name() { this->voidcall("get_activity_display_name"); }
inline String OrderedActivity::get_activity_description() { return this->operator()("get_activity_description"); }

#endif
