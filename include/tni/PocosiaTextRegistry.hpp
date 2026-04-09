#ifndef TNI_API_HEADER_POCOSIATEXTREGISTRY
#define TNI_API_HEADER_POCOSIATEXTREGISTRY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PocosiaTextRegistry : public Node {
	using Node::Node;

	constexpr PocosiaTextRegistry(Node base) : Node{base} {}
	constexpr PocosiaTextRegistry(uint64_t addr) : Node{addr} {}
	constexpr PocosiaTextRegistry(Object obj) : PocosiaTextRegistry{obj.address()} {}
	PocosiaTextRegistry(Variant variant) : PocosiaTextRegistry{variant.as_object().address()} {}

	static constexpr int64_t MAX_ATTEMPTS = 10;  // NOTE: You should recompile your mod if this value changes!


	inline void clear_registry();
	inline String generate_deterministic_string(Node node, int64_t seed_i, Variant lists, String separator);
};


inline void PocosiaTextRegistry::clear_registry() { this->voidcall("clear_registry"); }
inline String PocosiaTextRegistry::generate_deterministic_string(Node node, int64_t seed_i, Variant lists, String separator) { return this->operator()("generate_deterministic_string", node, seed_i, lists, separator); }

#endif
