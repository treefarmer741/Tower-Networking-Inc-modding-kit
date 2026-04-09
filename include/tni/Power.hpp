#ifndef TNI_API_HEADER_POWER
#define TNI_API_HEADER_POWER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Power : public Node {
	using Node::Node;

	constexpr Power(Node base) : Node{base} {}
	constexpr Power(uint64_t addr) : Node{addr} {}
	constexpr Power(Object obj) : Power{obj.address()} {}
	Power(Variant variant) : Power{variant.as_object().address()} {}


	PROPERTY(manifest_intent, bool);
	PROPERTY(infinite_mode, bool);
	PROPERTY(default_fallback_load, int64_t);
	PROPERTY(controller, PowerController);
	PROPERTY(current_load, int64_t);
	PROPERTY(can_manifest, bool);
	PROPERTY(is_powered, bool);

	inline void world_load();
	inline void broadcast_restored();
	inline void broadcast_lost();
	inline void on();
	inline void off();
};

#include "PowerController.hpp"

inline void Power::world_load() { this->voidcall("world_load"); }
inline void Power::broadcast_restored() { this->voidcall("broadcast_restored"); }
inline void Power::broadcast_lost() { this->voidcall("broadcast_lost"); }
inline void Power::on() { this->voidcall("on"); }
inline void Power::off() { this->voidcall("off"); }

#endif
