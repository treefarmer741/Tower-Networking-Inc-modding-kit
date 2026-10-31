#ifndef TNI_API_HEADER_S13PLUGSWING
#define TNI_API_HEADER_S13PLUGSWING
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S13PlugSwing : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S13PlugSwing(RefCounted base) : RefCounted{base} {}
	constexpr S13PlugSwing(uint64_t addr) : RefCounted{addr} {}
	constexpr S13PlugSwing(Object obj) : S13PlugSwing{obj.address()} {}
	S13PlugSwing(Variant variant) : S13PlugSwing{variant.as_object().address()} {}

	// Inner class ProbeRigScript exposed as S13PlugSwingProbeRigScript
	PROPERTY(MAKES, Dictionary);  // enum of non-integer type

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S13PlugSwing::run() { this->voidcall("run"); }
inline Variant S13PlugSwing::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
