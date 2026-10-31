#ifndef TNI_API_HEADER_SCENARIOBASE
#define TNI_API_HEADER_SCENARIOBASE
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ScenarioBase : public RefCounted {
	using RefCounted::RefCounted;

	constexpr ScenarioBase(RefCounted base) : RefCounted{base} {}
	constexpr ScenarioBase(uint64_t addr) : RefCounted{addr} {}
	constexpr ScenarioBase(Object obj) : ScenarioBase{obj.address()} {}
	ScenarioBase(Variant variant) : ScenarioBase{variant.as_object().address()} {}


	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void ScenarioBase::run() { this->voidcall("run"); }
inline Variant ScenarioBase::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
