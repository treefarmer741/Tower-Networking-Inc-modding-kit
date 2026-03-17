#ifndef TNI_API_HEADER_GUIDENODE2D
#define TNI_API_HEADER_GUIDENODE2D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GuideNode2D : public Node2D {
	using Node2D::Node2D;

	constexpr GuideNode2D(Node2D base) : Node2D{base} {}
	constexpr GuideNode2D(uint64_t addr) : Node2D{addr} {}
	constexpr GuideNode2D(Object obj) : GuideNode2D{obj.address()} {}
	GuideNode2D(Variant variant) : GuideNode2D{variant.as_object().address()} {}


	PROPERTY(fulfill, bool);
	PROPERTY(content_anchor_mode, int64_t);
	PROPERTY(target_anchor_mode, int64_t);
	PROPERTY(hide_content_if_inactive, bool);
	PROPERTY(external_content_text, String);
	PROPERTY(content, CanvasItem);
	PROPERTY(content_pointers, Variant);
	PROPERTY(target, CanvasItem);
	PROPERTY(line_color, Variant);
	PROPERTY(line_width, double);
	PROPERTY(activate_when_ready, bool);
	PROPERTY(upstream_guide, GuideNode2D);
	PROPERTY(upstream_guide_name, String);
	PROPERTY(auto_upstream_guide, bool);
	PROPERTY(activated, bool);

	inline void set_input_target(Variant t);
	inline void mark_complete();
	inline void mark_fulfill();
	inline void mark_previous_incomplete();
	inline void activate_guide();
	inline void handle_gui_input(InputEvent event);
	inline void handle_collision_input(Node _n, InputEvent event, int64_t _shape_idx);
};

#include "GuideNode2D.hpp"

inline void GuideNode2D::set_input_target(Variant t) { voidcall("set_input_target", t); }
inline void GuideNode2D::mark_complete() { voidcall("mark_complete"); }
inline void GuideNode2D::mark_fulfill() { voidcall("mark_fulfill"); }
inline void GuideNode2D::mark_previous_incomplete() { voidcall("mark_previous_incomplete"); }
inline void GuideNode2D::activate_guide() { voidcall("activate_guide"); }
inline void GuideNode2D::handle_gui_input(InputEvent event) { voidcall("handle_gui_input", event); }
inline void GuideNode2D::handle_collision_input(Node _n, InputEvent event, int64_t _shape_idx) { voidcall("handle_collision_input", _n, event, _shape_idx); }

#endif
