#ifndef TNI_API_HEADER_TRISTATESFX
#define TNI_API_HEADER_TRISTATESFX
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TristateSfx : public Node2D {
	using Node2D::Node2D;

	constexpr TristateSfx(Node2D base) : Node2D{base} {}
	constexpr TristateSfx(uint64_t addr) : Node2D{addr} {}
	constexpr TristateSfx(Object obj) : TristateSfx{obj.address()} {}
	TristateSfx(Variant variant) : TristateSfx{variant.as_object().address()} {}


	PROPERTY(power_controller, PowerController);
	PROPERTY(common_volume_db, double);
	PROPERTY(start_sfx, AudioStreamPlayer2D);
	PROPERTY(loop_sfx, Variant);
	PROPERTY(stop_sfx, AudioStreamPlayer2D);

};

#include "PowerController.hpp"


#endif
