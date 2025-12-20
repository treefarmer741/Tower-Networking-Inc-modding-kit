#ifndef TNI_API_HEADER_TEXTREGISTRY
#define TNI_API_HEADER_TEXTREGISTRY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TextRegistry : public Node {
	using Node::Node;

	constexpr TextRegistry(Node base) : Node{base} {}
	constexpr TextRegistry(uint64_t addr) : Node{addr} {}
	constexpr TextRegistry(Object obj) : TextRegistry{obj.address()} {}
	TextRegistry(Variant variant) : TextRegistry{variant.as_object().address()} {}

	inline static const String LOWERCASE_ALPHABETS = "abcdefghijklmnopqrstuvwxyz";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(animals, Variant);
	PROPERTY(adjectives, Variant);
	PROPERTY(first_names, Variant);

	inline Variant get_random_player_name(bool call_randomize);
};


inline Variant TextRegistry::get_random_player_name(bool call_randomize) { return operator()("get_random_player_name", call_randomize); }

#endif
