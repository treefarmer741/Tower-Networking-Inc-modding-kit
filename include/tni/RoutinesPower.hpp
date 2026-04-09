#ifndef TNI_API_HEADER_ROUTINESPOWER
#define TNI_API_HEADER_ROUTINESPOWER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TerminalRoutine.hpp"

struct RoutinesPower : public TerminalRoutine {
	using TerminalRoutine::TerminalRoutine;

	constexpr RoutinesPower(TerminalRoutine base) : TerminalRoutine{base} {}
	constexpr RoutinesPower(uint64_t addr) : TerminalRoutine{addr} {}
	constexpr RoutinesPower(Object obj) : RoutinesPower{obj.address()} {}
	RoutinesPower(Variant variant) : RoutinesPower{variant.as_object().address()} {}


	PROPERTY(enabled, bool);
	PROPERTY(shell, TerminalShell);
	PROPERTY(wide_output_shell, bool);

	inline void get_usage_help(Variant stdout_);
	inline bool run_with_args(Variant stdout_, Variant args);
	inline void interrupt_shell();
	inline void minimize_shell();
	inline void foreground_process(const TerminalOutputDisplay& _stdout);
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
	inline void print_prog_load(Variant stdout_, const Program& p);
	inline void print_send_packet_error(Variant stdout_, Variant async_send_resultd);
	inline int64_t get_debugger_pkt_weight();
	inline Variant send_remote_command(Variant stdout_, const DeviceUnit& debugger, String node_addr, bool allow_user_nodes, String rc_tc_type, String rc_tc_rd, Variant matcher_callback, bool clear_scrn_after_event);
};

#include "TerminalShell.hpp"
#include "TerminalOutputDisplay.hpp"
#include "Program.hpp"
#include "DeviceUnit.hpp"

inline void RoutinesPower::get_usage_help(Variant stdout_) { this->voidcall("get_usage_help", stdout_); }
inline bool RoutinesPower::run_with_args(Variant stdout_, Variant args) { return this->operator()("run_with_args", stdout_, args); }
inline void RoutinesPower::interrupt_shell() { this->voidcall("interrupt_shell"); }
inline void RoutinesPower::minimize_shell() { this->voidcall("minimize_shell"); }
inline void RoutinesPower::foreground_process(const TerminalOutputDisplay& _stdout) { this->voidcall("foreground_process", Object(reinterpret_cast<const Object*>(&_stdout)->address())); }
inline void RoutinesPower::print_debugger_inacessible_error(Variant stdout_, String deb_addr) { this->voidcall("print_debugger_inacessible_error", stdout_, deb_addr); }
inline void RoutinesPower::print_device_inaccessible_error(Variant stdout_, String deb_addr, String dev_addr, String device_type) { this->voidcall("print_device_inaccessible_error", stdout_, deb_addr, dev_addr, device_type); }
inline void RoutinesPower::print_invalid_device_type(Variant stdout_, String dev_addr, Variant req_type) { this->voidcall("print_invalid_device_type", stdout_, dev_addr, req_type); }
inline void RoutinesPower::print_no_dns_entry_error(Variant stdout_, Variant dst_laddr) { this->voidcall("print_no_dns_entry_error", stdout_, dst_laddr); }
inline void RoutinesPower::print_no_dns_server_error(Variant stdout_, Variant d_addr) { this->voidcall("print_no_dns_server_error", stdout_, d_addr); }
inline void RoutinesPower::print_traversal_context_errors(Variant context, Variant stdout_) { this->voidcall("print_traversal_context_errors", context, stdout_); }
inline void RoutinesPower::print_laddr_help(Variant stdout_, Variant addr) { this->voidcall("print_laddr_help", stdout_, addr); }
inline Variant RoutinesPower::parse_preposition_syntax(Variant args, String preposition) { return this->operator()("parse_preposition_syntax", args, preposition); }
inline Variant RoutinesPower::wrap_termcol(Variant val, String fmtspec, String colstr, bool termcol) { return this->operator()("wrap_termcol", val, fmtspec, colstr, termcol); }
inline String RoutinesPower::format_load_string(int64_t load_last_tick, int64_t max_load) { return this->operator()("format_load_string", load_last_tick, max_load); }
inline void RoutinesPower::print_prog_load(Variant stdout_, const Program& p) { this->voidcall("print_prog_load", stdout_, Object(reinterpret_cast<const Object*>(&p)->address())); }
inline void RoutinesPower::print_send_packet_error(Variant stdout_, Variant async_send_resultd) { this->voidcall("print_send_packet_error", stdout_, async_send_resultd); }
inline int64_t RoutinesPower::get_debugger_pkt_weight() { return this->operator()("get_debugger_pkt_weight"); }
inline Variant RoutinesPower::send_remote_command(Variant stdout_, const DeviceUnit& debugger, String node_addr, bool allow_user_nodes, String rc_tc_type, String rc_tc_rd, Variant matcher_callback, bool clear_scrn_after_event) { return this->operator()("send_remote_command", stdout_, Object(reinterpret_cast<const Object*>(&debugger)->address()), node_addr, allow_user_nodes, rc_tc_type, rc_tc_rd, matcher_callback, clear_scrn_after_event); }

#endif
