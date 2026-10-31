#ifndef TNI_API_HEADER_CABLEPROBEPROBECENSUS
#define TNI_API_HEADER_CABLEPROBEPROBECENSUS
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CableProbeProbeCensus : public RefCounted {
	using RefCounted::RefCounted;

	constexpr CableProbeProbeCensus(RefCounted base) : RefCounted{base} {}
	constexpr CableProbeProbeCensus(uint64_t addr) : RefCounted{addr} {}
	constexpr CableProbeProbeCensus(Object obj) : CableProbeProbeCensus{obj.address()} {}
	CableProbeProbeCensus(Variant variant) : CableProbeProbeCensus{variant.as_object().address()} {}

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


inline void CableProbeProbeCensus::refresh() { this->voidcall("refresh"); }
inline Variant CableProbeProbeCensus::count() { return this->operator()("count"); }
inline Variant CableProbeProbeCensus::physics_population() { return this->operator()("physics_population"); }
inline Variant CableProbeProbeCensus::moving_pieces() { return this->operator()("moving_pieces"); }
inline String CableProbeProbeCensus::end_kind(Variant e) { return this->operator()("end_kind", e); }
inline int64_t CableProbeProbeCensus::awake_pieces(Variant subset) { return this->operator()("awake_pieces", subset); }
inline double CableProbeProbeCensus::max_stretch(Variant subset) { return this->operator()("max_stretch", subset); }

#endif
