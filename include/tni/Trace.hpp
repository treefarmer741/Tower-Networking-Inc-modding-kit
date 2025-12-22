#ifndef TNI_API_HEADER_TRACE
#define TNI_API_HEADER_TRACE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Trace : public Node {
	using Node::Node;

	constexpr Trace(Node base) : Node{base} {}
	constexpr Trace(uint64_t addr) : Node{addr} {}
	constexpr Trace(Object obj) : Trace{obj.address()} {}
	Trace(Variant variant) : Trace{variant.as_object().address()} {}


	PROPERTY(enabled, bool);
	PROPERTY(shell, TerminalShell);

	inline void get_usage_help(Variant stdout_);
	inline bool run_with_args(Variant stdout_, Variant args);
	inline int64_t tracer_callback(Variant context, Variant node, Variant via_port, Variant _current_index, Variant current_depth);
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

inline void Trace::get_usage_help(Variant stdout_) { voidcall("get_usage_help", stdout_); }
inline bool Trace::run_with_args(Variant stdout_, Variant args) { return operator()("run_with_args", stdout_, args); }
inline int64_t Trace::tracer_callback(Variant context, Variant node, Variant via_port, Variant _current_index, Variant current_depth) { return operator()("tracer_callback", context, node, via_port, _current_index, current_depth); }
inline void Trace::interrupt_shell() { voidcall("interrupt_shell"); }
inline void Trace::minimize_shell() { voidcall("minimize_shell"); }
inline void Trace::foreground_process(TerminalOutputDisplay _stdout) { voidcall("foreground_process", _stdout); }
inline TraversalContext Trace::create_debugger_ctx(Variant debugger_lgctl, Variant traffic_type, Variant request_data) { return TraversalContext(operator()("create_debugger_ctx", debugger_lgctl, traffic_type, request_data).as_object().address()); }
inline TraversalContext Trace::access_node_from_debugger(Variant stdout_, Variant debugger, Variant node_addr, bool allow_user_nodes) { return TraversalContext(operator()("access_node_from_debugger", stdout_, debugger, node_addr, allow_user_nodes).as_object().address()); }
inline void Trace::print_debugger_inacessible_error(Variant stdout_, String deb_addr) { voidcall("print_debugger_inacessible_error", stdout_, deb_addr); }
inline void Trace::print_device_inaccessible_error(Variant stdout_, String deb_addr, String dev_addr, String device_type) { voidcall("print_device_inaccessible_error", stdout_, deb_addr, dev_addr, device_type); }
inline void Trace::print_invalid_device_type(Variant stdout_, String dev_addr, Variant req_type) { voidcall("print_invalid_device_type", stdout_, dev_addr, req_type); }
inline void Trace::print_no_dns_entry_error(Variant stdout_, Variant dst_laddr) { voidcall("print_no_dns_entry_error", stdout_, dst_laddr); }
inline void Trace::print_traversal_context_errors(Variant context, Variant stdout_) { voidcall("print_traversal_context_errors", context, stdout_); }
inline void Trace::print_laddr_help(Variant stdout_, Variant addr) { voidcall("print_laddr_help", stdout_, addr); }
inline Variant Trace::parse_preposition_syntax(Variant args, String preposition) { return operator()("parse_preposition_syntax", args, preposition); }
inline Variant Trace::wrap_termcol(Variant val, String fmtspec, String colstr, bool termcol) { return operator()("wrap_termcol", val, fmtspec, colstr, termcol); }
inline String Trace::format_load_string(int64_t load_last_tick, int64_t max_load) { return operator()("format_load_string", load_last_tick, max_load); }
inline void Trace::print_prog_load(Variant stdout_, Program p) { voidcall("print_prog_load", stdout_, p); }

#endif
