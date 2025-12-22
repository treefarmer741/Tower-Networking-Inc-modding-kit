#ifndef TNI_API_HEADER_LINEARDEPTHGRAPHVIZ
#define TNI_API_HEADER_LINEARDEPTHGRAPHVIZ
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LinearDepthGraphviz : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr LinearDepthGraphviz(ScrollContainer base) : ScrollContainer{base} {}
	constexpr LinearDepthGraphviz(uint64_t addr) : ScrollContainer{addr} {}
	constexpr LinearDepthGraphviz(Object obj) : LinearDepthGraphviz{obj.address()} {}
	LinearDepthGraphviz(Variant variant) : LinearDepthGraphviz{variant.as_object().address()} {}

	enum DisplayMode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		VPHC_FROM_TOP = 0,
		HPVC_FROM_LEFT = 1,
	};
	enum EdgeLineMode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		STRAIGHT = 0,
		ANGLE1 = 1,
		SHARP2 = 2,
	};
	enum ElementAttribute : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		LINE_WIDTH = 0,
		LINE_COLOR = 1,
		MAIN_LABEL_TEXT = 2,
		SUB_LABEL_TEXT = 3,
	};

	PROPERTY(element_alignment, int64_t);
	PROPERTY(sibling_separation, int64_t);
	PROPERTY(child_separation, int64_t);
	PROPERTY(display_mode, int64_t);
	PROPERTY(edge_line_mode, int64_t);
	PROPERTY(default_edge_line_color, Variant);
	PROPERTY(default_edge_line_width, double);
	PROPERTY(element_ctl_packed_scn, PackedScene);
	PROPERTY(start_container, Container);

	inline void clear();
	inline Variant get_element(int64_t element_id);
	inline Variant add_element(int64_t parent_id);
};


inline void LinearDepthGraphviz::clear() { voidcall("clear"); }
inline Variant LinearDepthGraphviz::get_element(int64_t element_id) { return operator()("get_element", element_id); }
inline Variant LinearDepthGraphviz::add_element(int64_t parent_id) { return operator()("add_element", parent_id); }

#endif
