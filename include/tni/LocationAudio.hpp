#ifndef TNI_API_HEADER_LOCATIONAUDIO
#define TNI_API_HEADER_LOCATIONAUDIO
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LocationAudio : public Node2D {
	using Node2D::Node2D;

	constexpr LocationAudio(Node2D base) : Node2D{base} {}
	constexpr LocationAudio(uint64_t addr) : Node2D{addr} {}
	constexpr LocationAudio(Object obj) : LocationAudio{obj.address()} {}
	LocationAudio(Variant variant) : LocationAudio{variant.as_object().address()} {}



};



#endif
