#ifndef TNI_API_HEADER_CABLEROPEMANAGER
#define TNI_API_HEADER_CABLEROPEMANAGER
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CableRopeManager : public Node {
	using Node::Node;

	constexpr CableRopeManager(Node base) : Node{base} {}
	constexpr CableRopeManager(uint64_t addr) : Node{addr} {}
	constexpr CableRopeManager(Object obj) : CableRopeManager{obj.address()} {}
	CableRopeManager(Variant variant) : CableRopeManager{variant.as_object().address()} {}



	inline void activate(Variant rope);
	inline int64_t active_count();
};


inline void CableRopeManager::activate(Variant rope) { this->voidcall("activate", rope); }
inline int64_t CableRopeManager::active_count() { return this->operator()("active_count"); }

#endif
