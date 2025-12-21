#ifndef TNI_API_HEADER_TERMINALOUTPUTDISPLAY
#define TNI_API_HEADER_TERMINALOUTPUTDISPLAY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TerminalOutputDisplay : public RichTextLabel {
	using RichTextLabel::RichTextLabel;

	constexpr TerminalOutputDisplay(RichTextLabel base) : RichTextLabel{base} {}
	constexpr TerminalOutputDisplay(uint64_t addr) : RichTextLabel{addr} {}
	constexpr TerminalOutputDisplay(Object obj) : TerminalOutputDisplay{obj.address()} {}
	TerminalOutputDisplay(Variant variant) : TerminalOutputDisplay{variant.as_object().address()} {}



	inline void print_horizontal_sep();
	inline void print_success(Variant s);
	inline void print_error(Variant s);
	inline void print_highlight(Variant s);
	inline void print_line(Variant s);
	inline void rotate_output();
	inline void clear_display();
};


inline void TerminalOutputDisplay::print_horizontal_sep() { voidcall("print_horizontal_sep"); }
inline void TerminalOutputDisplay::print_success(Variant s) { voidcall("print_success", s); }
inline void TerminalOutputDisplay::print_error(Variant s) { voidcall("print_error", s); }
inline void TerminalOutputDisplay::print_highlight(Variant s) { voidcall("print_highlight", s); }
inline void TerminalOutputDisplay::print_line(Variant s) { voidcall("print_line", s); }
inline void TerminalOutputDisplay::rotate_output() { voidcall("rotate_output"); }
inline void TerminalOutputDisplay::clear_display() { voidcall("clear_display"); }

#endif
