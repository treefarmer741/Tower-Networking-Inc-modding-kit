#ifndef TNI_API_HEADER_TERMINALINPUT
#define TNI_API_HEADER_TERMINALINPUT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TerminalInput : public CodeEdit {
	using CodeEdit::CodeEdit;

	constexpr TerminalInput(CodeEdit base) : CodeEdit{base} {}
	constexpr TerminalInput(uint64_t addr) : CodeEdit{addr} {}
	constexpr TerminalInput(Object obj) : TerminalInput{obj.address()} {}
	TerminalInput(Variant variant) : TerminalInput{variant.as_object().address()} {}

	static constexpr int64_t MAX_HISTORY = 10;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(auto_input, bool);
	PROPERTY(command_history, Variant);
	PROPERTY(mouse_is_inside, bool);
	PROPERTY(autocomplete_hint, String);
	PROPERTY(cmd_samples, Variant);

	inline void cls();
	inline String get_last_word(String inp);
	inline void caret_to_end();
	inline void paste_string(String s);
	inline void paste_clipboard();
	inline void clear_autocomplete_candids();
	inline void fill_auto();
	inline void suggest_autocomplete();
	inline Variant get_insertion_candidate(String fullcmd);
};


inline void TerminalInput::cls() { voidcall("cls"); }
inline String TerminalInput::get_last_word(String inp) { return operator()("get_last_word", inp); }
inline void TerminalInput::caret_to_end() { voidcall("caret_to_end"); }
inline void TerminalInput::paste_string(String s) { voidcall("paste_string", s); }
inline void TerminalInput::paste_clipboard() { voidcall("paste_clipboard"); }
inline void TerminalInput::clear_autocomplete_candids() { voidcall("clear_autocomplete_candids"); }
inline void TerminalInput::fill_auto() { voidcall("fill_auto"); }
inline void TerminalInput::suggest_autocomplete() { voidcall("suggest_autocomplete"); }
inline Variant TerminalInput::get_insertion_candidate(String fullcmd) { return operator()("get_insertion_candidate", fullcmd); }

#endif
