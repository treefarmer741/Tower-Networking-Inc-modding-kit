#ifndef TNI_API_HEADER_KEYSTONEBRIDGEMANAGER
#define TNI_API_HEADER_KEYSTONEBRIDGEMANAGER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct KeystoneBridgeManager : public Node {
	using Node::Node;

	constexpr KeystoneBridgeManager(Node base) : Node{base} {}
	constexpr KeystoneBridgeManager(uint64_t addr) : Node{addr} {}
	constexpr KeystoneBridgeManager(Object obj) : KeystoneBridgeManager{obj.address()} {}
	KeystoneBridgeManager(Variant variant) : KeystoneBridgeManager{variant.as_object().address()} {}



	inline void register_(Variant ks);
	inline void unregister(Variant ks);
	inline void mark_dirty();
};


inline void KeystoneBridgeManager::register_(Variant ks) { this->voidcall("register", ks); }
inline void KeystoneBridgeManager::unregister(Variant ks) { this->voidcall("unregister", ks); }
inline void KeystoneBridgeManager::mark_dirty() { this->voidcall("mark_dirty"); }

#endif
