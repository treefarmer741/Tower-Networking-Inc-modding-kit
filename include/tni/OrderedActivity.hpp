#ifndef TNI_API_HEADER_ORDEREDACTIVITY
#define TNI_API_HEADER_ORDEREDACTIVITY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct OrderedActivity : public Node {
	using Node::Node;

	constexpr OrderedActivity(Node base) : Node{base} {}
	constexpr OrderedActivity(uint64_t addr) : Node{addr} {}
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


inline String OrderedActivity::get_current_order_guide_text() { return operator()("get_current_order_guide_text"); }
inline void OrderedActivity::add_order_context(Variant cinfo, String aux_v) { voidcall("add_order_context", cinfo, aux_v); }
inline void OrderedActivity::test_progress() { voidcall("test_progress"); }
inline void OrderedActivity::handle_activity() { voidcall("handle_activity"); }
inline void OrderedActivity::stop_activity() { voidcall("stop_activity"); }
inline void OrderedActivity::tick() { voidcall("tick"); }
inline String OrderedActivity::get_order_status() { return operator()("get_order_status"); }
inline void OrderedActivity::get_activity_display_name() { voidcall("get_activity_display_name"); }
inline String OrderedActivity::get_activity_description() { return operator()("get_activity_description"); }

#endif
