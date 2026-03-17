#ifndef TNI_API_HEADER_VERTICALLINKVIZ
#define TNI_API_HEADER_VERTICALLINKVIZ
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct VerticalLinkviz : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr VerticalLinkviz(ScrollContainer base) : ScrollContainer{base} {}
	constexpr VerticalLinkviz(uint64_t addr) : ScrollContainer{addr} {}
	constexpr VerticalLinkviz(Object obj) : VerticalLinkviz{obj.address()} {}
	VerticalLinkviz(Variant variant) : VerticalLinkviz{variant.as_object().address()} {}


	PROPERTY(header_string, String);
	PROPERTY(header_element, PackedScene);
	PROPERTY(column_element, PackedScene);
	PROPERTY(line_width, double);
	PROPERTY(link_text_font_size, int64_t);
	PROPERTY(root_ctn, VBoxContainer);

	inline Variant set_link_data(Variant link_data);
	inline void make_link_displays();
	inline void refresh();
};


inline Variant VerticalLinkviz::set_link_data(Variant link_data) { return operator()("set_link_data", link_data); }
inline void VerticalLinkviz::make_link_displays() { voidcall("make_link_displays"); }
inline void VerticalLinkviz::refresh() { voidcall("refresh"); }

#endif
