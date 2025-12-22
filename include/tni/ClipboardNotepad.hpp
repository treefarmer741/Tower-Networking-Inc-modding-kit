#ifndef TNI_API_HEADER_CLIPBOARDNOTEPAD
#define TNI_API_HEADER_CLIPBOARDNOTEPAD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ClipboardNotepad : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr ClipboardNotepad(PanelContainer base) : PanelContainer{base} {}
	constexpr ClipboardNotepad(uint64_t addr) : PanelContainer{addr} {}
	constexpr ClipboardNotepad(Object obj) : ClipboardNotepad{obj.address()} {}
	ClipboardNotepad(Variant variant) : ClipboardNotepad{variant.as_object().address()} {}


	PROPERTY(text_content, String);
	PROPERTY(has_notepad_focus, bool);

};



#endif
