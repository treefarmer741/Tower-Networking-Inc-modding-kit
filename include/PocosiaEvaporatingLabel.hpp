#ifndef TNI_API_HEADER_POCOSIAEVAPORATINGLABEL
#define TNI_API_HEADER_POCOSIAEVAPORATINGLABEL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaEvaporatingLabel : public Label {
	using Label::Label;

	constexpr PocosiaEvaporatingLabel(Label base) : Label{base} {}
	constexpr PocosiaEvaporatingLabel(uint64_t addr) : Label{addr} {}
	constexpr PocosiaEvaporatingLabel(Object obj) : PocosiaEvaporatingLabel{obj.address()} {}
	PocosiaEvaporatingLabel(Variant variant) : PocosiaEvaporatingLabel{variant.as_object().address()} {}


	PROPERTY(evaporation_height, double);
	PROPERTY(evaporation_duration, double);

	inline void sample_add(Node node, String msg);
	inline void dealloc();
	inline void ensure_upright(double relative_global_rotation);
};


inline void PocosiaEvaporatingLabel::sample_add(Node node, String msg) { voidcall("sample_add", node, msg); }
inline void PocosiaEvaporatingLabel::dealloc() { voidcall("dealloc"); }
inline void PocosiaEvaporatingLabel::ensure_upright(double relative_global_rotation) { voidcall("ensure_upright", relative_global_rotation); }

#endif
