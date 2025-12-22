#ifndef TNI_API_HEADER_LOCALCRONSYS
#define TNI_API_HEADER_LOCALCRONSYS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Localcronsys : public Node {
	using Node::Node;

	constexpr Localcronsys(Node base) : Node{base} {}
	constexpr Localcronsys(uint64_t addr) : Node{addr} {}
	constexpr Localcronsys(Object obj) : Localcronsys{obj.address()} {}
	Localcronsys(Variant variant) : Localcronsys{variant.as_object().address()} {}

	static constexpr int64_t MINUTES_IN_DAY = 1440;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(crontabs, Variant);
	PROPERTY(total_tab_count, int64_t);
	PROPERTY(sorted_keys, Variant);
	PROPERTY(crona, Variant);
	PROPERTY(last_trigger_minute, int64_t);
	PROPERTY(curr_minod, int64_t);

	inline void clear_tabs();
	inline void remove_expr_cval(int64_t ti);
	inline void add_expr_cval(String c_expr, String c_val);
	inline void sample_day_float(double day_float);
};


inline void Localcronsys::clear_tabs() { voidcall("clear_tabs"); }
inline void Localcronsys::remove_expr_cval(int64_t ti) { voidcall("remove_expr_cval", ti); }
inline void Localcronsys::add_expr_cval(String c_expr, String c_val) { voidcall("add_expr_cval", c_expr, c_val); }
inline void Localcronsys::sample_day_float(double day_float) { voidcall("sample_day_float", day_float); }

#endif
