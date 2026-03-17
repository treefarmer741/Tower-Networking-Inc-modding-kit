#ifndef TNI_API_HEADER_PROGRAMROUTINE
#define TNI_API_HEADER_PROGRAMROUTINE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ProgramRoutine : public Node {
	using Node::Node;

	constexpr ProgramRoutine(Node base) : Node{base} {}
	constexpr ProgramRoutine(uint64_t addr) : Node{addr} {}
	constexpr ProgramRoutine(Object obj) : ProgramRoutine{obj.address()} {}
	ProgramRoutine(Variant variant) : ProgramRoutine{variant.as_object().address()} {}


	PROPERTY(enabled, bool);
	PROPERTY(shell, TerminalShell);

	inline void get_usage_help(Variant stdout_);
	inline bool run_with_args(Variant stdout_, Variant args);
	inline Variant get_program_descripts(Program refprog, bool termcol);
	inline void interrupt_shell();
	inline void minimize_shell();
	inline void foreground_process(TerminalOutputDisplay _stdout);
	inline void print_debugger_inacessible_error(Variant stdout_, String deb_addr);
	inline void print_device_inaccessible_error(Variant stdout_, String deb_addr, String dev_addr, String device_type);
	inline void print_invalid_device_type(Variant stdout_, String dev_addr, Variant req_type);
	inline void print_no_dns_entry_error(Variant stdout_, Variant dst_laddr);
	inline void print_no_dns_server_error(Variant stdout_, Variant d_addr);
	inline void print_traversal_context_errors(Variant context, Variant stdout_);
	inline void print_laddr_help(Variant stdout_, Variant addr);
	inline Variant parse_preposition_syntax(Variant args, String preposition);
	inline Variant wrap_termcol(Variant val, String fmtspec, String colstr, bool termcol);
	inline String format_load_string(int64_t load_last_tick, int64_t max_load);
	inline void print_prog_load(Variant stdout_, Program p);
	inline void print_send_packet_error(Variant stdout_, Variant async_send_resultd);
	inline int64_t get_debugger_pkt_weight();
	inline Variant send_remote_command(Variant stdout_, DeviceUnit debugger, String node_addr, bool allow_user_nodes, String rc_tc_type, String rc_tc_rd, Variant matcher_callback, bool clear_scrn_after_event);
};

#include "TerminalShell.hpp"
#include "Program.hpp"
#include "TerminalOutputDisplay.hpp"
#include "DeviceUnit.hpp"

inline void ProgramRoutine::get_usage_help(Variant stdout_) { voidcall("get_usage_help", stdout_); }
inline bool ProgramRoutine::run_with_args(Variant stdout_, Variant args) { return operator()("run_with_args", stdout_, args); }
inline Variant ProgramRoutine::get_program_descripts(Program refprog, bool termcol) { return operator()("get_program_descripts", refprog, termcol); }
inline void ProgramRoutine::interrupt_shell() { voidcall("interrupt_shell"); }
inline void ProgramRoutine::minimize_shell() { voidcall("minimize_shell"); }
inline void ProgramRoutine::foreground_process(TerminalOutputDisplay _stdout) { voidcall("foreground_process", _stdout); }
inline void ProgramRoutine::print_debugger_inacessible_error(Variant stdout_, String deb_addr) { voidcall("print_debugger_inacessible_error", stdout_, deb_addr); }
inline void ProgramRoutine::print_device_inaccessible_error(Variant stdout_, String deb_addr, String dev_addr, String device_type) { voidcall("print_device_inaccessible_error", stdout_, deb_addr, dev_addr, device_type); }
inline void ProgramRoutine::print_invalid_device_type(Variant stdout_, String dev_addr, Variant req_type) { voidcall("print_invalid_device_type", stdout_, dev_addr, req_type); }
inline void ProgramRoutine::print_no_dns_entry_error(Variant stdout_, Variant dst_laddr) { voidcall("print_no_dns_entry_error", stdout_, dst_laddr); }
inline void ProgramRoutine::print_no_dns_server_error(Variant stdout_, Variant d_addr) { voidcall("print_no_dns_server_error", stdout_, d_addr); }
inline void ProgramRoutine::print_traversal_context_errors(Variant context, Variant stdout_) { voidcall("print_traversal_context_errors", context, stdout_); }
inline void ProgramRoutine::print_laddr_help(Variant stdout_, Variant addr) { voidcall("print_laddr_help", stdout_, addr); }
inline Variant ProgramRoutine::parse_preposition_syntax(Variant args, String preposition) { return operator()("parse_preposition_syntax", args, preposition); }
inline Variant ProgramRoutine::wrap_termcol(Variant val, String fmtspec, String colstr, bool termcol) { return operator()("wrap_termcol", val, fmtspec, colstr, termcol); }
inline String ProgramRoutine::format_load_string(int64_t load_last_tick, int64_t max_load) { return operator()("format_load_string", load_last_tick, max_load); }
inline void ProgramRoutine::print_prog_load(Variant stdout_, Program p) { voidcall("print_prog_load", stdout_, p); }
inline void ProgramRoutine::print_send_packet_error(Variant stdout_, Variant async_send_resultd) { voidcall("print_send_packet_error", stdout_, async_send_resultd); }
inline int64_t ProgramRoutine::get_debugger_pkt_weight() { return operator()("get_debugger_pkt_weight"); }
inline Variant ProgramRoutine::send_remote_command(Variant stdout_, DeviceUnit debugger, String node_addr, bool allow_user_nodes, String rc_tc_type, String rc_tc_rd, Variant matcher_callback, bool clear_scrn_after_event) { return operator()("send_remote_command", stdout_, debugger, node_addr, allow_user_nodes, rc_tc_type, rc_tc_rd, matcher_callback, clear_scrn_after_event); }

#endif
