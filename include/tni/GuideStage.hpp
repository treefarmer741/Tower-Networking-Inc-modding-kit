#ifndef TNI_API_HEADER_GUIDESTAGE
#define TNI_API_HEADER_GUIDESTAGE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GuideStage : public Resource {
	using Resource::Resource;

	constexpr GuideStage(Resource base) : Resource{base} {}
	constexpr GuideStage(uint64_t addr) : Resource{addr} {}
	constexpr GuideStage(Object obj) : GuideStage{obj.address()} {}
	GuideStage(Variant variant) : GuideStage{variant.as_object().address()} {}


	PROPERTY(text_content, String);
	PROPERTY(stage_key, String);
	PROPERTY(target_anchor_mode, int64_t);
	PROPERTY(line_color, Variant);
	PROPERTY(line_width, double);
	PROPERTY(origin_guide, GuideNode2D);
	PROPERTY(stage_idx, int64_t);

	inline void mark_complete();
	inline void setup_stage(GuideNode2D origin, int64_t stage_id);
	inline void handle_target_ready(String key, CanvasItem _target_n);
	inline void overwrite_origin_draw_settings();
};

#include "GuideNode2D.hpp"

inline void GuideStage::mark_complete() { voidcall("mark_complete"); }
inline void GuideStage::setup_stage(GuideNode2D origin, int64_t stage_id) { voidcall("setup_stage", origin, stage_id); }
inline void GuideStage::handle_target_ready(String key, CanvasItem _target_n) { voidcall("handle_target_ready", key, _target_n); }
inline void GuideStage::overwrite_origin_draw_settings() { voidcall("overwrite_origin_draw_settings"); }

#endif
