#ifndef TNI_API_HEADER_POCOSIAFIXEDSIZETEXTEDIT
#define TNI_API_HEADER_POCOSIAFIXEDSIZETEXTEDIT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaFixedSizeTextEdit : public TextEdit {
	using TextEdit::TextEdit;

	constexpr PocosiaFixedSizeTextEdit(TextEdit base) : TextEdit{base} {}
	constexpr PocosiaFixedSizeTextEdit(uint64_t addr) : TextEdit{addr} {}
	constexpr PocosiaFixedSizeTextEdit(Object obj) : PocosiaFixedSizeTextEdit{obj.address()} {}
	PocosiaFixedSizeTextEdit(Variant variant) : PocosiaFixedSizeTextEdit{variant.as_object().address()} {}


	PROPERTY(max_lines, int64_t);
	PROPERTY(lowpass_seconds, double);
	PROPERTY(displayed_line_count, int64_t);

};



#endif
