#ifndef TNI_API_HEADER_NETSHELL
#define TNI_API_HEADER_NETSHELL
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TerminalShell.hpp"

struct NetShell : public TerminalShell {
	using TerminalShell::TerminalShell;

	constexpr NetShell(TerminalShell base) : TerminalShell{base} {}
	constexpr NetShell(uint64_t addr) : TerminalShell{addr} {}
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
	inline void run_in_foreground(const TerminalRoutine& fg_routine);
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

inline void NetShell::welcome() { this->voidcall("welcome"); }
inline void NetShell::launch() { this->voidcall("launch"); }
inline void NetShell::setup_default_debugger() { this->voidcall("setup_default_debugger"); }
inline bool NetShell::exec_command(String cmdstr, Variant stdout_) { return this->operator()("exec_command", cmdstr, stdout_); }
inline void NetShell::interrupt() { this->voidcall("interrupt"); }
inline void NetShell::run_in_foreground(const TerminalRoutine& fg_routine) { this->voidcall("run_in_foreground", Object(reinterpret_cast<const Object*>(&fg_routine)->address())); }
inline void NetShell::print_connectivity_help(Variant stdout_, Variant src_s, Variant dst_s, Variant tc) { this->voidcall("print_connectivity_help", stdout_, src_s, dst_s, tc); }
inline void NetShell::print_connectivity_troubleshoot_guide(Variant stdout_, Variant src_s, Variant dst_s, Variant tc) { this->voidcall("print_connectivity_troubleshoot_guide", stdout_, src_s, dst_s, tc); }
inline bool NetShell::has_terminal_routine(String routine_name) { return this->operator()("has_terminal_routine", routine_name); }
inline TerminalRoutine NetShell::get_terminal_routine(String routine_name) { return TerminalRoutine(this->operator()("get_terminal_routine", routine_name).as_object().address()); }
inline void NetShell::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void NetShell::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant NetShell::get_main_pane() { return this->operator()("get_main_pane"); }
inline void NetShell::minimize() { this->voidcall("minimize"); }

#endif
