#ifndef TNI_API_HEADER_ROUTINESPOWER
#define TNI_API_HEADER_ROUTINESPOWER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RoutinesPower : public Node {
	using Node::Node;

	constexpr RoutinesPower(Node base) : Node{base} {}
	constexpr RoutinesPower(uint64_t addr) : Node{addr} {}
	constexpr RoutinesPower(Object obj) : RoutinesPower{obj.address()} {}
	RoutinesPower(Variant variant) : RoutinesPower{variant.as_object().address()} {}


	PROPERTY(enabled, bool);
	PROPERTY(shell, TerminalShell);

	inline void get_usage_help(Variant stdout_);
	inline bool run_with_args(Variant stdout_, Variant args);
	inline void interrupt_shell();
	inline void minimize_shell();
	inline void foreground_process(TerminalOutputDisplay _stdout);
	inline TraversalContext create_debugger_ctx(Variant debugger_lgctl, Variant traffic_type, Variant request_data);
	inline TraversalContext access_node_from_debugger(Variant stdout_, Variant debugger, Variant node_addr, bool allow_user_nodes);
	inline void print_debugger_inacessible_error(Variant stdout_, String deb_addr);
	inline void print_device_inaccessible_error(Variant stdout_, String deb_addr, String dev_addr, String device_type);
	inline void print_invalid_device_type(Variant stdout_, String dev_addr, Variant req_type);
	inline void print_no_dns_entry_error(Variant stdout_, Variant dst_laddr);
	inline void print_traversal_context_errors(Variant context, Variant stdout_);
	inline void print_laddr_help(Variant stdout_, Variant addr);
	inline Variant parse_preposition_syntax(Variant args, String preposition);
	inline Variant wrap_termcol(Variant val, String fmtspec, String colstr, bool termcol);
	inline String format_load_string(int64_t load_last_tick, int64_t max_load);
	inline void print_prog_load(Variant stdout_, Program p);
};

#include "TerminalShell.hpp"
#include "TerminalOutputDisplay.hpp"
#include "TraversalContext.hpp"
#include "Program.hpp"

inline void RoutinesPower::get_usage_help(Variant stdout_) { voidcall("get_usage_help", stdout_); }
inline bool RoutinesPower::run_with_args(Variant stdout_, Variant args) { return operator()("run_with_args", stdout_, args); }
inline void RoutinesPower::interrupt_shell() { voidcall("interrupt_shell"); }
inline void RoutinesPower::minimize_shell() { voidcall("minimize_shell"); }
inline void RoutinesPower::foreground_process(TerminalOutputDisplay _stdout) { voidcall("foreground_process", _stdout); }
inline TraversalContext RoutinesPower::create_debugger_ctx(Variant debugger_lgctl, Variant traffic_type, Variant request_data) { return TraversalContext(operator()("create_debugger_ctx", debugger_lgctl, traffic_type, request_data).as_object().address()); }
inline TraversalContext RoutinesPower::access_node_from_debugger(Variant stdout_, Variant debugger, Variant node_addr, bool allow_user_nodes) { return TraversalContext(operator()("access_node_from_debugger", stdout_, debugger, node_addr, allow_user_nodes).as_object().address()); }
inline void RoutinesPower::print_debugger_inacessible_error(Variant stdout_, String deb_addr) { voidcall("print_debugger_inacessible_error", stdout_, deb_addr); }
inline void RoutinesPower::print_device_inaccessible_error(Variant stdout_, String deb_addr, String dev_addr, String device_type) { voidcall("print_device_inaccessible_error", stdout_, deb_addr, dev_addr, device_type); }
inline void RoutinesPower::print_invalid_device_type(Variant stdout_, String dev_addr, Variant req_type) { voidcall("print_invalid_device_type", stdout_, dev_addr, req_type); }
inline void RoutinesPower::print_no_dns_entry_error(Variant stdout_, Variant dst_laddr) { voidcall("print_no_dns_entry_error", stdout_, dst_laddr); }
inline void RoutinesPower::print_traversal_context_errors(Variant context, Variant stdout_) { voidcall("print_traversal_context_errors", context, stdout_); }
inline void RoutinesPower::print_laddr_help(Variant stdout_, Variant addr) { voidcall("print_laddr_help", stdout_, addr); }
inline Variant RoutinesPower::parse_preposition_syntax(Variant args, String preposition) { return operator()("parse_preposition_syntax", args, preposition); }
inline Variant RoutinesPower::wrap_termcol(Variant val, String fmtspec, String colstr, bool termcol) { return operator()("wrap_termcol", val, fmtspec, colstr, termcol); }
inline String RoutinesPower::format_load_string(int64_t load_last_tick, int64_t max_load) { return operator()("format_load_string", load_last_tick, max_load); }
inline void RoutinesPower::print_prog_load(Variant stdout_, Program p) { voidcall("print_prog_load", stdout_, p); }

#endif
