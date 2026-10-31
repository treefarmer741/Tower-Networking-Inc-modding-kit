#ifndef TNI_API_HEADER_S5DRAGDEVICEPROBECENSUSSCRIPT
#define TNI_API_HEADER_S5DRAGDEVICEPROBECENSUSSCRIPT
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S5DragDeviceProbeCensusScript : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S5DragDeviceProbeCensusScript(RefCounted base) : RefCounted{base} {}
	constexpr S5DragDeviceProbeCensusScript(uint64_t addr) : RefCounted{addr} {}
	constexpr S5DragDeviceProbeCensusScript(Object obj) : S5DragDeviceProbeCensusScript{obj.address()} {}
	S5DragDeviceProbeCensusScript(Variant variant) : S5DragDeviceProbeCensusScript{variant.as_object().address()} {}

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


inline void S5DragDeviceProbeCensusScript::refresh() { this->voidcall("refresh"); }
inline Variant S5DragDeviceProbeCensusScript::count() { return this->operator()("count"); }
inline Variant S5DragDeviceProbeCensusScript::physics_population() { return this->operator()("physics_population"); }
inline Variant S5DragDeviceProbeCensusScript::moving_pieces() { return this->operator()("moving_pieces"); }
inline String S5DragDeviceProbeCensusScript::end_kind(Variant e) { return this->operator()("end_kind", e); }
inline int64_t S5DragDeviceProbeCensusScript::awake_pieces(Variant subset) { return this->operator()("awake_pieces", subset); }
inline double S5DragDeviceProbeCensusScript::max_stretch(Variant subset) { return this->operator()("max_stretch", subset); }

#endif
