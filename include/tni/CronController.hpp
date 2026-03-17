#ifndef TNI_API_HEADER_CRONCONTROLLER
#define TNI_API_HEADER_CRONCONTROLLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CronController : public Node {
	using Node::Node;

	constexpr CronController(Node base) : Node{base} {}
	constexpr CronController(uint64_t addr) : Node{addr} {}
	constexpr CronController(Object obj) : CronController{obj.address()} {}
	CronController(Variant variant) : CronController{variant.as_object().address()} {}

	static constexpr int64_t MINUTES_IN_DAY = 1440;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(crontabs, Variant);
	PROPERTY(cronlogs, Variant);
	PROPERTY(total_installed_count, int64_t);
	PROPERTY(sorted_keys, Variant);
	PROPERTY(crona, Variant);
	PROPERTY(last_trigger_minute, int64_t);
	PROPERTY(curr_minod, int64_t);

	inline void wipe(bool everything);
	inline void remove_expr_cmd(int64_t ti);
	inline void add_expr_cmd(String c_expr, String c_cmd);
	inline void print_horizontal_sep();
	inline void print_success(Variant s);
	inline void print_error(Variant s);
	inline void print_warn(Variant s);
	inline void print_highlight(Variant s);
	inline void print_line(Variant s);
	inline void rotate_output();
	inline void clear_display();
};


inline void CronController::wipe(bool everything) { voidcall("wipe", everything); }
inline void CronController::remove_expr_cmd(int64_t ti) { voidcall("remove_expr_cmd", ti); }
inline void CronController::add_expr_cmd(String c_expr, String c_cmd) { voidcall("add_expr_cmd", c_expr, c_cmd); }
inline void CronController::print_horizontal_sep() { voidcall("print_horizontal_sep"); }
inline void CronController::print_success(Variant s) { voidcall("print_success", s); }
inline void CronController::print_error(Variant s) { voidcall("print_error", s); }
inline void CronController::print_warn(Variant s) { voidcall("print_warn", s); }
inline void CronController::print_highlight(Variant s) { voidcall("print_highlight", s); }
inline void CronController::print_line(Variant s) { voidcall("print_line", s); }
inline void CronController::rotate_output() { voidcall("rotate_output"); }
inline void CronController::clear_display() { voidcall("clear_display"); }

#endif
