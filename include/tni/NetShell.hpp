#ifndef TNI_API_HEADER_NETSHELL
#define TNI_API_HEADER_NETSHELL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NetShell : public Container {
	using Container::Container;

	constexpr NetShell(Container base) : Container{base} {}
	constexpr NetShell(uint64_t addr) : Container{addr} {}
	constexpr NetShell(Object obj) : NetShell{obj.address()} {}
	NetShell(Variant variant) : NetShell{variant.as_object().address()} {}


	PROPERTY(foreground_routine, TerminalRoutine);
	PROPERTY(prompt_char, String);
	PROPERTY(recursion_tracker, int64_t);
	PROPERTY(input, TerminalInput);
	PROPERTY(preposition_defaults, Variant);
	PROPERTY(terminal_routines, Variant);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void welcome();
	inline void launch();
	inline void setup_default_debugger();
	inline bool exec_command(String cmdstr, Variant stdout_);
	inline void interrupt();
	inline void run_in_foreground(TerminalRoutine fg_routine);
	inline void print_connectivity_help(Variant stdout_, Variant src_s, Variant dst_s, Variant tc);
	inline void print_connectivity_troubleshoot_guide(Variant stdout_, Variant src_s, Variant dst_s, Variant tc);
	inline bool has_terminal_routine(String routine_name);
	inline TerminalRoutine get_terminal_routine(String routine_name);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "TerminalRoutine.hpp"
#include "TerminalInput.hpp"
#include "MainPane.hpp"

inline void NetShell::welcome() { voidcall("welcome"); }
inline void NetShell::launch() { voidcall("launch"); }
inline void NetShell::setup_default_debugger() { voidcall("setup_default_debugger"); }
inline bool NetShell::exec_command(String cmdstr, Variant stdout_) { return operator()("exec_command", cmdstr, stdout_); }
inline void NetShell::interrupt() { voidcall("interrupt"); }
inline void NetShell::run_in_foreground(TerminalRoutine fg_routine) { voidcall("run_in_foreground", fg_routine); }
inline void NetShell::print_connectivity_help(Variant stdout_, Variant src_s, Variant dst_s, Variant tc) { voidcall("print_connectivity_help", stdout_, src_s, dst_s, tc); }
inline void NetShell::print_connectivity_troubleshoot_guide(Variant stdout_, Variant src_s, Variant dst_s, Variant tc) { voidcall("print_connectivity_troubleshoot_guide", stdout_, src_s, dst_s, tc); }
inline bool NetShell::has_terminal_routine(String routine_name) { return operator()("has_terminal_routine", routine_name); }
inline TerminalRoutine NetShell::get_terminal_routine(String routine_name) { return TerminalRoutine(operator()("get_terminal_routine", routine_name).as_object().address()); }
inline void NetShell::clear_dynamic() { voidcall("clear_dynamic"); }
inline void NetShell::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant NetShell::get_main_pane() { return operator()("get_main_pane"); }
inline void NetShell::minimize() { voidcall("minimize"); }

#endif
