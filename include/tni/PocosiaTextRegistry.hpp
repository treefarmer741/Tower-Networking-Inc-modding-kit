#ifndef TNI_API_HEADER_POCOSIATEXTREGISTRY
#define TNI_API_HEADER_POCOSIATEXTREGISTRY
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PocosiaTextRegistry : public Node {
	using Node::Node;

	constexpr PocosiaTextRegistry(Node base) : Node{base} {}
	constexpr PocosiaTextRegistry(uint64_t addr) : Node{addr} {}
	constexpr PocosiaTextRegistry(Object obj) : PocosiaTextRegistry{obj.address()} {}
	PocosiaTextRegistry(Variant variant) : PocosiaTextRegistry{variant.as_object().address()} {}


	PROPERTY(max_attempts, Variant);
	PROPERTY(si, int64_t);
	PROPERTY(lol, Variant);
	PROPERTY(sepchar, String);

	inline void clear_registry();
	inline void setup_text_registry(int64_t seed_i_, Variant list_of_lists_, String separator_, int64_t max_attempts_);
	inline String get_or_generate_deterministic_string(Node node);
	inline String generate_string_from_lists(NodePath path, int64_t seed_i, int64_t attempt, Variant list_of_list, String sep);
};


inline void PocosiaTextRegistry::clear_registry() { this->voidcall("clear_registry"); }
inline void PocosiaTextRegistry::setup_text_registry(int64_t seed_i_, Variant list_of_lists_, String separator_, int64_t max_attempts_) { this->voidcall("setup_text_registry", seed_i_, list_of_lists_, separator_, max_attempts_); }
inline String PocosiaTextRegistry::get_or_generate_deterministic_string(Node node) { return this->operator()("get_or_generate_deterministic_string", node); }
inline String PocosiaTextRegistry::generate_string_from_lists(NodePath path, int64_t seed_i, int64_t attempt, Variant list_of_list, String sep) { return this->operator()("generate_string_from_lists", path, seed_i, attempt, list_of_list, sep); }

#endif
