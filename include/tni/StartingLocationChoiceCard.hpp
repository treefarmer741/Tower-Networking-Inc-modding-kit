#ifndef TNI_API_HEADER_STARTINGLOCATIONCHOICECARD
#define TNI_API_HEADER_STARTINGLOCATIONCHOICECARD
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct StartingLocationChoiceCard : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr StartingLocationChoiceCard(PanelContainer base) : PanelContainer{base} {}
	constexpr StartingLocationChoiceCard(uint64_t addr) : PanelContainer{addr} {}
	constexpr StartingLocationChoiceCard(Object obj) : StartingLocationChoiceCard{obj.address()} {}
	StartingLocationChoiceCard(Variant variant) : StartingLocationChoiceCard{variant.as_object().address()} {}


	PROPERTY(location_scene, PackedScene);
	PROPERTY(display_name_override, String);
	PROPERTY(description_override, String);
	PROPERTY(preview_image_override, Texture2D);

	inline String get_display_name();
};


inline String StartingLocationChoiceCard::get_display_name() { return this->operator()("get_display_name"); }

#endif
