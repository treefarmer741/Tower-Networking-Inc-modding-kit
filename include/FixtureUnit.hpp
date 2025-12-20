#ifndef TNI_API_HEADER_FIXTUREUNIT
#define TNI_API_HEADER_FIXTUREUNIT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FixtureUnit : public Area2D {
	using Area2D::Area2D;

	constexpr FixtureUnit(Area2D base) : Area2D{base} {}
	constexpr FixtureUnit(uint64_t addr) : Area2D{addr} {}
	constexpr FixtureUnit(Object obj) : FixtureUnit{obj.address()} {}
	FixtureUnit(Variant variant) : FixtureUnit{variant.as_object().address()} {}


	PROPERTY(logic_controller, LogicController);
	PROPERTY(power_controller, PowerController);

	inline Variant debug_monitor_callback();
};

#include "LogicController.hpp"
#include "PowerController.hpp"

inline Variant FixtureUnit::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
