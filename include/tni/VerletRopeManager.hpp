#ifndef TNI_API_HEADER_VERLETROPEMANAGER
#define TNI_API_HEADER_VERLETROPEMANAGER
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct VerletRopeManager : public Node {
	using Node::Node;

	constexpr VerletRopeManager(Node base) : Node{base} {}
	constexpr VerletRopeManager(uint64_t addr) : Node{addr} {}
	constexpr VerletRopeManager(Object obj) : VerletRopeManager{obj.address()} {}
	VerletRopeManager(Variant variant) : VerletRopeManager{variant.as_object().address()} {}



	inline void activate(Variant rope);
	inline int64_t active_count();
};


inline void VerletRopeManager::activate(Variant rope) { this->voidcall("activate", rope); }
inline int64_t VerletRopeManager::active_count() { return this->operator()("active_count"); }

#endif
