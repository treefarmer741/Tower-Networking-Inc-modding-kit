#ifndef TNI_API_HEADER_TERMINALSHELL
#define TNI_API_HEADER_TERMINALSHELL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TerminalShell : public Container {
	using Container::Container;

	constexpr TerminalShell(Container base) : Container{base} {}
	constexpr TerminalShell(uint64_t addr) : Container{addr} {}
	constexpr TerminalShell(Object obj) : TerminalShell{obj.address()} {}
	TerminalShell(Variant variant) : TerminalShell{variant.as_object().address()} {}


	PROPERTY(input, TerminalInput);
	PROPERTY(preposition_defaults, Variant);
	PROPERTY(terminal_routines, Variant);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void interrupt();
	inline void run_in_foreground(TerminalRoutine _termr);
	inline void print_connectivity_help(Variant stdout_, Variant src_s, Variant dst_s, Variant tc);
	inline void print_connectivity_troubleshoot_guide(Variant stdout_, Variant src_s, Variant dst_s, Variant tc);
	inline bool has_terminal_routine(String routine_name);
	inline TerminalRoutine get_terminal_routine(String routine_name);
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
	inline void launch();
};

#include "TerminalInput.hpp"
#include "MainPane.hpp"
#include "TerminalRoutine.hpp"

inline void TerminalShell::interrupt() { voidcall("interrupt"); }
inline void TerminalShell::run_in_foreground(TerminalRoutine _termr) { voidcall("run_in_foreground", _termr); }
inline void TerminalShell::print_connectivity_help(Variant stdout_, Variant src_s, Variant dst_s, Variant tc) { voidcall("print_connectivity_help", stdout_, src_s, dst_s, tc); }
inline void TerminalShell::print_connectivity_troubleshoot_guide(Variant stdout_, Variant src_s, Variant dst_s, Variant tc) { voidcall("print_connectivity_troubleshoot_guide", stdout_, src_s, dst_s, tc); }
inline bool TerminalShell::has_terminal_routine(String routine_name) { return operator()("has_terminal_routine", routine_name); }
inline TerminalRoutine TerminalShell::get_terminal_routine(String routine_name) { return TerminalRoutine(operator()("get_terminal_routine", routine_name).as_object().address()); }
inline void TerminalShell::clear_dynamic() { voidcall("clear_dynamic"); }
inline void TerminalShell::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant TerminalShell::get_main_pane() { return operator()("get_main_pane"); }
inline void TerminalShell::minimize() { voidcall("minimize"); }
inline void TerminalShell::launch() { voidcall("launch"); }

#endif
