#ifndef TNI_API_HEADER_TNIPANEL
#define TNI_API_HEADER_TNIPANEL
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TniPanel : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr TniPanel(PanelContainer base) : PanelContainer{base} {}
	constexpr TniPanel(uint64_t addr) : PanelContainer{addr} {}
	constexpr TniPanel(Object obj) : TniPanel{obj.address()} {}
	TniPanel(Variant variant) : TniPanel{variant.as_object().address()} {}


	PROPERTY(aplayer, AnimationPlayer);
	PROPERTY(symiconrect, TextureRect);
	PROPERTY(timer, Timer);
	PROPERTY(timer_label, Label);
	PROPERTY(seconds_elapsed, double);

	inline void play(double elapsed_s);
	inline void pause();
};


inline void TniPanel::play(double elapsed_s) { this->voidcall("play", elapsed_s); }
inline void TniPanel::pause() { this->voidcall("pause"); }

#endif
