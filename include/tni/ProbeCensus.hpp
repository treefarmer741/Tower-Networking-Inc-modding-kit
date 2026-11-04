#ifndef TNI_API_HEADER_PROBECENSUS
#define TNI_API_HEADER_PROBECENSUS
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ProbeCensus : public RefCounted {
	using RefCounted::RefCounted;

	constexpr ProbeCensus(RefCounted base) : RefCounted{base} {}
	constexpr ProbeCensus(uint64_t addr) : RefCounted{addr} {}
	constexpr ProbeCensus(Object obj) : ProbeCensus{obj.address()} {}
	ProbeCensus(Variant variant) : ProbeCensus{variant.as_object().address()} {}

	static constexpr double MOVING_SPEED = 2.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(world, Node);
	PROPERTY(cables, Variant);
	PROPERTY(links, Variant);
	PROPERTY(devices, Variant);

	inline void refresh();
	inline Variant count();
	inline Variant physics_population();
	inline Variant moving_pieces();
	inline String end_kind(Variant e);
	inline int64_t awake_pieces(Variant subset);
	inline double max_stretch(Variant subset);
};


inline void ProbeCensus::refresh() { this->voidcall("refresh"); }
inline Variant ProbeCensus::count() { return this->operator()("count"); }
inline Variant ProbeCensus::physics_population() { return this->operator()("physics_population"); }
inline Variant ProbeCensus::moving_pieces() { return this->operator()("moving_pieces"); }
inline String ProbeCensus::end_kind(Variant e) { return this->operator()("end_kind", e); }
inline int64_t ProbeCensus::awake_pieces(Variant subset) { return this->operator()("awake_pieces", subset); }
inline double ProbeCensus::max_stretch(Variant subset) { return this->operator()("max_stretch", subset); }

#endif
