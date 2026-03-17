#ifndef TNI_API_HEADER_WIKI
#define TNI_API_HEADER_WIKI
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Wiki : public Control {
	using Control::Control;

	constexpr Wiki(Control base) : Control{base} {}
	constexpr Wiki(uint64_t addr) : Control{addr} {}
	constexpr Wiki(Object obj) : Wiki{obj.address()} {}
	Wiki(Variant variant) : Wiki{variant.as_object().address()} {}

	PROPERTY(wiki_ei_scn, Variant);  // Const value type was not supported.

	PROPERTY(wiki_container, Container);
	PROPERTY(wiki_entries_container, Container);
	PROPERTY(wiki_scroll, ScrollContainer);
	PROPERTY(browse_history, RichTextLabel);
	PROPERTY(animation_player, AnimationPlayer);
	PROPERTY(afinp, TextEdit);
	PROPERTY(stctimer, Timer);
	PROPERTY(stub_article, WikiEntryItem);
	PROPERTY(nav_history, Variant);

	inline void fade_out();
	inline void fade_in();
};

#include "WikiEntryItem.hpp"

inline void Wiki::fade_out() { voidcall("fade_out"); }
inline void Wiki::fade_in() { voidcall("fade_in"); }

#endif
